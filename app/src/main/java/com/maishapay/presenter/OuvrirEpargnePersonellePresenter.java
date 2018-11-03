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
import com.maishapay.view.OuvrirEpargnePersonelleView;

import net.grandcentrix.thirtyinch.TiPresenter;
import net.grandcentrix.thirtyinch.rx2.RxTiPresenterDisposableHandler;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;


public class OuvrirEpargnePersonellePresenter extends TiPresenter<OuvrirEpargnePersonelleView> {

    private RxTiPresenterDisposableHandler disposableHandler = new RxTiPresenterDisposableHandler(this);
    private MaishapayClient maishapayClient;

    @Override
    protected void onCreate() {
        super.onCreate();

        maishapayClient = MaishapayApplication.getMaishapayContext().getMaishapayClient();
    }

    public void ouvrirEpargne(String userPhone, String date_cloture, String device, String code_secret) {
        disposableHandler.manageDisposable(maishapayClient.creation_compte_epargne_perso(userPhone, date_cloture, device, code_secret)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<Integer>(getView()) {
                    @Override
                    protected void onSuccess(Integer response) {
                        if (response == 0) {
                            if (isViewAttached()) {
                                getView().showOuvrirEpargnePersonelleError(response);
                            }
                        } else {
                            if (isViewAttached()) {
                                getView().enabledControls(true);
                                getView().finishToOuvrir(response);
                            }
                        }
                    }
                }));
    }
}
