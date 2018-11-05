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
    private static final String AFRICELL_OPERATOR = "Africell RDC";
    private static final String VODACOM_OPERATOR = "VODACOM CD";
    private static final String ORANGE_OPERATOR = "Orange RDC";

    private String country;

    @BindView(R.id.cardMoneyId1)
    CardView cardMoneyId1;
    @BindView(R.id.cardMoneyId2)
    CardView cardMoneyId2;
    @BindView(R.id.cardMoneyId3)
    CardView cardMoneyId3;
    @BindView(R.id.cardMoneyId4)
    CardView cardMoneyId4;
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
        if (Constants.getOperatorNamePhone().equals(VODACOM_OPERATOR)) {
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

    @OnClick(R.id.cardMoneyId2)
    public void cardMoneyId2clicked() {
        if (Constants.getOperatorNamePhone().equals(AFRICELL_OPERATOR)) {
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

    @OnClick(R.id.cardMoneyId3)
    public void cardMoneyId3clicked() {
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

    @OnClick(R.id.cardMoneyId4)
    public void cardMoneyId4clicked() {
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
