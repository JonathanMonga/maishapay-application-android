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
import com.maishapay.model.client.response.TransactionResponse;
import com.maishapay.model.client.response.SoldeResponse;
import com.maishapay.model.domain.UserDataPreference;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.util.LogCat;
import com.maishapay.view.AccueilView;

import net.grandcentrix.thirtyinch.TiPresenter;
import net.grandcentrix.thirtyinch.rx2.RxTiPresenterDisposableHandler;

import java.util.List;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
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
        disposableHandler.manageDisposable(maishapayClient.solde(userPhone).zipWith(maishapayClient.rapport(userPhone), new BiFunction<SoldeResponse, List<TransactionResponse>, UserDataPreference>() {
            @Override
            public UserDataPreference apply(SoldeResponse soldeResponse, List<TransactionResponse> transactionRespons) {

                int envoiFrancs = 0;
                int recuFrancs = 0;
                int envoiDollars = 0;
                int recuDollars = 0;

                for (TransactionResponse transactionResponse : transactionRespons) {
                    if (transactionResponse.getType_jrn().equals("e")) {
                        if (transactionResponse.getMonnaie_jrn().equals("FC")) {
                            String temp = transactionResponse.getMontant_jrn().replace(" ", "");
                            envoiFrancs += Integer.valueOf(temp);
                        } else if (transactionResponse.getMonnaie_jrn().equals("USD")) {
                            String temp = transactionResponse.getMontant_jrn().replace(" ", "");
                            envoiDollars += Integer.valueOf(temp);
                        }
                    } else {
                        if (transactionResponse.getMonnaie_jrn().equals("FC")) {
                            String temp = transactionResponse.getMontant_jrn().replace(" ", "");
                            recuFrancs += Integer.valueOf(temp);
                        } else if (transactionResponse.getMonnaie_jrn().equals("USD")) {
                            String temp = transactionResponse.getMontant_jrn().replace(" ", "");
                            recuDollars += Integer.valueOf(temp);
                        }
                    }
                }

                String francs = soldeResponse.getFrancCongolais().replace(" ", "");
                int francsInt = Integer.valueOf(francs.substring(0, francs.length() - 3));

                String dollars = soldeResponse.getDollard().replace(" ", "");
                int dollarsInt = Integer.valueOf(dollars.substring(0, dollars.length() - 3));


                UserDataPreference userDataPreference = new UserDataPreference();
                userDataPreference.setSoldeFrancs(francsInt);
                userDataPreference.setSoldeDollars(dollarsInt);

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
                            UserPrefencesManager.setLastSoldeAndRapport(response);
                            getView().finishToLoadSoldeAndRappot(response);
                        }
                    }
                }));
    }

    public void taux() {
        disposableHandler.manageDisposable(maishapayClient.taux_du_jour()
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<Double>(getView()) {
                    @Override
                    protected void onSuccess(Double aDouble) {
                        if (isViewAttached()) {
                            UserDataPreference userDataPreference = UserPrefencesManager.getLastSoldeAndRapport();
                            userDataPreference.setTaux(aDouble);
                            UserPrefencesManager.setLastSoldeAndRapport(userDataPreference);
                            getView().finishToLoadTaux();
                        }
                    }
                }));
    }
}
