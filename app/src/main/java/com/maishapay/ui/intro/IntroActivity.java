package com.maishapay.ui.intro;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;

import com.crashlytics.android.Crashlytics;
import com.maishapay.R;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.ui.activities.DrawerActivity;
import com.maishapay.ui.activities.LoginActivity;
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

        FancyWalkthroughCard fancywalkthroughCard1 = new FancyWalkthroughCard("Bienvenue chez Maishapay.", "Votre portefeuille électronique.", R.drawable.digital_business);
        FancyWalkthroughCard fancywalkthroughCard2 = new FancyWalkthroughCard("Facilitez-vous la vie.", "Déposer et rétirer de l'argent partout où vous êtes.", R.drawable.digital_wallets);
        FancyWalkthroughCard fancywalkthroughCard3 = new FancyWalkthroughCard("Envoyez et recévez de l'argent.", "Partout en RDC et ailleurs à des frais abordable.", R.drawable.digital_channels);
        FancyWalkthroughCard fancywalkthroughCard4 = new FancyWalkthroughCard("Achetez et vendez partout", "Payez vos facture, dans le restaurant et d'autres un sites web.", R.drawable.mobile_payments);
        FancyWalkthroughCard fancywalkthroughCard5 = new FancyWalkthroughCard("Epargner votre argent.", "L'épargne est plus facile chez nous.", R.drawable.mobile_banking);


        fancywalkthroughCard1.setBackgroundColor(R.color.white);
        fancywalkthroughCard1.setIconLayoutParams(80,80,0,0,0,0);
        fancywalkthroughCard2.setBackgroundColor(R.color.white);
        fancywalkthroughCard2.setIconLayoutParams(80,80,0,0,0,0);
        fancywalkthroughCard3.setBackgroundColor(R.color.white);
        fancywalkthroughCard3.setIconLayoutParams(80,80,0,0,0,0);
        fancywalkthroughCard4.setBackgroundColor(R.color.white);
        fancywalkthroughCard4.setIconLayoutParams(80,80,0,0,0,0);
        fancywalkthroughCard5.setBackgroundColor(R.color.white);
        fancywalkthroughCard5.setIconLayoutParams(80,80,0,0,0,0);

        List<FancyWalkthroughCard> pages = new ArrayList<>();

        pages.add(fancywalkthroughCard1);
        pages.add(fancywalkthroughCard2);
        pages.add(fancywalkthroughCard3);
        pages.add(fancywalkthroughCard4);
        pages.add(fancywalkthroughCard5);

        for (FancyWalkthroughCard page : pages) {
            page.setTitleColor(R.color.black);
            page.setDescriptionColor(R.color.black);
        }

        setFinishButtonTitle("Connectez-vous.");
        showNavigationControls(true);
        setImageBackground(R.drawable.home_background);
        setInactiveIndicatorColor(R.color.grey_600);
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
