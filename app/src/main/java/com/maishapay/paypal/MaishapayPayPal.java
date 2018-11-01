package com.maishapay.paypal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.maishapay.R;
import com.maishapay.ui.dialog.DialogNumberPickerFragment;
import com.maishapay.ui.dialog.NumPadPossitiveButtonListener;
import com.paypal.android.sdk.payments.PayPalPayment;
import com.paypal.android.sdk.payments.PayPalService;
import com.paypal.android.sdk.payments.PaymentActivity;
import com.paypal.android.sdk.payments.PaymentConfirmation;

import org.json.JSONException;

import java.math.BigDecimal;

import static com.maishapay.paypal.config.Configuration.PAYPAL_CONFIGURATION;
import static com.maishapay.paypal.config.Configuration.PAYPAL_REQUEST_CODE;
import static com.maishapay.ui.activities.SuccessPaiementActivity.EXTRA_TITLE_ACTIVITY;

public class MaishapayPayPal extends AppCompatActivity implements NumPadPossitiveButtonListener {

    private TextView edtAmount;
    private Button btnPayNow;
    private String amount;
    private DialogNumberPickerFragment dialogNumberPickerFragment;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_maishapay_paypal);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        toolbar.setTitle("Effectuer un depot");

        edtAmount = findViewById(R.id.edtAmount);
        btnPayNow = findViewById(R.id.btnPayNow);

        initPaypalService();

        edtAmount.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                FragmentManager fm = getSupportFragmentManager();

                dialogNumberPickerFragment = DialogNumberPickerFragment.newInstance("USD");
                dialogNumberPickerFragment.show(fm, "DialogNumberPickerFragment");
            }
        });


        btnPayNow.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                attemptPayment();
            }
        });

    }

    private void attemptPayment() {

        if (!edtAmount.getText().toString().equalsIgnoreCase("")) {
            processPayment(amount);
        } else {
            Toast.makeText(getApplicationContext(), "Deposit amount is required", Toast.LENGTH_SHORT).show();
            edtAmount.setError("Entrer le montant");
        }
    }

    private void initPaypalService() {
        Intent intent = new Intent(getApplicationContext(), PayPalService.class);
        intent.putExtra(PayPalService.EXTRA_PAYPAL_CONFIGURATION, PAYPAL_CONFIGURATION);
        startService(intent);
    }

    private void processPayment(String amount) {

        PayPalPayment payPalPayment = new PayPalPayment(
                new BigDecimal(String.valueOf(amount))
                , "USD"
                , "[Maishapay] Depot",
                PayPalPayment.PAYMENT_INTENT_SALE);

        Intent intent = new Intent(getApplicationContext(), PaymentActivity.class);
        intent.putExtra(PayPalService.EXTRA_PAYPAL_CONFIGURATION, PAYPAL_CONFIGURATION);
        intent.putExtra(PaymentActivity.EXTRA_PAYMENT, payPalPayment);
        startActivityForResult(intent, PAYPAL_REQUEST_CODE);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == PAYPAL_REQUEST_CODE) {

            if (resultCode == RESULT_OK) {

                PaymentConfirmation confirmation = data.getParcelableExtra(PaymentActivity.EXTRA_RESULT_CONFIRMATION);

                if (confirmation != null) {
                    try {

                        String paymentDetails = confirmation.toJSONObject().toString(4);

                        startActivity(new Intent(getApplicationContext(), SuccessDepositActivity.class)
                                .putExtra("ResultActivity", paymentDetails)
                                .putExtra("PaymentAmount", amount)
                                .putExtra(EXTRA_TITLE_ACTIVITY, "Dépot")
                        );

                        finish();

                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            } else if (resultCode == Activity.RESULT_CANCELED)
                Toast.makeText(this, "Cancel", Toast.LENGTH_SHORT).show();

        } else if (resultCode == PaymentActivity.RESULT_EXTRAS_INVALID)
            Toast.makeText(this, "Invalid", Toast.LENGTH_SHORT).show();
    }

    @Override
    protected void onDestroy() {
        stopService(new Intent(getApplicationContext(), PayPalService.class));
        super.onDestroy();
    }

    @Override
    public void numPadPositiveClicked(String number) {
        edtAmount.setText(String.format("USD %s", number));
        amount = number;
        attemptPayment();
    }
}
