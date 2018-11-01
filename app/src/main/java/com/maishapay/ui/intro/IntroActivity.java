package com.maishapay.ui.intro;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;

import com.github.paolorotolo.appintro.AppIntro;
import com.github.paolorotolo.appintro.AppIntroFragment;
import com.github.paolorotolo.appintro.model.SliderPage;
import com.maishapay.R;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.ui.activities.DrawerActivity;
import com.maishapay.ui.activities.LoginActivity;

import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class IntroActivity extends AppIntro {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        if(UserPrefencesManager.getUserFirtRun())
            startActivity(new Intent(this, LoginActivity.class));
        else if(UserPrefencesManager.getCurentUserLoginSuccess())
            startActivity(new Intent(this, DrawerActivity.class));
        else
            UserPrefencesManager.setUserFirtRun();

        SliderPage sliderPage1 = new SliderPage();
        sliderPage1.setTitle("Bienvenue chez Maishapay");
        sliderPage1.setImageDrawable(R.drawable.mpay);
        sliderPage1.setBgColor(Color.TRANSPARENT);
        addSlide(AppIntroFragment.newInstance(sliderPage1));

        SliderPage sliderPage2 = new SliderPage();
        sliderPage2.setTitle("Transfert d'argent.");
        sliderPage2.setDescription("Envoyez et recevez de l'argent partout où vous êtes, et à moindre frais.");
        sliderPage2.setImageDrawable(R.drawable.ic_bank);
        sliderPage2.setBgColor(Color.TRANSPARENT);
        addSlide(AppIntroFragment.newInstance(sliderPage2));

        SliderPage sliderPage3 = new SliderPage();
        sliderPage3.setTitle("Achat et vente");
        sliderPage3.setDescription("Effectuer vos achats ou vos ventes avec votre compte Maishapay.");
        sliderPage3.setImageDrawable(R.drawable.ic_shopping_bag);
        sliderPage3.setBgColor(Color.TRANSPARENT);
        addSlide(AppIntroFragment.newInstance(sliderPage3));

        SliderPage sliderPage4 = new SliderPage();
        sliderPage4.setTitle("Compte d'épargne.");
        sliderPage4.setDescription("Vous voulez épargner ? Alors faites-le sur Maishapay sans frais.");
        sliderPage4.setImageDrawable(R.drawable.ic_piggy_bank);
        sliderPage4.setBgColor(Color.TRANSPARENT);
        addSlide(AppIntroFragment.newInstance(sliderPage4));
    }

    @Override
    public void onSkipPressed(Fragment currentFragment) {
        super.onSkipPressed(currentFragment);
        startActivity(new Intent(IntroActivity.this, LoginActivity.class));
        finish();
    }

    @Override
    public void onDonePressed(Fragment currentFragment) {
        super.onDonePressed(currentFragment);
        startActivity(new Intent(IntroActivity.this, LoginActivity.class));
        finish();
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
