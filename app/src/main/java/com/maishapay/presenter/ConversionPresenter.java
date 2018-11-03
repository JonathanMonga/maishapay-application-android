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

package com.maishapay.presenter;

import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.client.MaishapayClient;
import com.maishapay.model.client.api.CallbackWrapper;
import com.maishapay.model.domain.UserDataPreference;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.util.LogCat;
import com.maishapay.view.ContactView;
import com.maishapay.view.ConversionView;

import net.grandcentrix.thirtyinch.TiPresenter;
import net.grandcentrix.thirtyinch.rx2.RxTiPresenterDisposableHandler;

import java.math.BigDecimal;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;


public class ConversionPresenter extends TiPresenter<ConversionView> {

    private RxTiPresenterDisposableHandler disposableHandler = new RxTiPresenterDisposableHandler(this);
    private MaishapayClient maishapayClient;

    @Override
    protected void onCreate() {
        super.onCreate();

        maishapayClient = MaishapayApplication.getMaishapayContext().getMaishapayClient();
    }

    public void conversion(final String montant, final String monnaie) {
        disposableHandler.manageDisposable(maishapayClient.taux_du_jour()
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<Double>(getView()) {
                    @Override
                    protected void onSuccess(Double response) {
                        if(monnaie.equals("USD")) {
                            if(isViewAttached()) {
                                getView().enabledControls(true);
                                getView().finishToConversion(BigDecimal.valueOf(response).multiply(BigDecimal.valueOf(Double.valueOf(montant))).doubleValue() + " FC");
                            }
                        } else {
                            if(isViewAttached()) {
                                getView().enabledControls(true);
                                getView().finishToConversion(BigDecimal.valueOf(Double.valueOf(montant)).divide(BigDecimal.valueOf(response)).doubleValue() + " USD");
                            }
                        }
                    }
                }));
    }
}
