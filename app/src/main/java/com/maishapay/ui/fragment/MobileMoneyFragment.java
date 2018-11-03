package com.maishapay.ui.fragment;


import android.app.ProgressDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.CardView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.Toast;

import com.afollestad.materialdialogs.MaterialDialog;
import com.hbb20.CountryCodePicker;
import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.ContactPresenter;
import com.maishapay.ui.activities.EpargnePersonnelleActivity;
import com.maishapay.ui.activities.TransfertCompteActivity;
import com.maishapay.ui.activities.TransfertCompteCashActivity;
import com.maishapay.util.Constants;
import com.maishapay.view.ContactView;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;


/**
 * A simple {@link Fragment} subclass.
 */
public class MobileMoneyFragment extends Fragment {
    private static final String AIRTEL_OPERATOR = "Airtel CD";
    private static final String AFRICELL_OPERATOR = "Africell RDC";
    private static final String VODACOM_OPERATOR = "VODACOM CD";
    private static final String ORANGE_OPERATOR = "Orange RDC";

    private String country;

    @BindView(R.id.cardMoneyId1) CardView cardMoneyId1;
    @BindView(R.id.cardMoneyId2) CardView cardMoneyId2;
    @BindView(R.id.cardMoneyId3) CardView cardMoneyId3;
    @BindView(R.id.cardMoneyId4) CardView cardMoneyId4;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onCreateView(inflater, container, savedInstanceState);
        View view = inflater.inflate(R.layout.mobile_money_layout, container, false);

        ButterKnife.bind(this, view);
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

        if (UserPrefencesManager.getMobileMoneyFirstRun()) {
            UserPrefencesManager.setMobileMoneyFirstRun(false);

            new MaterialDialog.Builder(getActivity())
                    .title("Choisisez votre pays.")
                    .items(R.array.option_country_mobile)
                    .itemsCallback(new MaterialDialog.ListCallback() {
                        @Override
                        public void onSelection(MaterialDialog dialog, View itemView, int position, CharSequence text) {
                            switch (position) {
                                case 0: {
                                    country = getResources().getStringArray(R.array.option_devise)[position];
                                    UserPrefencesManager.setMobileMoneyCountry(country);
                                    Snacky.builder()
                                            .setView(getView())
                                            .setText("Votre pays par défaut est " + country)
                                            .setDuration(Snacky.LENGTH_LONG)
                                            .success()
                                            .show();
                                    break;
                                }

                                case 1: {
                                    country = getResources().getStringArray(R.array.option_devise)[position];
                                    UserPrefencesManager.setMobileMoneyCountry(country);
                                    Snacky.builder()
                                            .setView(getView())
                                            .setText("Votre pays par défaut est " + country)
                                            .setDuration(Snacky.LENGTH_LONG)
                                            .success()
                                            .show();
                                    break;
                                }

                                default: {
                                    country = getResources().getStringArray(R.array.option_devise)[position];
                                    UserPrefencesManager.setMobileMoneyCountry(country);

                                    Snacky.builder()
                                            .setView(getView())
                                            .setText("Votre pays par défaut est " + country)
                                            .setDuration(Snacky.LENGTH_LONG)
                                            .success()
                                            .show();
                                    break;
                                }
                            }
                        }
                    })
                    .show();
        }
    }

    @OnClick(R.id.cardMoneyId1)
    public void cardMoneyId1clicked() {
        if(Constants.getOperatorNamePhone().equals(AIRTEL_OPERATOR)) {
            Intent callIntent = new Intent(Intent.ACTION_CALL, ussdToCallableUri("*501#"));
            startActivity(callIntent);
        } else
            Snacky.builder()
                    .setView(getView())
                    .setText("Vous utilisez un autre operateur.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .warning()
                    .show();
    }

    @OnClick(R.id.cardMoneyId2)
    public void cardMoneyId2clicked() {
        if(Constants.getOperatorNamePhone().equals(AIRTEL_OPERATOR)) {
            Intent callIntent = new Intent(Intent.ACTION_CALL, ussdToCallableUri("*501#"));
            startActivity(callIntent);
        } else
            Snacky.builder()
                    .setView(getView())
                    .setText("Vous utilisez un autre operateur.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .warning()
                    .show();
    }

    @OnClick(R.id.cardMoneyId3)
    public void cardMoneyId3clicked() {
        if(Constants.getOperatorNamePhone().equals(AIRTEL_OPERATOR)) {
            Intent callIntent = new Intent(Intent.ACTION_CALL, ussdToCallableUri("*501#"));
            startActivity(callIntent);
        } else
            Snacky.builder()
                    .setView(getView())
                    .setText("Vous utilisez un autre operateur.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .warning()
                    .show();
    }

    @OnClick(R.id.cardMoneyId4)
    public void cardMoneyId4clicked() {
        if(Constants.getOperatorNamePhone().equals(AIRTEL_OPERATOR)) {
            Intent callIntent = new Intent(Intent.ACTION_CALL, ussdToCallableUri("*144#"));
            startActivity(callIntent);
        } else
            Snacky.builder()
                    .setView(getView())
                    .setText("Vous utilisez un autre operateur.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .warning()
                    .show();
    }

    private Uri ussdToCallableUri(String ussd) {
        String uriString = "";

        if(!ussd.startsWith("tel:"))
            uriString += "tel:";

        for(char c : ussd.toCharArray()) {
            if(c == '#')
                uriString += Uri.encode("#");
            else
                uriString += c;
        }

        return Uri.parse(uriString);
    }
}
