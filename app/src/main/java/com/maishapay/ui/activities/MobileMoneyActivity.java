package com.maishapay.ui.activities;


import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.CardView;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.afollestad.materialdialogs.MaterialDialog;
import com.maishapay.R;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.ui.dialog.DialogConfirmTransfertFragment;
import com.maishapay.ui.dialog.DialogCountryFragment;
import com.maishapay.ui.dialog.PossitiveCountryButtonListener;
import com.maishapay.util.Constants;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;

import static com.maishapay.util.Constants.ussdToCallableUri;


/**
 * A simple {@link Fragment} subclass.
 */
public class MobileMoneyActivity extends AppCompatActivity {
    private static final String AIRTEL_OPERATOR = "Airtel CD";
    private static final String AFRICELL_OPERATOR = "africell";
    private static final String VODACOM_OPERATOR = "VODACOM CD";
    private static final String ORANGE_OPERATOR = "Orange";
    private static final String TIGO_OPERATOR = "Tigo";
    private static final String EXPRESSO_OPERATOR = "Expresso";

    private String country;

    @BindView(R.id.cardMoneyId1)
    CardView cardMoneyId1;
    @BindView(R.id.cardMoneyId2)
    CardView cardMoneyId2;
    @BindView(R.id.cardMoneyId3)
    CardView cardMoneyId3;
    @BindView(R.id.cardMoneyId4)
    CardView cardMoneyId4;
    @BindView(R.id.money1)
    ImageView money1;
    @BindView(R.id.money2)
    ImageView money2;
    @BindView(R.id.money3)
    ImageView money3;
    @BindView(R.id.money4)
    ImageView money4;
    @BindView(R.id.nom1)
    TextView nom1;
    @BindView(R.id.nom2)
    TextView nom2;
    @BindView(R.id.nom3)
    TextView nom3;
    @BindView(R.id.nom4)
    TextView nom4;
    @BindView(R.id.description1)
    TextView description1;
    @BindView(R.id.description2)
    TextView description2;
    @BindView(R.id.description3)
    TextView description3;
    @BindView(R.id.description4)
    TextView description4;

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mobile_money_layout);

        ButterKnife.bind(this);

        toolbar.setTitle("Mobile money");
        setSupportActionBar(toolbar);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        String codePhone = UserPrefencesManager.getCurrentUser().getTelephone().substring(0, 4);

        switch (codePhone) {
            case "+211": {
                money1.setImageResource(R.drawable.tigo);
                nom1.setText("");
                description1.setText("");

                money2.setImageResource(R.drawable.expresso);
                nom2.setText("");
                description2.setText("");

                money4.setImageResource(R.drawable.money4);
                nom4.setText("");
                description4.setText("");

                cardMoneyId3.setVisibility(View.GONE);
                break;
            }

            case "+250": {
                money1.setImageResource(R.drawable.tigo);
                nom1.setText("");
                description1.setText("");

                money2.setImageResource(R.drawable.expresso);
                nom2.setText("");
                description2.setText("");

                cardMoneyId3.setVisibility(View.GONE);
                cardMoneyId4.setVisibility(View.GONE);
                break;
            }

            case "+228": {
                money1.setImageResource(R.drawable.tigo);
                nom1.setText("");
                description1.setText("");

                money2.setImageResource(R.drawable.expresso);
                nom2.setText("");
                description2.setText("");

                cardMoneyId3.setVisibility(View.GONE);
                cardMoneyId4.setVisibility(View.GONE);
                break;
            }

            case "+225": {
                money1.setImageResource(R.drawable.money1);
                nom1.setText("");
                description1.setText("");

                money2.setImageResource(R.drawable.money2);
                nom2.setText("");
                description2.setText("");

                money3.setImageResource(R.drawable.money3);
                nom3.setText("");
                description3.setText("");

                money4.setImageResource(R.drawable.money4);
                nom4.setText("");
                description4.setText("");
                break;
            }

            case "+254": {
                money1.setImageResource(R.drawable.tigo);
                nom1.setText("");
                description1.setText("");

                money2.setImageResource(R.drawable.expresso);
                nom2.setText("");
                description2.setText("");

                cardMoneyId3.setVisibility(View.GONE);
                cardMoneyId4.setVisibility(View.GONE);
                break;
            }

            default: {
                money1.setImageResource(R.drawable.money1);
                nom1.setText("M-pesa");
                description1.setText("Service mobile money pour Vodacom.");

                money2.setImageResource(R.drawable.money2);
                nom2.setText("Africell money");
                description2.setText("Service mobile money pour Africell.");

                money3.setImageResource(R.drawable.money3);
                nom3.setText("Airtel money");
                description3.setText("Service mobile money pour Airtel.");

                money4.setImageResource(R.drawable.money4);
                nom4.setText("Orange money");
                description4.setText("Service mobile money pour Orange.");
            }
        }
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

    @OnClick(R.id.cardMoneyId1)
    public void cardMoneyId1clicked() {
        String codePhone = UserPrefencesManager.getCurrentUser().getTelephone().substring(0, 4);

        switch (codePhone) {
            case "+211": {
                if (Constants.getOperatorNamePhone().equals(TIGO_OPERATOR)) {
                    Intent callIntent = new Intent(Intent.ACTION_CALL, ussdToCallableUri("*1222#"));
                    if (ActivityCompat.checkSelfPermission(this, Manifest.permission.CALL_PHONE) != PackageManager.PERMISSION_GRANTED) {
                        // TODO: Consider calling
                        //    ActivityCompat#requestPermissions
                        // here to request the missing permissions, and then overriding
                        //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                        //                                          int[] grantResults)
                        // to handle the case where the user grants the permission. See the documentation
                        // for ActivityCompat#requestPermissions for more details.
                        return;
                    }
                    startActivity(callIntent);
                } else
                    Snacky.builder()
                            .setView(findViewById(R.id.root))
                            .setText("Vous utilisez un autre operateur.")
                            .setDuration(Snacky.LENGTH_LONG)
                            .warning()
                            .show();
                break;
            }

            case "+250": {

                break;
            }

            case "+228": {

                break;
            }

            case "+225": {

                break;
            }

            case "+254": {

                break;
            }

            default: {
                if (Constants.getOperatorNamePhone().equals(VODACOM_OPERATOR)) {
                    Intent callIntent = new Intent(Intent.ACTION_CALL, ussdToCallableUri("*1222#"));
                    if (ActivityCompat.checkSelfPermission(this, Manifest.permission.CALL_PHONE) != PackageManager.PERMISSION_GRANTED) {
                        // TODO: Consider calling
                        //    ActivityCompat#requestPermissions
                        // here to request the missing permissions, and then overriding
                        //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                        //                                          int[] grantResults)
                        // to handle the case where the user grants the permission. See the documentation
                        // for ActivityCompat#requestPermissions for more details.
                        return;
                    }
                    startActivity(callIntent);
                } else
                    Snacky.builder()
                            .setView(findViewById(R.id.root))
                            .setText("Vous utilisez un autre operateur.")
                            .setDuration(Snacky.LENGTH_LONG)
                            .warning()
                            .show();
            }
        }
    }

    @OnClick(R.id.cardMoneyId2)
    public void cardMoneyId2clicked() {
        String codePhone = UserPrefencesManager.getCurrentUser().getTelephone().substring(0, 4);

        switch (codePhone) {
            case "+211": {
                if (Constants.getOperatorNamePhone().equals(EXPRESSO_OPERATOR)) {
                    Intent callIntent = new Intent(Intent.ACTION_CALL, ussdToCallableUri("*1222#"));
                    if (ActivityCompat.checkSelfPermission(this, Manifest.permission.CALL_PHONE) != PackageManager.PERMISSION_GRANTED) {
                        // TODO: Consider calling
                        //    ActivityCompat#requestPermissions
                        // here to request the missing permissions, and then overriding
                        //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                        //                                          int[] grantResults)
                        // to handle the case where the user grants the permission. See the documentation
                        // for ActivityCompat#requestPermissions for more details.
                        return;
                    }
                    startActivity(callIntent);
                } else
                    Snacky.builder()
                            .setView(findViewById(R.id.root))
                            .setText("Vous utilisez un autre operateur.")
                            .setDuration(Snacky.LENGTH_LONG)
                            .warning()
                            .show();
                break;
            }

            case "+250": {

                break;
            }

            case "+228": {

                break;
            }

            case "+225": {

                break;
            }

            case "+254": {

                break;
            }

            default: {
                Snacky.builder()
                        .setView(findViewById(R.id.root))
                        .setText("Pas de service pour cet operateur.")
                        .setDuration(Snacky.LENGTH_LONG)
                        .warning()
                        .show();
            }
        }
    }

    @OnClick(R.id.cardMoneyId3)
    public void cardMoneyId3clicked() {
        String codePhone = UserPrefencesManager.getCurrentUser().getTelephone().substring(0, 4);

        switch (codePhone) {
            case "+211": {

                break;
            }

            case "+250": {

                break;
            }

            case "+228": {

                break;
            }

            case "+225": {

                break;
            }

            case "+254": {

                break;
            }

            default: {
                if (Constants.getOperatorNamePhone().equals(AIRTEL_OPERATOR)) {
                    Intent callIntent = new Intent(Intent.ACTION_CALL, ussdToCallableUri("*501#"));
                    if (ActivityCompat.checkSelfPermission(this, Manifest.permission.CALL_PHONE) != PackageManager.PERMISSION_GRANTED) {
                        // TODO: Consider calling
                        //    ActivityCompat#requestPermissions
                        // here to request the missing permissions, and then overriding
                        //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                        //                                          int[] grantResults)
                        // to handle the case where the user grants the permission. See the documentation
                        // for ActivityCompat#requestPermissions for more details.
                        return;
                    }
                    startActivity(callIntent);
                } else
                    Snacky.builder()
                            .setView(findViewById(R.id.root))
                            .setText("Vous utilisez un autre operateur.")
                            .setDuration(Snacky.LENGTH_LONG)
                            .warning()
                            .show();
            }
        }
    }

    @OnClick(R.id.cardMoneyId4)
    public void cardMoneyId4clicked() {
        String codePhone = UserPrefencesManager.getCurrentUser().getTelephone().substring(0, 4);

        switch (codePhone) {
            case "+211": {

                break;
            }

            case "+250": {

                break;
            }

            case "+228": {

                break;
            }

            case "+225": {

                break;
            }

            case "+254": {

                break;
            }

            default: {
                if (Constants.getOperatorNamePhone().equals(ORANGE_OPERATOR)) {
                    Intent callIntent = new Intent(Intent.ACTION_CALL, ussdToCallableUri("*144#"));
                    if (ActivityCompat.checkSelfPermission(this, Manifest.permission.CALL_PHONE) != PackageManager.PERMISSION_GRANTED) {
                        // TODO: Consider calling
                        //    ActivityCompat#requestPermissions
                        // here to request the missing permissions, and then overriding
                        //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                        //                                          int[] grantResults)
                        // to handle the case where the user grants the permission. See the documentation
                        // for ActivityCompat#requestPermissions for more details.
                        return;
                    }
                    startActivity(callIntent);
                } else
                    Snacky.builder()
                            .setView(findViewById(R.id.root))
                            .setText("Vous utilisez un autre operateur.")
                            .setDuration(Snacky.LENGTH_LONG)
                            .warning()
                            .show();
            }
        }
    }
}
