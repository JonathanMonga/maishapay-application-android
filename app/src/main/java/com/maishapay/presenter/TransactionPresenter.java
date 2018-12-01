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
import com.maishapay.view.TransactionView;

import net.grandcentrix.thirtyinch.TiPresenter;
import net.grandcentrix.thirtyinch.rx2.RxTiPresenterDisposableHandler;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;


public class TransactionPresenter extends TiPresenter<TransactionView> {

    private RxTiPresenterDisposableHandler disposableHandler = new RxTiPresenterDisposableHandler(this);
    private MaishapayClient maishapayClient;

    @Override
    protected void onCreate() {
        super.onCreate();

        maishapayClient = MaishapayApplication.getMaishapayContext().getMaishapayClient();
    }

    public void transactions(String telephone) {
        disposableHandler.manageDisposable(maishapayClient.rapport(telephone)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<TransactionResponse>(getView()) {
                    @Override
                    protected void onSuccess(TransactionResponse responses) {
                        if (isViewAttached()) {
                            float envoiFrancs = 0;
                            float recuFrancs = 0;
                            float envoiDollars = 0;
                            float recuDollars = 0;

                            for (TransactionItemResponse transactionItemResponse : responses.getTransactionItemResponses()) {
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

                            UserDataPreference userDataPreference = UserPrefencesManager.getUserDataPreference();

                            userDataPreference.setEnvoiFrancs(envoiFrancs);
                            userDataPreference.setRecuFrancs(recuFrancs);

                            userDataPreference.setEnvoiDollars(envoiDollars);
                            userDataPreference.setRecuDollars(recuDollars);

                            userDataPreference.setTransactionItemRespons(responses.getTransactionItemResponses());

                            UserPrefencesManager.setUserDataPreference(userDataPreference);

                            getView().finishToLoadStatisics(userDataPreference);

                            getView().enabledControls(true);
                            getView().finishToLoadTransactions(responses.getTransactionItemResponses());
                        }
                    }
                }));
    }

    public void solde(String telephone) {
        disposableHandler.manageDisposable(maishapayClient.solde(telephone)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<SoldeResponse>(getView()) {
                    @Override
                    protected void onSuccess(SoldeResponse response) {
                        UserDataPreference userDataPreference = UserPrefencesManager.getUserDataPreference();
                        userDataPreference.setSoldeFrancs(response.getFrancCongolais());
                        userDataPreference.setSoldeDollars(response.getDollard());
                        UserPrefencesManager.setUserDataPreference(userDataPreference);
                    }
                }));
    }
}
