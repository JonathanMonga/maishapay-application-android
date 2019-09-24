package com.maishapay.ui.activities;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;

import com.afollestad.materialdialogs.DialogAction;
import com.afollestad.materialdialogs.MaterialDialog;
import com.crashlytics.android.Crashlytics;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.ContentViewEvent;
import com.github.javiersantos.appupdater.AppUpdater;
import com.github.javiersantos.appupdater.enums.Display;
import com.github.javiersantos.appupdater.enums.UpdateFrom;
import com.google.gson.Gson;
import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.client.response.UserResponse;
import com.maishapay.model.domain.UserDataPreference;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.ui.fragment.AboutFragment;
import com.maishapay.ui.fragment.AccueilFragment;
import com.maishapay.ui.fragment.ContactFragment;
import com.maishapay.ui.fragment.DashboardClickListener;
import com.maishapay.ui.fragment.SettingsFragment;
import com.maishapay.ui.qrcode.DecoderActivity;
import com.maishapay.ui.receiver.ApplicationSelectorReceiver;
import com.maishapay.util.Constants;
import com.mikepenz.materialdrawer.AccountHeader;
import com.mikepenz.materialdrawer.AccountHeaderBuilder;
import com.mikepenz.materialdrawer.Drawer;
import com.mikepenz.materialdrawer.DrawerBuilder;
import com.mikepenz.materialdrawer.model.DividerDrawerItem;
import com.mikepenz.materialdrawer.model.PrimaryDrawerItem;
import com.mikepenz.materialdrawer.model.ProfileDrawerItem;
import com.mikepenz.materialdrawer.model.interfaces.IDrawerItem;
import com.mikepenz.materialdrawer.model.interfaces.IProfile;

import org.alfonz.media.SoundManager;

import butterknife.BindView;
import butterknife.ButterKnife;
import de.mateware.snacky.Snacky;
import io.fabric.sdk.android.Fabric;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

import static com.maishapay.ui.activities.EpargneActivity.RESULT_EPARGNE_OK;
import static com.maishapay.ui.activities.EpargnePersonnelleActivity.RESULT_TRANSFERT_EPARGNE_OK;
import static com.maishapay.ui.activities.PaymentWebActivity.RESULT_TRANSFERT_ERROR;
import static com.maishapay.ui.activities.TransfertCompteActivity.RESULT_TRANSFERT_OK;

public class DrawerActivity extends AppCompatActivity implements DashboardClickListener, SettingsFragment.IGetResult {
    public static final String EXTRA_EPARGNE_DRAWER = "epargne";

    private static final int REQUEST_QRCODE = 1;
    private static final int REQUEST_PAYMENT = 2;
    private static final int REQUEST_PROFIL = 3;
    private static final int REQUEST_TRANSFERT = 4;
    private static final int REQUEST_EPARGNE = 5;
    private static final int REQUEST_TRANSACTION = 6;
    private static final int REQUEST_PAIEMENT = 7;
    private static final int REQUEST_TRANSFERT_EPARGNE = 8;

    public static final String EXTRA_QR_CODE_FRAGMENT = "scan_from_fragment";
    private static final int PICK_SHARE_REQUEST = 1000;

    private Drawer result = null;

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    private ProfileDrawerItem userProfil;
    private SoundManager soundManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Fabric.with(this, new Crashlytics());
        setContentView(R.layout.activity_drawer);
        ButterKnife.bind(this);

        logUser();

        setSupportActionBar(toolbar);

        userProfil = new ProfileDrawerItem();
        userProfil.withIcon(R.drawable.maishapay_photo_profil);

        soundManager = MaishapayApplication.getMaishapayContext().getmSoundManager();

        // Create a few sample profile
        // NOTE you have to define the loader logic too. See the CustomApplication for more details
        UserResponse userResponse = UserPrefencesManager.getCurrentUser();
        userProfil.withName(userResponse.getPrenom() + " " + userResponse.getNom()).withEmail(userResponse.getTelephone());

