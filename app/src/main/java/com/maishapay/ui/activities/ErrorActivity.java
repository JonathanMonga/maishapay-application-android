package com.maishapay.ui.activities;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;

import com.maishapay.R;
import com.maishapay.util.Constants;

import butterknife.ButterKnife;
import butterknife.OnClick;
import cat.ereza.customactivityoncrash.CustomActivityOnCrash;
import cat.ereza.customactivityoncrash.config.CaocConfig;

public class ErrorActivity extends AppCompatActivity {

    private CaocConfig config;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //Constants.initStatusBar(this);
        setContentView(R.layout.activity_error);
        ButterKnife.bind(this);

        config = CustomActivityOnCrash.getConfigFromIntent(getIntent());

        if (config == null) {
            finish();
            return;
        }
    }

    @OnClick(R.id.BTN_Error)
    public void restart_buttonClicked(){
        CustomActivityOnCrash.restartApplication(this, config);
    }
}
