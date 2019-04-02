package com.maishapay.ui.activities;


import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.widget.TextView;

import com.crashlytics.android.Crashlytics;
import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.ui.activities.DrawerActivity;

import org.alfonz.media.SoundManager;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import io.fabric.sdk.android.Fabric;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class SuccessDepositActivity extends AppCompatActivity{
    public static final String EXTRA_TITLE_ACTIVITY = "title_activity";
    public static final String EXTRA_PHONE = "phone";
    public static final String EXTRA_MONTANT = "montant";
    public static final String EXTRA_MONNAIE = "monnaie";
    public static final String EXTRA_DESTINATAIRE = "destinataire";

    @BindView(R.id.toolbar_actionbar) Toolbar toolbar;
    @BindView(R.id.TV_Msg) TextView TV_Msg;
    private SoundManager soundManager;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Fabric.with(this, new Crashlytics());
        setContentView(R.layout.success_activity);
        ButterKnife.bind(this);

        soundManager = MaishapayApplication.getMaishapayContext().getmSoundManager();

        toolbar.setTitle(String.format("%s éffectué.", getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY)));
        TV_Msg.setText(String.format("Votre %s s'est éffectué avec succés.", getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY)));
        soundManager.playAsset("sounds/job-done.mp3");
        setSupportActionBar(toolbar);
    }

    @Override
    public void onStop() {
        super.onStop();
        soundManager.stopAll();
    }

    @OnClick(R.id.LL_Site)
    public void LL_SiteClicked(){
        UserPrefencesManager.setUserRefresh(true);
        startActivity(new Intent(this, DrawerActivity.class));
        finish();
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
