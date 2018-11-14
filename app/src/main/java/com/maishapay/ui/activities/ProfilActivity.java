package com.maishapay.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.transition.Fade;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;

import com.google.gson.Gson;
import com.google.zxing.WriterException;
import com.maishapay.R;
import com.maishapay.model.client.response.UserResponse;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.util.Constants;
import com.maishapay.util.LogCat;

import androidmads.library.qrgenearator.QRGContents;
import androidmads.library.qrgenearator.QRGEncoder;
import butterknife.BindView;
import butterknife.ButterKnife;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;


public class ProfilActivity extends AppCompatActivity {

    @BindView(R.id.toolbar) Toolbar toolbar;
    @BindView(R.id.collapsing_toolbar) CollapsingToolbarLayout collapsingToolbar;
    @BindView(R.id.ET_Noms) TextView ET_Noms;
    @BindView(R.id.ET_Phone) TextView ET_Phone;
    @BindView(R.id.ET_Email) TextView ET_Email;
    @BindView(R.id.ET_Adresse) TextView ET_Adresse;
    @BindView(R.id.ET_Ville) TextView ET_Ville;

    @BindView(R.id.IV_QRCode)
    ImageView IV_QRCode;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.profil_layout);

        ButterKnife.bind(this);

        setupWindowAnimations();

        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        collapsingToolbar.setTitle("Profil");

        UserResponse userResponse = UserPrefencesManager.getCurrentUser();

        Constants.generateQRcode(new Gson().toJson(userResponse, UserResponse.class), IV_QRCode, (WindowManager) getSystemService(WINDOW_SERVICE));

        ET_Noms.setText(String.format("%s %s", userResponse.getPrenom(), userResponse.getNom()));
        ET_Phone.setText(userResponse.getTelephone());
        ET_Email.setText(userResponse.getEmail());
        ET_Adresse.setText(userResponse.getAdresse());
        ET_Ville.setText(userResponse.getVille());
    }

    private void setupWindowAnimations() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            Fade fade = new Fade();
            getWindow().setReturnTransition(fade);
        }
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_update, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_update) {
            Intent intent = new Intent(this, UpdateProfilActivity.class);
            startActivity(intent);
            return true;
        } else if(id == android.R.id.home){
            finish();
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}