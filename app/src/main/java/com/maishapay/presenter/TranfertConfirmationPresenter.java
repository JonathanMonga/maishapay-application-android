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

import android.text.Editable;

import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.client.MaishapayClient;
import com.maishapay.model.client.api.CallbackWrapper;
import com.maishapay.model.client.response.InternalMessageResponse;
import com.maishapay.model.client.response.SoldeResponse;
import com.maishapay.model.client.response.TransactionConfirmationResponse;
import com.maishapay.model.client.response.TransfertResponse;
import com.maishapay.model.domain.UserDataPreference;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.view.TransfertView;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.SaveCallback;

import net.grandcentrix.thirtyinch.TiPresenter;
import net.grandcentrix.thirtyinch.rx2.RxTiPresenterDisposableHandler;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;


public class TranfertConfirmationPresenter extends TiPresenter<TransfertView> {

    private RxTiPresenterDisposableHandler disposableHandler = new RxTiPresenterDisposableHandler(this);
    private MaishapayClient maishapayClient;

    @Override
    protected void onCreate() {
        super.onCreate();

        maishapayClient = MaishapayApplication.getMaishapayContext().getMaishapayClient();
    }

    public void transfert(String expeditaire, String destinataire, String monnaie, String montant) {
        disposableHandler.manageDisposable(maishapayClient.transfert_compte(expeditaire, destinataire, monnaie, montant)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<TransfertResponse>(getView()) {
                    @Override
                    protected void onSuccess(TransfertResponse response) {
                        switch (response.getResultat()) {
                            case 0: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showTranfertError(response.getResultat());
                                    break;
                                }
                            }

                            case 2: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showTranfertError(response.getResultat());
                                    break;
                                }
                            }

                            case 3: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showTranfertError(response.getResultat());
                                    break;
                                }
                            }

                            case 4: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showTranfertError(response.getResultat());
                                    break;
                                }
                            }

                            default: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().finishToTranfert(response);
                                    break;
                                }
                            }
                        }
                    }
                }));
    }

    public void confirmTransfert(String pin, final String expeditaire, final String destinataire, final String monnaie, final String montant) {
        disposableHandler.manageDisposable(maishapayClient.transfert_compte_confirmation(pin, expeditaire, destinataire, monnaie, montant)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<TransactionConfirmationResponse>(getView()) {
                    @Override
                    protected void onSuccess(TransactionConfirmationResponse response) {
                        switch (response.getResultat()) {
                            case 0: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showConfimationError(response.getResultat());
                                    break;
                                }
                            }

                            case 2: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showConfimationError(response.getResultat());
                                    break;
                                }
                            }

                            default: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().finishToConfirm();
                                    break;
                                }
                            }
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

    public void createAbonnementObject(String type, String mobileNumberColumn, String usernameColumn, String nomAbonnementColumn, String cardNumberColumn, String montantColumn, String monnaieColumn) {
        String nomAbonnement;

        if(type.equals("Canal +"))
             nomAbonnement = String.format("Canal + : %s", nomAbonnementColumn);
        else if(type.equals("DStv"))
            nomAbonnement = String.format("DStv : %s", nomAbonnementColumn);
        else
            nomAbonnement = nomAbonnementColumn;

        Date date = Calendar.getInstance().getTime();
        DateFormat formatter = new SimpleDateFormat("EEEE, dd/MMMM/yyyy, HH:mm", Locale.FRENCH);
        String today = formatter.format(date);

        ParseObject abonnementObject = new ParseObject("Abonnement");
        abonnementObject.put("Date", today);
        abonnementObject.put("MobileNumber", mobileNumberColumn);
        abonnementObject.put("Username", usernameColumn);
        abonnementObject.put("NomAbonnement", nomAbonnement);
        abonnementObject.put("CardNumber", cardNumberColumn);
        abonnementObject.put("Montant", montantColumn);
        abonnementObject.put("Monnaie", monnaieColumn);
        abonnementObject.put("Confirmer", "NON");

        // Saves the new object.
        // Notice that the SaveCallback is totally optional!
        abonnementObject.saveInBackground(e -> {
            if (isViewAttached()) {
                getView().enabledControls(true);
                getView().finishToConfirm();
            }
        });
    }

    public void confirmTransfertAbonnement(String pin, final String type, final String telephone, String s, final String userCurrency, final String s1, final String format, final String stringExtra, final String rawText) {
        disposableHandler.manageDisposable(maishapayClient.transfert_compte_confirmation(pin, telephone, s, userCurrency, s1)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<TransactionConfirmationResponse>(getView()) {
                    @Override
                    protected void onSuccess(TransactionConfirmationResponse response) {
                        switch (response.getResultat()) {
                            case 0: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showConfimationError(response.getResultat());
                                    break;
                                }
                            }

                            case 2: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showConfimationError(response.getResultat());
                                    break;
                                }
                            }

                            default: {
                                createAbonnementObject(type, telephone, format, stringExtra, rawText, s1, userCurrency);
                            }
                        }
                    }
                }));
    }

    public void internalMessage(String telephone, String message) {
        disposableHandler.manageDisposable(maishapayClient.internalMessage(telephone, message)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<InternalMessageResponse>(getView()) {
                    @Override
                    protected void onSuccess(InternalMessageResponse response) {
                        if (isViewAttached()) {
                            getView().enabledControls(true);
                            getView().finishToConfirm();
                        }
                    }
                }));
    }

    public void createMobileMoneyObject(String fromColumn, String operateurColumn, String montantColumn, String monnaieColumn, String destinataireMobileMoney, String motif) {

        Date date = Calendar.getInstance().getTime();
        DateFormat formatter = new SimpleDateFormat("EEEE, dd/MMMM/yyyy, HH:mm", Locale.FRENCH);
        String today = formatter.format(date);

        ParseObject abonnementObject = new ParseObject("MobileMoney");
        abonnementObject.put("Date", today);
        abonnementObject.put("From", fromColumn);
        abonnementObject.put("SendTo", destinataireMobileMoney);
        abonnementObject.put("Operateur", operateurColumn);
        abonnementObject.put("Montant", montantColumn);
        abonnementObject.put("Monnaie", monnaieColumn);
        abonnementObject.put("Motif", motif);
        abonnementObject.put("Confirmer", "NON");

        // Saves the new object.
        // Notice that the SaveCallback is totally optional!
        abonnementObject.saveInBackground(e -> {
            if (isViewAttached()) {
                getView().enabledControls(true);
                getView().finishToConfirm();
            }
        });
    }

    public void confirmTransfertMobileMoney(String pin, final String telephone, String destinataire, final String montant, final String userCurrency, String destinataireMobileMoney, String motif, final String operator) {
        disposableHandler.manageDisposable(maishapayClient.transfert_compte_confirmation(pin, telephone, destinataire, userCurrency, montant)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<TransactionConfirmationResponse>(getView()) {
                    @Override
                    protected void onSuccess(TransactionConfirmationResponse response) {
                        switch (response.getResultat()) {
                            case 0: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showConfimationError(response.getResultat());
                                    break;
                                }
                            }

                            case 2: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showConfimationError(response.getResultat());
                                    break;
                                }
                            }

                            default: {
                                createMobileMoneyObject(telephone, operator, montant, userCurrency, destinataireMobileMoney, motif);
                            }
                        }
                    }
                }));
    }
}
