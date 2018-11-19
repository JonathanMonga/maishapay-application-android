package com.maishapay.ui.activities;

import android.app.Activity;
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
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

import com.afollestad.materialdialogs.DialogAction;
import com.afollestad.materialdialogs.MaterialDialog;
import com.maishapay.R;
import com.maishapay.model.client.response.UserResponse;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.ui.fragment.AboutFragment;
import com.maishapay.ui.fragment.AccueilFragment;
import com.maishapay.ui.fragment.ContactFragment;
import com.maishapay.ui.fragment.SettingsFragment;
import com.mikepenz.materialdrawer.AccountHeader;
import com.mikepenz.materialdrawer.AccountHeaderBuilder;
import com.mikepenz.materialdrawer.Drawer;
import com.mikepenz.materialdrawer.DrawerBuilder;
import com.mikepenz.materialdrawer.model.DividerDrawerItem;
import com.mikepenz.materialdrawer.model.PrimaryDrawerItem;
import com.mikepenz.materialdrawer.model.ProfileDrawerItem;
import com.mikepenz.materialdrawer.model.interfaces.IDrawerItem;

import java.util.Arrays;
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import de.mateware.snacky.Snacky;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class DrawerActivity extends AppCompatActivity {
    public static boolean is_running = false;

    private Drawer result = null;

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    private ProfileDrawerItem userProfil;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_drawer);
        ButterKnife.bind(this);

        setSupportActionBar(toolbar);

        is_running = true;

        userProfil = new ProfileDrawerItem();
        userProfil
                .withIcon(R.drawable.maishapay_photo_profil)
                .withIdentifier(1)
                .withOnDrawerItemClickListener(new Drawer.OnDrawerItemClickListener() {
                    @Override
                    public boolean onItemClick(View view, int position, IDrawerItem drawerItem) {
                        startActivityForResult(new Intent(DrawerActivity.this, UpdateProfilActivity.class), 1);
                        return false;
                    }
                });

        // Create a few sample profile
        // NOTE you have to define the loader logic too. See the CustomApplication for more details
        UserResponse userResponse = UserPrefencesManager.getCurrentUser();
        userProfil.withName(userResponse.getPrenom() + " " + userResponse.getNom()).withEmail(userResponse.getTelephone());

        // Create the AccountHeader
        AccountHeader headerResult = new AccountHeaderBuilder()
                .withTextColor(Color.WHITE)
                .withActivity(this)
                .withHeaderBackground(R.drawable.fastpro)
                .withTranslucentStatusBar(true)
                .addProfiles(userProfil)
                .withSavedInstance(savedInstanceState)
                .build();

        result = new DrawerBuilder()
                .withSelectedItemByPosition(1)
                .withSavedInstance(savedInstanceState)
                .withTranslucentStatusBar(false)
                .withDisplayBelowStatusBar(false)
                .withShowDrawerOnFirstLaunch(true)
                .withActivity(this)
                .withHasStableIds(true)
                .withToolbar(toolbar)
                .withAccountHeader(headerResult)
                .addDrawerItems(
                        new PrimaryDrawerItem().withName("Accueil").withIcon(R.drawable.bank).withIdentifier(1),
                        new PrimaryDrawerItem().withName("Transactions").withSelectable(false).withIcon(R.drawable.transaction).withIdentifier(2),
                        new PrimaryDrawerItem().withName("Mon profil").withSelectable(false).withIcon(R.drawable.profil).withIdentifier(3),
                        new DividerDrawerItem(),
                        new PrimaryDrawerItem().withName("Point Fastpay").withSelectable(false).withIcon(R.drawable.point).withIdentifier(5),
                        new PrimaryDrawerItem().withName("Mobile money").withSelectable(false).withIcon(R.drawable.mobile_money_android).withIdentifier(6),
                        new PrimaryDrawerItem().withName("Deposer argent").withSelectable(false).withIcon(R.drawable.pay).withIdentifier(7),
                        new PrimaryDrawerItem().withName("Scan card").withSelectable(false).withIcon(R.drawable.scann).withIdentifier(8),
                        new DividerDrawerItem(),
                        new PrimaryDrawerItem().withName("Paramètres").withIcon(R.drawable.settings_48px).withIdentifier(10),
                        new PrimaryDrawerItem().withName("Nous contacter").withIcon(R.drawable.ic_contato).withIdentifier(11),
                        new PrimaryDrawerItem().withName("À propos").withIcon(R.drawable.info_48px).withIdentifier(12)
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
                        .onNegative(new MaterialDialog.SingleButtonCallback() {
                            @Override
                            public void onClick(@NonNull MaterialDialog dialog, @NonNull DialogAction which) {

                            }
                        }).onPositive(new MaterialDialog.SingleButtonCallback() {
                    @Override
                    public void onClick(@NonNull MaterialDialog dialog, @NonNull DialogAction which) {
                        String userPhone = UserPrefencesManager.getCurrentUser().getTelephone().substring(4, UserPrefencesManager.getCurrentUser().getTelephone().length());
                        int userCodePhone = Integer.valueOf(UserPrefencesManager.getCurrentUser().getTelephone().substring(1, 4));

                        UserPrefencesManager.clearAll();

                        UserPrefencesManager.setUserFirtRun(false);
                        UserPrefencesManager.setUserPhone(userPhone);
                        UserPrefencesManager.setUserCountryCodePhone(userCodePhone);

                        UserPrefencesManager.setCurrentUserDisconnect(true);

                        startActivity(new Intent(DrawerActivity.this, LoginActivity.class));
                        finish();
                    }
                })
                        .show();
                return false;
            }
        }));

        if (Build.VERSION.SDK_INT >= 19 && Build.VERSION.SDK_INT < 21) {
            setWindowFlag(this, WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS, true);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_STABLE | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            setWindowFlag(this, WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS, false);
            getWindow().setStatusBarColor(Color.TRANSPARENT);
        }

        if (Build.VERSION.SDK_INT >= 19) {
            result.getDrawerLayout().setFitsSystemWindows(false);
        }

        if (savedInstanceState == null) {
            setTitle("Maishapay");
            Fragment f = new AccueilFragment();
            getSupportFragmentManager().beginTransaction().replace(R.id.frame_container, f).commit();
        }

        result.setOnDrawerItemClickListener(new Drawer.OnDrawerItemClickListener() {
            @Override
            public boolean onItemClick(View view, int position, IDrawerItem drawerItem) {
                Fragment mFragment;
                FragmentManager mFragmentManager = getSupportFragmentManager();

                switch (position) {
                    case 1:
                        setTitle("Maishapay");
                        mFragment = new AccueilFragment();
                        mFragmentManager.beginTransaction().replace(R.id.frame_container, mFragment).commit();
                        return false;

                    case 2:
                        new Handler().postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                startActivity(new Intent(DrawerActivity.this, TransactionActivity.class));
                            }
                        }, 400);
                        return false;

                    case 3:
                        new Handler().postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                startActivity(new Intent(DrawerActivity.this, ProfilActivity.class));
                            }
                        }, 400);
                        return false;

                    case 5:
                        new Handler().postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                startActivity(new Intent(DrawerActivity.this, MapsActivity.class));
                            }
                        }, 400);
                        return false;

                    case 6:
                        List<String> strings = Arrays.asList(getResources().getStringArray(R.array.option_country_code));
                        String codePhone = UserPrefencesManager.getCurrentUser().getTelephone().substring(0, 4);

                        if (strings.contains(codePhone))
                            new Handler().postDelayed(new Runnable() {
                                @Override
                                public void run() {
                                    startActivity(new Intent(DrawerActivity.this, MobileMoneyActivity.class));
                                }
                            }, 400);
                        else
                            new MaterialDialog.Builder(DrawerActivity.this)
                                    .title("Remarque")
                                    .iconRes(R.drawable.ic_informacao_azul)
                                    .content("Désolé cette fonctionnalité n'est disponible dans votre pays")
                                    .show();
                        return false;

                    case 7:
                        new Handler().postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                startActivity(new Intent(DrawerActivity.this, MaishapayPayPal.class));
                            }
                        }, 400);
                        return false;

                    case 8:
                        Snacky.builder()
                                .setView(findViewById(R.id.root))
                                .setText("Cette fonctionnalité sera bientôt disponible!")
                                .setDuration(Snacky.LENGTH_LONG)
                                .error()
                                .show();
                        return false;

                    case 10:
                        setTitle("Paramètres");
                        mFragment = new SettingsFragment();
                        mFragmentManager.beginTransaction().replace(R.id.frame_container, mFragment).commit();
                        return false;

                    case 11:
                        setTitle("Nous contacter");
                        mFragment = new ContactFragment();
                        mFragmentManager.beginTransaction().replace(R.id.frame_container, mFragment).commit();
                        return false;

                    case 12:
                        setTitle("A propros");
                        mFragment = new AboutFragment();
                        mFragmentManager.beginTransaction().replace(R.id.frame_container, mFragment).commit();
                        return false;

                    default:
                        return false;
                }
            }
        });
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        is_running = false;
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1) {
            if (resultCode == Activity.RESULT_OK) {
                UserResponse userResponse = UserPrefencesManager.getCurrentUser();
                userProfil.withName(userResponse.getPrenom() + " " + userResponse.getNom()).withEmail(userResponse.getTelephone());
            }
        }
    }

    public static void setWindowFlag(Activity activity, final int bits, boolean on) {
        Window win = activity.getWindow();
        WindowManager.LayoutParams winParams = win.getAttributes();
        if (on) {
            winParams.flags |= bits;
        } else {
            winParams.flags &= ~bits;
        }
        win.setAttributes(winParams);
    }

    @Override
    public void onBackPressed() {
        //handle the back press :D close the drawer first and if the drawer is closed close the activity

        if (result != null && result.isDrawerOpen()) {
            result.closeDrawer();
        } else {
            super.onBackPressed();
        }
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
