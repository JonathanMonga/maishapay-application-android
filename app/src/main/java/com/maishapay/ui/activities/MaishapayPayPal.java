package com.maishapay.ui.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.Toast;

import com.maishapay.R;
import com.maishapay.ui.dialog.DialogNumberPickerFragment;
import com.maishapay.ui.dialog.NumPadPossitiveButtonListener;
import com.paypal.android.sdk.payments.PayPalPayment;
import com.paypal.android.sdk.payments.PayPalService;
import com.paypal.android.sdk.payments.PaymentActivity;
import com.paypal.android.sdk.payments.PaymentConfirmation;

import org.fabiomsr.moneytextview.MoneyTextView;
import org.json.JSONException;

import java.math.BigDecimal;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

import static com.maishapay.model.Configuration.PAYPAL_CONFIGURATION;
import static com.maishapay.model.Configuration.PAYPAL_REQUEST_CODE;
import static com.maishapay.ui.activities.SuccessPaiementActivity.EXTRA_TITLE_ACTIVITY;

public class MaishapayPayPal extends AppCompatActivity implements NumPadPossitiveButtonListener {

    @BindView(R.id.ET_Montant)
    MoneyTextView ET_Montant;
    @BindView(R.id.btnPayNow)
    Button btnPayNow;
    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;

    private DialogNumberPickerFragment dialogNumberPickerFragment;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_maishapay_paypal);
        ButterKnife.bind(this);

        toolbar.setTitle("Effectuer un depot");
        setSupportActionBar(toolbar);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        initPaypalService();
    }

    @OnClick(R.id.ET_Montant)
    public void ET_MontantClicked() {
        FragmentManager fm = getSupportFragmentManager();
        dialogNumberPickerFragment = DialogNumberPickerFragment.newInstance("USD");
        dialogNumberPickerFragment.show(fm, "DialogNumberPickerFragment");
    }

    @OnClick(R.id.btnPayNow)
    public void transfertClicked() {
        if (ET_Montant.getAmount() == 0F) {
            toastMessage(String.format(getString(R.string.erro_campo), "Montant"), R.id.ET_Montant);
            return;
        }

        processPayment(String.valueOf(ET_Montant.getAmount()));
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
                                .putExtra("PaymentAmount", String.valueOf(ET_Montant.getAmount()))
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
        ET_Montant.setAmount(Float.valueOf(number), "USD");
    }

    private void toastMessage(String message, int view) {
        findViewById(view).startAnimation(AnimationUtils.loadAnimation(this, R.anim.shake));
        Toast.makeText(this, message, Toast.LENGTH_LONG).show();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                finish();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}