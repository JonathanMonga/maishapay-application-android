package com.maishapay.ui.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.Toast;

import com.crashlytics.android.Crashlytics;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.ContentViewEvent;
import com.maishapay.R;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.ui.dialog.DialogNumberPickerFragment;
import com.nmaltais.calcdialog.CalcDialog;
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
import de.mateware.snacky.Snacky;
import io.fabric.sdk.android.Fabric;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

import static com.maishapay.model.Configuration.PAYPAL_CONFIGURATION;
import static com.maishapay.model.Configuration.PAYPAL_REQUEST_CODE;
import static com.maishapay.ui.activities.SuccessPaiementActivity.EXTRA_TITLE_ACTIVITY;

public class MaishapayPayPal extends AppCompatActivity implements CalcDialog.CalcDialogCallback {

    private static final int DIALOG_REQUEST_CODE = 0;

    @BindView(R.id.ET_Montant)
    MoneyTextView ET_Montant;
    @BindView(R.id.btnPayNow)
    Button btnPayNow;
    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;

    private DialogNumberPickerFragment dialogNumberPickerFragment;
    private CalcDialog calcDialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Fabric.with(this, new Crashlytics());
        setContentView(R.layout.activity_maishapay_paypal);
        ButterKnife.bind(this);

        logUser();

        toolbar.setTitle("Dépot avec paypal");
        setSupportActionBar(toolbar);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        initPaypalService();

        calcDialog = CalcDialog.newInstance(DIALOG_REQUEST_CODE);

        BigDecimal bigDecimal = new BigDecimal(ET_Montant.getAmount());

        calcDialog.setValue(bigDecimal)
                .setFormatSymbols(',', '.')
                .setShowSignButton(true)
                .setShowAnswerButton(true)
                .setSignCanBeChanged(true, bigDecimal.signum())
                .setClearDisplayOnOperation(true)
                .setShowZeroWhenNoValue(true)
                .setMaxValue(new BigDecimal(1000000))
                .setMaxDigits(7, 2);
    }

    private void logUser() {
        // TODO: Use the current user's information
        // You can call any combination of these three methods
        if(UserPrefencesManager.getCurrentUser() != null) {
            Crashlytics.setUserIdentifier(UserPrefencesManager.getCurrentUser().getTelephone());
            Crashlytics.setUserEmail(UserPrefencesManager.getCurrentUser().getEmail());
            Crashlytics.setUserName(UserPrefencesManager.getCurrentUser().getPrenom() + " " + UserPrefencesManager.getCurrentUser().getNom());
        }

        Answers.getInstance().logContentView(new ContentViewEvent()
                .putContentId("Transfert")
                .putContentName("Activité Dépot PayPal"));
    }

    @OnClick(R.id.ET_Montant)
    public void ET_MontantClicked() {
        FragmentManager fm = getSupportFragmentManager();

        if (fm.findFragmentByTag("calc_dialog") == null) {
            calcDialog.show(fm, "calc_dialog");
        }
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
                Toast.makeText(this, "Dépot annulé", Toast.LENGTH_SHORT).show();

        } else if (resultCode == PaymentActivity.RESULT_EXTRAS_INVALID)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Une erreur est survénue lors de votre dépot:")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
    }

    @Override
    protected void onDestroy() {
        stopService(new Intent(getApplicationContext(), PayPalService.class));
        super.onDestroy();
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

    @Override
    public void onValueEntered(int requestCode, @Nullable BigDecimal value) {
        ET_Montant.setAmount(value.floatValue(), "USD");
    }
}