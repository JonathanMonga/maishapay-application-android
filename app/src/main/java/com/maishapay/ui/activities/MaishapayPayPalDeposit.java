package com.maishapay.ui.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.Toast;

import com.maishapay.R;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.PaypalDepositPresenter;
import com.maishapay.view.PaypalDepositView;
import com.nmaltais.calcdialog.CalcDialog;
import com.paypal.android.sdk.payments.PayPalPayment;
import com.paypal.android.sdk.payments.PayPalService;
import com.paypal.android.sdk.payments.PaymentActivity;

import org.fabiomsr.moneytextview.MoneyTextView;

import java.math.BigDecimal;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;
import dmax.dialog.SpotsDialog;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

import static com.maishapay.model.Configuration.PAYPAL_CONFIGURATION;
import static com.maishapay.model.Configuration.PAYPAL_REQUEST_CODE;

public class MaishapayPayPalDeposit extends BaseActivity<PaypalDepositPresenter, PaypalDepositView> implements CalcDialog.CalcDialogCallback, PaypalDepositView {

    private static final int DIALOG_REQUEST_CODE = 0;

    @BindView(R.id.ET_Montant)
    MoneyTextView ET_Montant;
    @BindView(R.id.btnPayNow)
    Button btnPayNow;
    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;

    private CalcDialog calcDialog;
    private SpotsDialog progressDialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_maishapay_paypal);
        ButterKnife.bind(this);

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

        initProgressBar();
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

    private void initProgressBar() {
        progressDialog = new SpotsDialog(this, R.style.Custom);
    }

    private void processPayment(String amount) {
        PayPalPayment payPalPayment = new PayPalPayment(new BigDecimal(String.valueOf(amount)), "USD", "[Maishapay] Depot", PayPalPayment.PAYMENT_INTENT_SALE);

        Intent intent = new Intent(getApplicationContext(), PaymentActivity.class);
        intent.putExtra(PayPalService.EXTRA_PAYPAL_CONFIGURATION, PAYPAL_CONFIGURATION);
        intent.putExtra(PaymentActivity.EXTRA_PAYMENT, payPalPayment);
        startActivityForResult(intent, PAYPAL_REQUEST_CODE);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == PAYPAL_REQUEST_CODE) {
            if (resultCode == RESULT_OK) {
                if (data.getParcelableExtra(PaymentActivity.EXTRA_RESULT_CONFIRMATION) != null) {
                    getPresenter().depot(UserPrefencesManager.getCurrentUser().getTelephone(), String.valueOf(ET_Montant.getAmount()), "USD");
                } else {
                    Toast.makeText(this, "Dépot annulé", Toast.LENGTH_SHORT).show();
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

    @Override
    public void showConfimationError(int i) {
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Echec de depot.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    @Override
    public void finishToConfirm() {
        Intent intent = new Intent(this, SuccessPaiementActivity.class);
        intent.putExtra(SuccessPaiementActivity.EXTRA_TITLE_ACTIVITY, "Depot");
        intent.putExtra(SuccessPaiementActivity.EXTRA_PHONE, UserPrefencesManager.getCurrentUser().getTelephone());
        intent.putExtra(SuccessPaiementActivity.EXTRA_MONNAIE, "USD");
        intent.putExtra(SuccessPaiementActivity.EXTRA_MONTANT, String.valueOf(ET_Montant.getAmount()));

        startActivity(intent);
        finish();
    }

    @Override
    public void onUnknownError(String errorMessage) {
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Impossible de se connecter au serveur.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    @Override
    public void onTimeout() {
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Le délais s'est t'écouler.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    @Override
    public void onNetworkError() {
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Aucune connexion réseau. Réessayez plus tard.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    @Override
    public void enabledControls(boolean flag) {

    }

    @NonNull
    @Override
    public PaypalDepositPresenter providePresenter() {
        return new PaypalDepositPresenter();
    }
}