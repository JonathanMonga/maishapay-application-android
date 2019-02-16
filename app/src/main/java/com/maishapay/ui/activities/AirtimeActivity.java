package com.maishapay.ui.activities;


import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.CardView;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.afollestad.materialdialogs.MaterialDialog;
import com.maishapay.R;
import com.maishapay.util.Constants;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;

import static com.maishapay.util.Constants.ussdToCallableUri;


/**
 * A simple {@link Fragment} subclass.
 */
public class AirtimeActivity extends AppCompatActivity {
    private static final String AIRTEL_OPERATOR = "Airtel CD";
    private static final String VODACOM_OPERATOR = "VODACOM CD";
    private static final String ORANGE_OPERATOR = "Orange";
    private static final String TIGO_OPERATOR = "Tigo";
    private static final String EXPRESSO_OPERATOR = "Expresso";
    private static final String MTN_OPERATOR = "mtn";

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

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    private String codePhone;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.airtime_layout);
        //Constants.initStatusBar(this);
        ButterKnife.bind(this);

        toolbar.setTitle("Achat crédit unité");
        setSupportActionBar(toolbar);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        codePhone = "+242";
                //UserPrefencesManager.getCurrentUser().getTelephone().substring(0, 4);

        switch (codePhone) {
            case "+211": {
                money1.setImageResource(R.drawable.tigo);
                nom1.setText("Tigo cash");
                nom1.setTextColor(getResources().getColor(R.color.md_blue_800));

                money2.setImageResource(R.drawable.expresso);
                nom2.setText("Expresso money");
                nom2.setTextColor(getResources().getColor(R.color.md_blue_grey_300));

                cardMoneyId3.setVisibility(View.GONE);
                break;
            }

            case "+250": {
                money1.setImageResource(R.drawable.tigo);
                nom1.setText("Tigo cash");
                nom1.setTextColor(getResources().getColor(R.color.md_blue_800));

                money3.setImageResource(R.drawable.mtn);
                nom3.setText("Mtn money");
                nom3.setTextColor(getResources().getColor(R.color.md_yellow_800));

                cardMoneyId2.setVisibility(View.GONE);
                cardMoneyId4.setVisibility(View.GONE);
                break;
            }

            case "+228": {
                money1.setImageResource(R.drawable.tigo);
                nom1.setText("");

                money2.setImageResource(R.drawable.expresso);
                nom2.setText("");

                cardMoneyId3.setVisibility(View.GONE);
                cardMoneyId4.setVisibility(View.GONE);
                break;
            }

            case "+225": {

                money1.setImageResource(R.drawable.mtn);
                nom1.setText("Mtn money");
                nom1.setTextColor(getResources().getColor(R.color.md_yellow_800));

                cardMoneyId2.setVisibility(View.GONE);
                cardMoneyId3.setVisibility(View.GONE);

                break;
            }

            case "+254": {
                money1.setImageResource(R.drawable.safaricom);
                nom1.setText("M-pesa");
                nom1.setTextColor(getResources().getColor(R.color.md_green_500));

                cardMoneyId2.setVisibility(View.GONE);
                cardMoneyId4.setVisibility(View.GONE);
                break;
            }

            default: {

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

        switch (codePhone) {
            case "+211": {
                if (Constants.getOperatorName().equals(TIGO_OPERATOR)) {
                    Intent callIntent = new Intent(Intent.ACTION_CALL, ussdToCallableUri("*150#"));
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
                            .setText(String.format("Vous utilisez %s comme operateur.", Constants.getOperatorName()))
                            .setDuration(Snacky.LENGTH_LONG)
                            .error()
                            .show();
                break;
            }

            case "+250": {
                if (Constants.getOperatorName().equals(MTN_OPERATOR)) {
                    Intent callIntent = new Intent(Intent.ACTION_CALL, ussdToCallableUri("*182#"));
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
                            .setText(String.format("Vous utilisez %s comme operateur.", Constants.getOperatorName()))
                            .setDuration(Snacky.LENGTH_LONG)
                            .error()
                            .show();
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
                new MaterialDialog.Builder(this)
                        .title("Choisisez le nombre d'unité")
                        .items(R.array.option_unite_vodacom)
                        .itemsCallback(new MaterialDialog.ListCallback() {
                            @Override
                            public void onSelection(MaterialDialog dialog, View itemView, int position, CharSequence text) {
                                switch (position) {
                                    case 0: {

                                        break;
                                    }

                                    case 1: {

                                        break;
                                    }

                                    case 2: {

                                        break;
                                    }

                                    default: {

                                        break;
                                    }
                                }
                            }
                        })
                        .show();
            }
        }
    }

    @OnClick(R.id.cardMoneyId2)
    public void cardMoneyId2clicked() {

        switch (codePhone) {
            case "+211": {
                if (Constants.getOperatorName().equals(EXPRESSO_OPERATOR)) {
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
                            .setText(String.format("Vous utilisez %s comme operateur.", Constants.getOperatorName()))
                            .setDuration(Snacky.LENGTH_LONG)
                            .error()
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
                new MaterialDialog.Builder(this)
                        .title("Choisisez le nombre d'unité")
                        .items(R.array.option_unite_orange_aitel)
                        .itemsCallback(new MaterialDialog.ListCallback() {
                            @Override
                            public void onSelection(MaterialDialog dialog, View itemView, int position, CharSequence text) {
                                switch (position) {
                                    case 0: {

                                        break;
                                    }

                                    case 1: {

                                        break;
                                    }

                                    case 2: {

                                        break;
                                    }

                                    default: {

                                        break;
                                    }
                                }
                            }
                        })
                        .show();
            }
        }
    }

    @OnClick(R.id.cardMoneyId3)
    public void cardMoneyId3clicked() {

        switch (codePhone) {
            case "+211": {

                break;
            }

            case "+250": {
                if (Constants.getOperatorName().equals(TIGO_OPERATOR)) {
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
                            .setText(String.format("Vous utilisez %s comme operateur.", Constants.getOperatorName()))
                            .setDuration(Snacky.LENGTH_LONG)
                            .error()
                            .show();
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
                new MaterialDialog.Builder(this)
                        .title("Choisisez le nombre d'unité")
                        .items(R.array.option_unite_orange_aitel)
                        .itemsCallback(new MaterialDialog.ListCallback() {
                            @Override
                            public void onSelection(MaterialDialog dialog, View itemView, int position, CharSequence text) {
                                switch (position) {
                                    case 0: {

                                        break;
                                    }

                                    case 1: {

                                        break;
                                    }

                                    case 2: {

                                        break;
                                    }

                                    default: {

                                        break;
                                    }
                                }
                            }
                        })
                        .show();
            }
        }
    }

    @OnClick(R.id.cardMoneyId4)
    public void cardMoneyId4clicked() {

        switch (codePhone) {
            case "+211": {
                if (Constants.getOperatorName().equals(ORANGE_OPERATOR)) {
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
                            .setText(String.format("Vous utilisez %s comme operateur.", Constants.getOperatorName()))
                            .setDuration(Snacky.LENGTH_LONG)
                            .error()
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
                new MaterialDialog.Builder(this)
                        .title("Choisisez le nombre d'unité")
                        .items(R.array.option_unite_orange_aitel)
                        .itemsCallback(new MaterialDialog.ListCallback() {
                            @Override
                            public void onSelection(MaterialDialog dialog, View itemView, int position, CharSequence text) {
                                switch (position) {
                                    case 0: {

                                        break;
                                    }

                                    case 1: {

                                        break;
                                    }

                                    case 2: {

                                        break;
                                    }

                                    default: {

                                        break;
                                    }
                                }
                            }
                        })
                        .show();
            }
        }
    }
}