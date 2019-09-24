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
import com.maishapay.model.client.response.SoldeResponse;
import com.maishapay.model.client.response.TransactionItemResponse;
import com.maishapay.model.client.response.TransactionResponse;
import com.maishapay.model.domain.UserDataPreference;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.view.AccueilView;

import net.grandcentrix.thirtyinch.TiPresenter;
import net.grandcentrix.thirtyinch.rx2.RxTiPresenterDisposableHandler;

import io.reactivex.android.schedulers.AndroidSchedulers;

import io.reactivex.functions.BiFunction;
import io.reactivex.schedulers.Schedulers;

public class AccueilPresenter extends TiPresenter<AccueilView> {

    private RxTiPresenterDisposableHandler disposableHandler = new RxTiPresenterDisposableHandler(this);
    private MaishapayClient maishapayClient;

    @Override
    protected void onCreate() {
        super.onCreate();

        maishapayClient = MaishapayApplication.getMaishapayContext().getMaishapayClient();
    }

    public void solde(String userPhone) {
        disposableHandler.manageDisposable(maishapayClient.solde(userPhone).zipWith(maishapayClient.rapport(userPhone), new BiFunction<SoldeResponse, TransactionResponse, UserDataPreference>() {
            UserDataPreference userDataPreference;

            @Override
            public UserDataPreference apply(SoldeResponse soldeResponse, TransactionResponse transactionResponse) {
                float envoiFrancs = 0;
                float recuFrancs = 0;
                float envoiDollars = 0;
                float recuDollars = 0;

                if (transactionResponse != null && transactionResponse.getResultat() != 0) {
                    for (TransactionItemResponse transactionItemResponse : transactionResponse.getTransactionItemResponses()) {
                        if (transactionItemResponse.getType_jrn().equals("e")) {
                            if (transactionItemResponse.getMonnaie_jrn().equals("FC")) {
                                String temp = transactionItemResponse.getMontant_jrn().replace(" ", "");
                                envoiFrancs += Float.valueOf(temp);
                            } else if (transactionItemResponse.getMonnaie_jrn().equals("USD")) {
                                String temp = transactionItemResponse.getMontant_jrn().replace(" ", "");
                                envoiDollars += Float.valueOf(temp);
                            }
                        } else {
                            if (transactionItemResponse.getMonnaie_jrn().equals("FC")) {
                                String temp = transactionItemResponse.getMontant_jrn().replace(" ", "");
                                recuFrancs += Float.valueOf(temp);
                            } else if (transactionItemResponse.getMonnaie_jrn().equals("USD")) {
                                String temp = transactionItemResponse.getMontant_jrn().replace(" ", "");
                                recuDollars += Float.valueOf(temp);
                            }
                        }
                    }
                }

                userDataPreference = new UserDataPreference();
                userDataPreference.setSoldeFrancs(soldeResponse.getFrancCongolais());
                userDataPreference.setSoldeDollars(soldeResponse.getDollard());

                userDataPreference.setEnvoiFrancs(envoiFrancs);
                userDataPreference.setRecuFrancs(recuFrancs);

                userDataPreference.setEnvoiDollars(envoiDollars);
                userDataPreference.setRecuDollars(recuDollars);

                return userDataPreference;
            }
        }).observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<UserDataPreference>(getView()) {
                    @Override
                    protected void onSuccess(UserDataPreference response) {
                        if (isViewAttached()) {
                            UserPrefencesManager.setUserDataPreference(response);
                            getView().enabledControls(true);
                            getView().finishToLoadSoldeAndRappot(response);
                        }
                    }
                }));
    }

    public void taux() {
        disposableHandler.manageDisposable(maishapayClient.taux_du_jour()
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<Float>(getView()) {
                    @Override
                    protected void onSuccess(Float response) {
                        if (isViewAttached()) {
                            UserDataPreference userDataPreference = UserPrefencesManager.getUserDataPreference();
                            userDataPreference.setTaux(response);
                            UserPrefencesManager.setUserDataPreference(userDataPreference);
                            getView().enabledControls(true);
                            getView().finishToLoadTaux();
                        }
                    }
                }));
    }
}