        // Create the AccountHeader
        AccountHeader headerResult = new AccountHeaderBuilder()
                .withTextColor(Color.WHITE)
                .withActivity(this)
                .withHeaderBackground(R.drawable.fastpro)
                .addProfiles(userProfil)
                .withOnAccountHeaderProfileImageListener(new AccountHeader.OnAccountHeaderProfileImageListener() {
                    @Override
                    public boolean onProfileImageClick(View view, IProfile profile, boolean current) {
                        new Handler().postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                startActivityForResult(new Intent(DrawerActivity.this, UpdateProfilActivity.class), REQUEST_PROFIL);
                            }
                        }, 400);
                        return false;
                    }

                    @Override
                    public boolean onProfileImageLongClick(View view, IProfile profile, boolean current) {
                        return false;
                    }
                })
                .withSavedInstance(savedInstanceState)
                .build();

        result = new DrawerBuilder()
                .withSelectedItemByPosition(1)
                .withSavedInstance(savedInstanceState)
                .withShowDrawerOnFirstLaunch(true)
                .withFullscreen(false)
                .withActivity(this)
                .withHasStableIds(true)
                .withToolbar(toolbar)
                .withAccountHeader(headerResult)
                .addDrawerItems(
                        new PrimaryDrawerItem().withName("Accueil").withIcon(R.drawable.bank).withIdentifier(1),
                        new PrimaryDrawerItem().withName("Mon profil").withSelectable(false).withIcon(R.drawable.profil).withIdentifier(2),
                        new DividerDrawerItem(),
                        new PrimaryDrawerItem().withName("Points Maishapay").withSelectable(false).withIcon(R.drawable.point).withIdentifier(4),
                        //new PrimaryDrawerItem().withName("Mobile money").withSelectable(false).withIcon(R.drawable.mobile_money_android).withIdentifier(5),
                        new PrimaryDrawerItem().withName("Deposer argent").withSelectable(false).withIcon(R.drawable.pay).withIdentifier(5),
                        new DividerDrawerItem(),
                        new PrimaryDrawerItem().withName("Paramètres").withIcon(R.drawable.settings_48px).withIdentifier(7),
                        new PrimaryDrawerItem().withName("Nous contacter").withIcon(R.drawable.ic_contato).withIdentifier(8),
                        new PrimaryDrawerItem().withName("À propos").withIcon(R.drawable.info_48px).withIdentifier(9)
                )
                .withSavedInstance(savedInstanceState)
                .build();

        result.addStickyFooterItem(new PrimaryDrawerItem().withSelectable(false).withName("Déconnexion").withIcon(R.drawable.ic_form_logout).withOnDrawerItemClickListener(new Drawer.OnDrawerItemClickListener() {
            @Override
            public boolean onItemClick(View view, int position, IDrawerItem drawerItem) {
                new MaterialDialog.Builder(DrawerActivity.this)
                        .title("Déconnexion")
                        .content("Voulez-vous, vous déconnectez ?")
                        .cancelable(true)
                        .negativeText("Annuler")
                        .positiveText("Valider")
                        .positiveColorRes(R.color.md_red_600)
                        .onPositive((dialog, which) -> {
                            String numero = UserPrefencesManager.getCurrentUser().getTelephone();
                            UserPrefencesManager.clearAll();

                            UserPrefencesManager.setCurrentUserDisconnect(true);
                            UserPrefencesManager.setUserFirtRun(false);
                            UserPrefencesManager.setUserPhone(Constants.generatePhoneWithoutCode(false, numero));
                            UserPrefencesManager.setUserCountryCodePhone(Constants.generateCode(false, numero));

                            startActivity(new Intent(DrawerActivity.this, LoginActivity.class));
                            finish();
                        })
                        .show();
                return false;
            }
        }));

        if (savedInstanceState == null) {
            setTitle("Maishapay");
            Fragment f = new AccueilFragment();
            getSupportFragmentManager().beginTransaction().replace(R.id.frame_container, f).commit();
        }

        result.setOnDrawerItemClickListener((view, position, drawerItem) -> {
            Fragment mFragment;
            FragmentManager mFragmentManager = getSupportFragmentManager();

            switch (position) {
                case 1:
                    setTitle("Maishapay");
                    mFragment = new AccueilFragment();
                    mFragmentManager.beginTransaction().replace(R.id.frame_container, mFragment).commit();
                    return false;

                case 2:
                    new Handler().postDelayed(() -> startActivity(new Intent(DrawerActivity.this, ProfilActivity.class)), 400);
                    return false;

                case 4:
                    new Handler().postDelayed(() -> startActivity(new Intent(DrawerActivity.this, MerchantActivity.class)), 400);
                    return false;

                /*case 5:
                    new Handler().postDelayed(() -> startActivity(new Intent(DrawerActivity.this, MobileMoneyActivity.class)), 400);
                    return false;*/

                case 5:
                    new Handler().postDelayed(() -> startActivity(new Intent(DrawerActivity.this, MaishapayPayPal.class)), 400);
                    return false;

                case 7:
                    setTitle("Paramètres");
                    mFragment = new SettingsFragment();
                    mFragmentManager.beginTransaction().replace(R.id.frame_container, mFragment).commit();
                    return false;

                case 8:
                    setTitle("Nous contacter");
                    mFragment = new ContactFragment();
                    mFragmentManager.beginTransaction().replace(R.id.frame_container, mFragment).commit();
                    return false;

                case 9:
                    setTitle("A propros");
                    mFragment = new AboutFragment();
                    mFragmentManager.beginTransaction().replace(R.id.frame_container, mFragment).commit();
                    return false;

                default:
                    return false;
            }
        });
    }

    @Override
    public void onStop() {
        super.onStop();

        if (soundManager != null)
            soundManager.stopAll();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_PROFIL) {
            if (resultCode == Activity.RESULT_OK) {
                UserResponse userResponse = UserPrefencesManager.getCurrentUser();
                userProfil.withName(userResponse.getPrenom() + " " + userResponse.getNom()).withEmail(userResponse.getTelephone());
            }
        } else if (requestCode == REQUEST_QRCODE) {
            if (resultCode == Activity.RESULT_OK) {
                if (Constants.containsIgnoreCase(data.getStringExtra(DecoderActivity.EXTRA_QRCODE), "urn:maishapay://data=")) {
                    soundManager.playAsset("sounds/job-done.mp3");
                    String response = data.getStringExtra(DecoderActivity.EXTRA_QRCODE).substring(21, data.getStringExtra(DecoderActivity.EXTRA_QRCODE).length());
                    Intent intent = new Intent(MaishapayApplication.getMaishapayContext(), PaymentWebActivity.class);
                    intent.putExtra(PaymentWebActivity.EXTRA_DATA, response);
                    startActivityForResult(intent, REQUEST_PAYMENT);
                } else if (Constants.containsIgnoreCase(data.getStringExtra(DecoderActivity.EXTRA_QRCODE), "telephone")) {
                    soundManager.playAsset("sounds/job-done.mp3");
                    UserResponse userResponse = new Gson().fromJson(data.getStringExtra(DecoderActivity.EXTRA_QRCODE), UserResponse.class);
                    Intent intent = new Intent(MaishapayApplication.getMaishapayContext(), TransfertCompteActivity.class);
                    intent.putExtra(TransfertCompteActivity.EXTRA_DATA, userResponse.getTelephone());
                    startActivity(intent);
                } else
                    Snacky.builder()
                            .setView(findViewById(R.id.root))
                            .setText("Désolé, vous avez scanné un mauvais Code QR.")
                            .setDuration(Snacky.LENGTH_LONG)
                            .error()
                            .show();
            }
        } else if (requestCode == REQUEST_PAYMENT) {
            if (resultCode == RESULT_TRANSFERT_ERROR) {
                Snacky.builder()
                        .setView(findViewById(R.id.root))
                        .setText("Désolé, une erreur est survenu lors du paiement.")
                        .setDuration(Snacky.LENGTH_LONG)
                        .error()
                        .show();
            }
        } else if (requestCode == REQUEST_TRANSFERT) {
            if (resultCode == RESULT_TRANSFERT_OK) {
                setTitle("Maishapay");
                Fragment f = new AccueilFragment();
                getSupportFragmentManager().beginTransaction().replace(R.id.frame_container, f).commit();
            }

        } else if (requestCode == REQUEST_EPARGNE) {
            if (resultCode == RESULT_EPARGNE_OK) {
                setTitle("Maishapay");
                Fragment f = new AccueilFragment();
                getSupportFragmentManager().beginTransaction().replace(R.id.frame_container, f).commit();
            }
        } else if (requestCode == REQUEST_TRANSFERT_EPARGNE) {
            if (resultCode == RESULT_TRANSFERT_EPARGNE_OK) {
                setTitle("Maishapay");
                Fragment f = new AccueilFragment();
                getSupportFragmentManager().beginTransaction().replace(R.id.frame_container, f).commit();

                Intent intent = new Intent(MaishapayApplication.getMaishapayContext(), EpargneActivity.class);
                startActivity(intent);
            }
        } else if (requestCode == REQUEST_PAIEMENT) {
            if (resultCode == Activity.RESULT_OK) {
                setTitle("Maishapay");
                Fragment f = new AccueilFragment();
                getSupportFragmentManager().beginTransaction().replace(R.id.frame_container, f).commit();
            }
        } else if (requestCode == PICK_SHARE_REQUEST) {
            if (resultCode == Activity.RESULT_OK) {
                UserPrefencesManager.incrementPoints();
            }
        }
    }

    @Override
    public void onBackPressed() {
        //handle the back press :D close the drawer first and if the drawer is closed close the activity

        if (result != null && result.isDrawerOpen()) {
            result.closeDrawer();
        } else if (result != null && !result.getAdapter().getItem(1).isSelected()) {
            result.setSelection(1);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @Override
    public void onScanClicked() {
        Intent intent = new Intent(MaishapayApplication.getMaishapayContext(), DecoderActivity.class);
        intent.putExtra(EXTRA_QR_CODE_FRAGMENT, true);
        startActivityForResult(intent, REQUEST_QRCODE);
    }

    @Override
    public void onTransfertClicked() {
        new MaterialDialog.Builder(this)
                .title("Type de transfert.")
                .items(R.array.option_transfert)
                .itemsCallback((dialog, itemView, position, text) -> {
                    switch (position) {
                        case 0: {
                            Answers.getInstance().logContentView(new ContentViewEvent()
                                    .putContentId("Transfert")
                                    .putContentName("Activité Transfert normal"));

                            Intent intent = new Intent(MaishapayApplication.getMaishapayContext(), TransfertCompteActivity.class);
                            startActivityForResult(intent, REQUEST_TRANSFERT);
                            break;
                        }

                        case 2: {
                            Answers.getInstance().logContentView(new ContentViewEvent()
                                    .putContentId("Transfert")
                                    .putContentName("Activité Transfert vers épargne:"));

                            Intent intent = new Intent(MaishapayApplication.getMaishapayContext(), EpargnePersonnelleActivity.class);
                            intent.putExtra(EXTRA_EPARGNE_DRAWER, true);
                            startActivityForResult(intent, REQUEST_TRANSFERT_EPARGNE);
                            break;
                        }

                        case 3: {
                            Answers.getInstance().logContentView(new ContentViewEvent()
                                    .putContentId("Transfert")
                                    .putContentName("Activité Transfert vers Mobile money:"));

                            Intent intent = new Intent(MaishapayApplication.getMaishapayContext(), MobileMoneyActivity.class);
                            startActivityForResult(intent, REQUEST_TRANSFERT_EPARGNE);
                            break;
                        }

                        default: {
                            Answers.getInstance().logContentView(new ContentViewEvent()
                                    .putContentId("Transfert")
                                    .putContentName("Activité Transfert vers cash"));

                            Snacky.builder()
                                    .setView(findViewById(R.id.root))
                                    .setText("Désolé, cette fonctionnalit n'est pas disponible pour le moment.")
                                    .setDuration(Snacky.LENGTH_LONG)
                                    .warning()
                                    .show();
                            break;
                        }
                    }
                })
                .show();
    }

    @Override
    public void onTransactiosClicked() {
        Answers.getInstance().logContentView(new ContentViewEvent()
                .putContentId("Transactions")
                .putContentName("Activité liste de transactions"));

        Intent intent = new Intent(MaishapayApplication.getMaishapayContext(), TransactionActivity.class);
        startActivityForResult(intent, REQUEST_TRANSACTION);
    }

    @Override
    public void onEpargneClicked() {
        Answers.getInstance().logContentView(new ContentViewEvent()
                .putContentId("Epargne")
                .putContentName("Activité épargne"));

        Intent intent = new Intent(MaishapayApplication.getMaishapayContext(), EpargneActivity.class);
        startActivityForResult(intent, REQUEST_EPARGNE);
    }

    @Override
    public void onPaiementClicked() {
        Answers.getInstance().logContentView(new ContentViewEvent()
                .putContentId("Paiement")
                .putContentName("Activité Paiement"));

        Intent intent = new Intent(MaishapayApplication.getMaishapayContext(), PaiementActivity.class);
        startActivityForResult(intent, REQUEST_PAIEMENT);
    }

    @Override
    public void recreateFragment() {
        setTitle("Maishapay");
        Fragment f = new AccueilFragment();
        getSupportFragmentManager().beginTransaction().replace(R.id.frame_container, f).commit();
    }

    private void logUser() {
        // TODO: Use the current user's information
        // You can call any combination of these three methods
        if (UserPrefencesManager.getCurrentUser() != null) {
            Crashlytics.setUserIdentifier(UserPrefencesManager.getCurrentUser().getTelephone());
            Crashlytics.setUserEmail(UserPrefencesManager.getCurrentUser().getEmail());
            Crashlytics.setUserName(UserPrefencesManager.getCurrentUser().getPrenom() + " " + UserPrefencesManager.getCurrentUser().getNom());
        }

        Answers.getInstance().logContentView(new ContentViewEvent()
                .putContentId("Tableau de bord"));
    }

    @Override
    public void getResult() {
        Intent share = new Intent(Intent.ACTION_SEND);
        share.setType("text/plain");
        share.addFlags(Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET);

        share.putExtra(Intent.EXTRA_SUBJECT, "Je t'invite à utiliser Maishapay");
        share.putExtra(Intent.EXTRA_TEXT, "Voici Maishapay, mon portefeuille éléctronique. Par ici : https://play.google.com/store/apps/details?id=com.maishapay");

        startActivityForResult(Intent.createChooser(share, "Inviter un(e) ami(e)"), PICK_SHARE_REQUEST);
    }
}
