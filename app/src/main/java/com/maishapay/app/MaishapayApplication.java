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
import android.support.multidex.MultiDex;
import android.support.multidex.MultiDexApplication;
import android.support.v7.app.AppCompatDelegate;

import com.maishapay.R;
import com.maishapay.model.client.MaishapayClient;
import com.pixplicity.easyprefs.library.Prefs;

import org.alfonz.media.SoundManager;

import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import uk.co.chrisjenx.calligraphy.CalligraphyConfig;

public class MaishapayApplication extends MultiDexApplication {

    private static MaishapayApplication application;
    private MaishapayClient maishapayClient;
    private SoundManager mSoundManager;

    @Override
    public void onCreate() {
        super.onCreate();
        application = this;
        maishapayClient = MaishapayClient.getInstance();
        mSoundManager = new SoundManager(application, SoundManager.PLAY_SINGLE);

//        CaocConfig.Builder.create()
//                .backgroundMode(CaocConfig.BACKGROUND_MODE_SILENT)
//                .enabled(true)
//                .showErrorDetails(false)
//                .showRestartButton(true)
//                .trackActivities(true)
//                .logErrorOnRestart(false)
//                .restartActivity(DrawerActivity.class)
//                .errorActivity(ErrorActivity.class)
//                .apply();

        iniPreference();
        load();
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
}
