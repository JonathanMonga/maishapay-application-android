/*
 * Copyright (C) 2017 grandcentrix GmbH
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.maishapay.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.StrictMode;
import android.support.multidex.MultiDex;
import android.support.multidex.MultiDexApplication;
import android.support.v7.app.AppCompatDelegate;
import android.util.Log;

import com.github.ismaeltoe.osms.library.Osms;
import com.github.ismaeltoe.osms.library.entities.CredentialsEntity;
import com.github.ismaeltoe.osms.library.services.CredentialsService;
import com.github.ismaeltoe.osms.library.services.MessagingService;
import com.maishapay.R;
import com.maishapay.model.client.MaishapayClient;
import com.parse.Parse;
import com.pixplicity.easyprefs.library.Prefs;

import org.alfonz.media.SoundManager;

import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;
import uk.co.chrisjenx.calligraphy.CalligraphyConfig;

import static com.maishapay.util.Constants.ACCESS_TOKEN;
import static com.maishapay.util.Constants.CLIENT_ID;
import static com.maishapay.util.Constants.CLIENT_SECRET;

public class MaishapayApplication extends MultiDexApplication {

    private static MaishapayApplication application;
    private MaishapayClient maishapayClient;
    private SoundManager mSoundManager;
    private Osms osms;
    private MessagingService messagingService;
    private CredentialsService credentialsService;

    @Override
    public void onCreate() {
        super.onCreate();
        application = this;

        osms = new Osms(CLIENT_ID, CLIENT_SECRET);
        osms.setAccessToken(ACCESS_TOKEN);

        credentialsService = osms.credentials();

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

        messagingService = osms.messaging();

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            // Kitkat and lower has a bug that can cause in correct strict mode
            // warnings about expected activity counts
            enableStrictMode();
        }

        maishapayClient = MaishapayClient.getInstance();
        mSoundManager = new SoundManager(application, SoundManager.PLAY_SINGLE);

        Parse.initialize(new Parse.Configuration.Builder(this)
                        .applicationId("OB8xFxFGzmeyntdEjd0hKvcRYT52iK4WY4joDieg")
                        .clientKey("o1O14naeiSc5OiKKpRgMZCyVYfm0qce7uRCIVQa5")
                        .server("https://parseapi.back4app.com")
                        .build());
        iniPreference();
        load();
    }

    public Osms getOsms() {
        return osms;
    }

    public CredentialsService getCredentialsService() {
        return credentialsService;
    }

    public MessagingService getMessagingService() {
        return messagingService;
    }

    private void iniPreference() {
        new Prefs.Builder()
                .setContext(this)
                .setMode(ContextWrapper.MODE_PRIVATE)
                .setPrefsName(getPackageName())
                .setUseDefaultSharedPreference(true)
                .build();
    }

    @Override
    protected void attachBaseContext(Context base) {
        MultiDex.install(base);
        super.attachBaseContext(base);
    }

    public static MaishapayApplication getMaishapayContext() {
        return application;
    }

    public MaishapayClient getMaishapayClient() {
        return maishapayClient;
    }

    private void load() {
        Observable.create(new ObservableOnSubscribe<Integer>() {
            @Override
            public void subscribe(ObservableEmitter<Integer> emitter) throws Exception {
                CalligraphyConfig.initDefault(new CalligraphyConfig.Builder()
                        .setDefaultFontPath("fonts/Roboto-Light.ttf")
                        .setFontAttrId(R.attr.fontPath)
                        .build()
                );

                AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
                emitter.onComplete();
            }
        }).observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.newThread())
                .subscribe();
    }

    public SoundManager getmSoundManager() {
        return mSoundManager;
    }

    public void enableStrictMode() {
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder()
                .detectAll()
                .penaltyLog()
                .penaltyDeath()
                .build());

        StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder()
                .detectAll()
                .penaltyLog()
                .penaltyDeath()
                .build());
    }
}
