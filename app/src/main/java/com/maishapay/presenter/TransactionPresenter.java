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
import com.maishapay.model.client.response.TransactionResponse;
import com.maishapay.model.domain.UserDataPreference;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.view.TransactionView;

import net.grandcentrix.thirtyinch.TiPresenter;
import net.grandcentrix.thirtyinch.rx2.RxTiPresenterDisposableHandler;

import java.util.List;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
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
                .subscribeWith(new CallbackWrapper<List<TransactionResponse>>(getView()) {
                    @Override
                    protected void onSuccess(List<TransactionResponse> responses) {
                        if(isViewAttached()) {
                            int envoiFrancs = 0;
                            int recuFrancs = 0;
                            int envoiDollars = 0;
                            int recuDollars = 0;

                            for(TransactionResponse transactionResponse : responses){
                                if(transactionResponse.getType_jrn().equals("e")){
                                    if(transactionResponse.getMonnaie_jrn().equals("FC")) {
                                        String temp = transactionResponse.getMontant_jrn().replace(" ", "");
                                        envoiFrancs += Integer.valueOf(temp);
                                    } else if(transactionResponse.getMonnaie_jrn().equals("USD")){
                                        String temp = transactionResponse.getMontant_jrn().replace(" ", "");
                                        envoiDollars += Integer.valueOf(temp);
                                    }
                                } else {
                                    if(transactionResponse.getMonnaie_jrn().equals("FC")) {
                                        String temp = transactionResponse.getMontant_jrn().replace(" ", "");
                                        recuFrancs += Integer.valueOf(temp);
                                    } else if(transactionResponse.getMonnaie_jrn().equals("USD")){
                                        String temp = transactionResponse.getMontant_jrn().replace(" ", "");
                                        recuDollars += Integer.valueOf(temp);
                                    }
                                }
                            }

                            UserDataPreference userDataPreference = new UserDataPreference();
                            userDataPreference.setSoldeFrancs(0);
                            userDataPreference.setSoldeDollars(0);

                            userDataPreference.setEnvoiFrancs(envoiFrancs);
                            userDataPreference.setRecuFrancs(recuFrancs);

                            userDataPreference.setEnvoiDollars(envoiDollars);
                            userDataPreference.setRecuDollars(recuDollars);

                            getView().finishToLoadStatisics(userDataPreference);
                            getView().enabledControls(true);
                            getView().finishToLoadTransactions(responses);
                        }
                    }
                }));
    }
}
