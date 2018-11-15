package com.maishapay.ui.activities;


import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.TextView;

import com.google.gson.Gson;
import com.maishapay.R;
import com.maishapay.model.client.response.BaseResponse;
import com.maishapay.model.client.response.PaymentResponse;
import com.maishapay.model.client.response.QRCodeResponse;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.PaymentConfirmationPresenter;
import com.maishapay.ui.dialog.DialogConfirmPaymentFragment;
import com.maishapay.ui.dialog.PossitiveButtonConfirmListener;
import com.maishapay.util.Constants;
import com.maishapay.util.LogCat;
import com.maishapay.view.PaymentView;

import net.grandcentrix.thirtyinch.ViewAction;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class PaymentWebActivity extends BaseActivity<PaymentConfirmationPresenter, PaymentView> implements PaymentView, PossitiveButtonConfirmListener {
    public static final String EXTRA_DATA = "data";
    public static final String EXTRA_ERROR_CODE = "error_code";
    public static final int RESULT_TRANSFERT_ERROR = 1;
    public static final int RESULT_NETWORK_ERROR = 2;

    private static String PIN ;

    @BindView(R.id.toolbar_actionbar) Toolbar toolbar;
    @BindView(R.id.TV_Msg) TextView TV_Msg;

    private QRCodeResponse qrCodeResponse;
    private PaymentResponse paymentResponse;
    private ProgressDialog progressDialog;
    private DialogConfirmPaymentFragment dialogConfirmPaymentFragment;

    private boolean flagtransfert = false;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.payment_web_activity);
        ButterKnife.bind(this);

        qrCodeResponse = new Gson().fromJson(getIntent().getStringExtra(EXTRA_DATA), QRCodeResponse.class);

        initProgressBar();
    }

    @Override
    protected void onResume() {
        super.onResume();
        flagtransfert = true;
        enabledControls(false);
        getPresenter().attempt_payment(qrCodeResponse.getApi_key(), qrCodeResponse.getToken(), qrCodeResponse.getMonnaie(), qrCodeResponse.getMontant());

    }

    @OnClick(R.id.LL_Site)
    public void LL_SiteClicked() {
        FragmentManager fm = getSupportFragmentManager();
        dialogConfirmPaymentFragment = DialogConfirmPaymentFragment.newInstance(paymentResponse.getData_api().getProject_name(), "");
        dialogConfirmPaymentFragment.show(fm, "DialogConfirmPaymentFragment");
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @Override
    public void showTranfertError(int type) {
        Intent intent = new Intent();
        intent.putExtra(EXTRA_ERROR_CODE, type);
        setResult(RESULT_TRANSFERT_ERROR, intent);
        finish();
    }

    @Override
    public void showConfimationError(int type) {
        if (type == 0)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Le code Pin saisi n'est pas correct.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .warning()
                    .show();
        else
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Echec de transfert.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .warning()
                    .show();
    }

    @Override
    public void finishToConfirm() {
        UserPrefencesManager.setUserRefresh(true);
        startActivity(new Intent(this, DrawerActivity.class));
        finish();
    }

    @Override
    public void finishToTranfert(BaseResponse transfertResponse) {
        flagtransfert = false;
        paymentResponse = (PaymentResponse)transfertResponse;
    }

    @Override
    public void onUnknownError(String errorMessage) {
        enabledControls(true);

        if(flagtransfert){
            setResult(RESULT_NETWORK_ERROR);
            finish();
        } else {
            Constants.showOnUnknownError(findViewById(R.id.root), new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    enabledControls(false);
                    getPresenter().confirm_payment(PIN, paymentResponse.getData_trans().getToken(), paymentResponse.getData_trans().getApi_key(), UserPrefencesManager.getCurrentUser().getTelephone(), paymentResponse.getData_api().getTelephone(), paymentResponse.getData_trans().getMonnaie(), paymentResponse.getData_trans().getMontant());
                }
            });
        }
    }

    @Override
    public void onTimeout() {
        enabledControls(true);

        if(flagtransfert){
            setResult(RESULT_NETWORK_ERROR);
            finish();
        } else {
            Constants.showOnTimeout(findViewById(R.id.root), new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    enabledControls(false);
                    getPresenter().confirm_payment(PIN, paymentResponse.getData_trans().getToken(), paymentResponse.getData_trans().getApi_key(), UserPrefencesManager.getCurrentUser().getTelephone(), paymentResponse.getData_api().getTelephone(), paymentResponse.getData_trans().getMonnaie(), paymentResponse.getData_trans().getMontant());
                }
            });
        }
    }

    @Override
    public void onNetworkError() {
        enabledControls(true);

        if(flagtransfert){
            setResult(RESULT_NETWORK_ERROR);
            finish();
        } else {
            Constants.showOnNetworkError(findViewById(R.id.root), new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    enabledControls(false);
                    getPresenter().confirm_payment(PIN, paymentResponse.getData_trans().getToken(), paymentResponse.getData_trans().getApi_key(), UserPrefencesManager.getCurrentUser().getTelephone(), paymentResponse.getData_api().getTelephone(), paymentResponse.getData_trans().getMonnaie(), paymentResponse.getData_trans().getMontant());
                }
            });
        }
    }

    @Override
    public void enabledControls(boolean flag) {
        if (flag) {
            progressDialog.dismiss();
        } else {
            progressDialog.show();
        }
    }

    private void initProgressBar() {
        progressDialog = new ProgressDialog(this);
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        progressDialog.setMessage("Veuillez patienter");
    }

    @NonNull
    @Override
    public PaymentConfirmationPresenter providePresenter() {
        return new PaymentConfirmationPresenter();
    }

    @Override
    public void positiveClicked(String pin) {
        PIN = pin;
        flagtransfert = false;
        getPresenter().confirm_payment(PIN, paymentResponse.getData_trans().getToken(), paymentResponse.getData_trans().getApi_key(), UserPrefencesManager.getCurrentUser().getTelephone(), paymentResponse.getData_api().getTelephone(), paymentResponse.getData_trans().getMonnaie(),  paymentResponse.getData_trans().getMontant());
    }
}
