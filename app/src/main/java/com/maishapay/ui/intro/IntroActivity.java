package com.maishapay.ui.intro;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;

import com.github.paolorotolo.appintro.AppIntro;
import com.maishapay.R;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.ui.activities.DrawerActivity;
import com.maishapay.ui.activities.LoginActivity;
import com.maishapay.ui.fragment.IntroFragmentOne;
import com.maishapay.ui.fragment.IntroFragmentTree;
import com.maishapay.ui.fragment.IntroFragmentTwo;

import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public class IntroActivity extends AppIntro {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        if(! UserPrefencesManager.getUserFirtRun()) {
            startActivity(new Intent(this, LoginActivity.class));
            finish();
        } else if(UserPrefencesManager.getCurentUserLoginSuccess()) {
            startActivity(new Intent(this, DrawerActivity.class));
            finish();
        }

        showSeparator(false);
        setNextArrowColor(getResources().getColor(R.color.md_orange_700));
        setColorSkipButton(getResources().getColor(R.color.md_orange_700));
        setColorDoneText(getResources().getColor(R.color.md_orange_700));
        setIndicatorColor(getResources().getColor(R.color.md_orange_700), getResources().getColor(R.color.md_black_1000));

        addSlide(new IntroFragmentOne());
        addSlide(new IntroFragmentTwo());
        addSlide(new IntroFragmentTree());
    }

    @Override
    public void onSkipPressed(Fragment currentFragment) {
        super.onSkipPressed(currentFragment);
        UserPrefencesManager.setUserFirtRun(false);
        startActivity(new Intent(IntroActivity.this, LoginActivity.class));
        finish();
    }

    @Override
    public void onDonePressed(Fragment currentFragment) {
        super.onDonePressed(currentFragment);
        UserPrefencesManager.setUserFirtRun(false);
        startActivity(new Intent(IntroActivity.this, LoginActivity.class));
        finish();
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }
}
