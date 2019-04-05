package com.maishapay.ui.intro;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;

import com.crashlytics.android.Crashlytics;
import com.github.paolorotolo.appintro.AppIntro;
import com.maishapay.R;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.ui.activities.DrawerActivity;
import com.maishapay.ui.activities.LoginActivity;
import com.maishapay.ui.fragment.IntroFragmentOne;
import com.maishapay.ui.fragment.IntroFragmentTree;
import com.maishapay.ui.fragment.IntroFragmentTwo;
import com.shashank.sony.fancywalkthroughlib.FancyWalkthroughActivity;
import com.shashank.sony.fancywalkthroughlib.FancyWalkthroughCard;

import java.util.ArrayList;
import java.util.List;

import io.fabric.sdk.android.Fabric;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class IntroActivity extends FancyWalkthroughActivity {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Fabric.with(this, new Crashlytics());

        logUser();

        if(! UserPrefencesManager.getUserFirtRun()) {
            startActivity(new Intent(this, LoginActivity.class));
            finish();
        } else if(UserPrefencesManager.getCurentUserLoginSuccess()) {
            startActivity(new Intent(this, DrawerActivity.class));
            finish();
        }

        FancyWalkthroughCard fancywalkthroughCard1 = new FancyWalkthroughCard("Bienvenue chez Maishapay.", "Votre portefeuille électronique.");
        FancyWalkthroughCard fancywalkthroughCard2 = new FancyWalkthroughCard("Facilitez-vous la vie.", "Déposer et rétirer de l'argent partout où vous êtes.");
        FancyWalkthroughCard fancywalkthroughCard3 = new FancyWalkthroughCard("Envoyer et recévez de l'argent.", "Partout en RDC et ailleurs à des frais abordable.");
        FancyWalkthroughCard fancywalkthroughCard4 = new FancyWalkthroughCard("Achetez et vendez partout", "Payez vos facture, dans le restaurant et d'autres un sites web.");

        fancywalkthroughCard1.setBackgroundColor(R.color.white);
        fancywalkthroughCard1.setIconLayoutParams(300,300,0,0,0,0);
        fancywalkthroughCard2.setBackgroundColor(R.color.white);
        fancywalkthroughCard2.setIconLayoutParams(300,300,0,0,0,0);
        fancywalkthroughCard3.setBackgroundColor(R.color.white);
        fancywalkthroughCard3.setIconLayoutParams(300,300,0,0,0,0);
        fancywalkthroughCard4.setBackgroundColor(R.color.white);
        fancywalkthroughCard4.setIconLayoutParams(300,300,0,0,0,0);

        List<FancyWalkthroughCard> pages = new ArrayList<>();

        pages.add(fancywalkthroughCard1);
        pages.add(fancywalkthroughCard2);
        pages.add(fancywalkthroughCard3);
        pages.add(fancywalkthroughCard4);

        for (FancyWalkthroughCard page : pages) {
            page.setTitleColor(R.color.black);
            page.setDescriptionColor(R.color.black);
        }

        setFinishButtonTitle("Commencez...");
        showNavigationControls(true);
        //setColorBackground(R.color.colorGreen);
        setImageBackground(R.drawable.background1);
        setInactiveIndicatorColor(R.color.grey_600);
        //setActiveIndicatorColor(R.color.colorGreen);
        setOnboardPages(pages);

    }

    @Override
    public void onFinishButtonPressed() {
        UserPrefencesManager.setUserFirtRun(false);
        startActivity(new Intent(IntroActivity.this, LoginActivity.class));
        finish();
    }

    private void logUser() {
        // TODO: Use the current user's information
        // You can call any combination of these three methods
        if(UserPrefencesManager.getCurrentUser() != null) {
            Crashlytics.setUserIdentifier(UserPrefencesManager.getCurrentUser().getTelephone());
            Crashlytics.setUserEmail(UserPrefencesManager.getCurrentUser().getEmail());
            Crashlytics.setUserName(UserPrefencesManager.getCurrentUser().getPrenom() + " " + UserPrefencesManager.getCurrentUser().getNom());
        }
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
