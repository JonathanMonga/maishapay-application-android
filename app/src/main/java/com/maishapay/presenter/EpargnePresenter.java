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
import com.maishapay.model.client.response.EpargneResponse;
import com.maishapay.model.client.response.SoldeEpargneResponse;
import com.maishapay.model.domain.UserDataPreference;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.view.EpargneView;

import net.grandcentrix.thirtyinch.TiPresenter;
import net.grandcentrix.thirtyinch.rx2.RxTiPresenterDisposableHandler;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;


public class EpargnePresenter extends TiPresenter<EpargneView> {

    private RxTiPresenterDisposableHandler disposableHandler = new RxTiPresenterDisposableHandler(this);
    private MaishapayClient maishapayClient;

    @Override
    protected void onCreate() {
        super.onCreate();

        maishapayClient = MaishapayApplication.getMaishapayContext().getMaishapayClient();
    }

    public void soldeEpargne(String userPhone) {
        disposableHandler.manageDisposable(maishapayClient.solde_epargne_perso(userPhone)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<SoldeEpargneResponse>(getView()) {
                    @Override
                    protected void onSuccess(SoldeEpargneResponse response) {
                        if(isViewAttached()) {
                            getView().enabledControls(true);
                            getView().finishToLoadSolde(response);
                        }
                    }
                }));
    }

    public void hasEpargneCompte(String userPhone) {
        disposableHandler.manageDisposable(maishapayClient.transfert_epargne("p", userPhone, "USD", "1000000")
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<EpargneResponse>(getView()) {
                    @Override
                    protected void onSuccess(EpargneResponse response) {
                        if (response.getResultat() == 0) {
                            if(isViewAttached()) {
                                UserDataPreference userDataPreference = UserPrefencesManager.getUserDataPreference();
                                userDataPreference.setHasEpargneCompte(false);
                                UserPrefencesManager.setUserDataPreference(userDataPreference);
                                getView().finishToLoadTestCompte();
                            }
                        } else {
                            if(isViewAttached()) {
                                UserDataPreference userDataPreference = UserPrefencesManager.getUserDataPreference();
                                userDataPreference.setHasEpargneCompte(true);
                                UserPrefencesManager.setUserDataPreference(userDataPreference);
                                getView().finishToLoadTestCompte();
                            }
                        }
                    }
                }));
    }
}
