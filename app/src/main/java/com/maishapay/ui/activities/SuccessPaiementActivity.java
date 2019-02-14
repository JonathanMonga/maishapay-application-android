package com.maishapay.ui.activities;


import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.widget.TextView;

import com.github.ismaeltoe.osms.library.Osms;
import com.github.ismaeltoe.osms.library.entities.CredentialsEntity;
import com.github.ismaeltoe.osms.library.entities.messaging.MessageEntity;
import com.github.ismaeltoe.osms.library.entities.messaging.OutboundSMSMessageRequest;
import com.github.ismaeltoe.osms.library.entities.messaging.OutboundSMSTextMessage;
import com.github.ismaeltoe.osms.library.services.CredentialsService;
import com.github.ismaeltoe.osms.library.services.MessagingService;
import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.MaishapayNotification;
import com.maishapay.model.prefs.UserPrefencesManager;

import org.alfonz.media.SoundManager;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

import static com.maishapay.util.Constants.ACCESS_TOKEN;
import static com.maishapay.util.Constants.CLIENT_ID;
import static com.maishapay.util.Constants.CLIENT_SECRET;
import static com.maishapay.util.Constants.RECEIVER_ADDRESS;
import static com.maishapay.util.Constants.SENDER_ADDRESS;
import static com.maishapay.util.Constants.SENDER_NAME;

public class SuccessPaiementActivity extends AppCompatActivity {
    public static final String EXTRA_MESSAGE = "message";

    public static final String EXTRA_TITLE_ACTIVITY = "title_activity";
    public static final String EXTRA_PHONE = "phone";
    public static final String EXTRA_MONTANT = "montant";
    public static final String EXTRA_MONNAIE = "monnaie";
    public static final String EXTRA_DESTINATAIRE = "destinataire";

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    @BindView(R.id.TV_Msg)
    TextView TV_Msg;
    private SoundManager soundManager;
    private MessagingService messagingService;
    private MessageEntity MESSAGE_ENTITY;
    private OutboundSMSMessageRequest OUTBOUND_SMS_MESSAGE_REQUEST;
    private Osms osms;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //Constants.initStatusBar(this);
        setContentView(R.layout.success_activity);
        ButterKnife.bind(this);

        osms = new Osms(CLIENT_ID, CLIENT_SECRET);
        osms.setAccessToken(ACCESS_TOKEN);

        OUTBOUND_SMS_MESSAGE_REQUEST = new OutboundSMSMessageRequest(
                RECEIVER_ADDRESS,
                new OutboundSMSTextMessage(getIntent().getStringExtra(EXTRA_MESSAGE)),
                SENDER_ADDRESS,
                SENDER_NAME
        );

        MESSAGE_ENTITY = new MessageEntity(OUTBOUND_SMS_MESSAGE_REQUEST);

        CredentialsService credentialsService = osms.credentials();

        credentialsService.getAccessToken("client_credentials", new Callback<CredentialsEntity>() {
            @Override
            public void success(CredentialsEntity credentialsEntity, Response response) {
                osms.setAccessToken(credentialsEntity.getAccessToken());
            }

            @Override
            public void failure(RetrofitError retrofitError) {
                Log.e("Maishapay","Failled");
            }
        });

        soundManager = MaishapayApplication.getMaishapayContext().getmSoundManager();

        toolbar.setTitle(String.format("%s éffectué.", getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY)));

        if (getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY).equals("Abonnement"))
            TV_Msg.setText(String.format("Votre %s s'est éffectué avec succés. Veuillez patienter pendant 10 minutes", getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY)));
        else
            TV_Msg.setText(String.format("Votre %s s'est éffectué avec succés.", getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY)));

        soundManager.playAsset("sounds/job-done.mp3");
        setSupportActionBar(toolbar);

        if (!getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY).equals("Epargne") && !getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY).equals("Abonnement")) {
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
        if(getIntent().getStringExtra(EXTRA_TITLE_ACTIVITY).equals("Abonnement")) {
            messagingService = osms.messaging();
            messagingService.sendMessage(SENDER_ADDRESS, MESSAGE_ENTITY, new Callback<MessageEntity>() {
                        @Override
                        public void success(MessageEntity messageEntity, Response response) {
                            Log.e("Maishapay", messageEntity.toString());
                            finish();
                        }

                        @Override
                        public void failure(RetrofitError retrofitError) {
                            Log.e("Maishapay",retrofitError.toString());
                            finish();
                        }
                    }
            );
        }
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
