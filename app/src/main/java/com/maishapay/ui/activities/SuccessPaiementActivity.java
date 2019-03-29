package com.maishapay.ui.activities;


import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.widget.TextView;

import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.MaishapayNotification;
import com.maishapay.model.prefs.UserPrefencesManager;

import org.alfonz.media.SoundManager;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class SuccessPaiementActivity extends AppCompatActivity {
    public static final String EXTRA_MESSAGE = "message";

    public static final String EXTRA_TITLE_ACTIVITY = "title_activity";
    public static final String EXTRA_PHONE = "phone";
    public static final String EXTRA_MONTANT = "montant";
    public static final String EXTRA_MONNAIE = "monnaie";
    public static final String EXTRA_DESTINATAIRE = "destinataire";
    public static final String EXTRA_RECEIVER = "receive";

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    @BindView(R.id.TV_Msg)
    TextView TV_Msg;
    private SoundManager soundManager;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.success_activity);
        ButterKnife.bind(this);

        soundManager = MaishapayApplication.getMaishapayContext().getmSoundManager();

        toolbar.setTitle(String.format("%s éffectué.", getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY)));

        if (getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY).equals("Abonnement"))
            TV_Msg.setText(String.format("Votre %s s'est éffectué avec succés. Veuillez patienter pendant 10 minutes", getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY)));
        else
            TV_Msg.setText(String.format("Votre %s s'est éffectué avec succés.", getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY)));

        soundManager.playAsset("sounds/job-done.mp3");
        setSupportActionBar(toolbar);

        if (!getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY).equals("Depot") && !getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY).equals("Epargne") && !getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY).equals("Abonnement")) {
            MaishapayNotification.sendNotification(this)
                    .withTitle("Maishapay message")
                    .withBody(String.format("Vous venez de recevoir %s %s de la part de %s %s", getIntent().getStringExtra(EXTRA_MONTANT), getIntent().getStringExtra(EXTRA_MONNAIE), UserPrefencesManager.getCurrentUser().getPrenom(), UserPrefencesManager.getCurrentUser().getNom()))
                    .sendTo(getIntent().getStringExtra(EXTRA_DESTINATAIRE));
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        soundManager.stopAll();
    }

    @OnClick(R.id.LL_Site)
    public void LL_SiteClicked() {
        finish();
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
