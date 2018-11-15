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
import com.maishapay.model.client.response.PaymentResponse;
import com.maishapay.model.client.response.TransfertResponse;
import com.maishapay.util.LogCat;
import com.maishapay.view.PaymentView;
import com.maishapay.view.TransfertView;

import net.grandcentrix.thirtyinch.TiPresenter;
import net.grandcentrix.thirtyinch.ViewAction;
import net.grandcentrix.thirtyinch.rx2.RxTiPresenterDisposableHandler;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;


public class PaymentConfirmationPresenter extends TiPresenter<PaymentView> {

    private RxTiPresenterDisposableHandler disposableHandler = new RxTiPresenterDisposableHandler(this);
    private MaishapayClient maishapayClient;

    @Override
    protected void onCreate() {
        super.onCreate();

        maishapayClient = MaishapayApplication.getMaishapayContext().getMaishapayClient();
    }

    public void attempt_payment(final String api_key, final String token, final String monnaie, final String montant){

        disposableHandler.manageDisposable(maishapayClient.attempt_payment(api_key, token, monnaie, montant)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<PaymentResponse>(getViewOrThrow()) {
                    @Override
                    protected void onSuccess(PaymentResponse response) {
                        switch (response.getResultat()) {
                            case 0: {
                                if(isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showTranfertError(response.getResultat());
                                    break;
                                }
                            }

                            case 2: {
                                if(isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showTranfertError(response.getResultat());
                                    break;
                                }
                            }

                            case 3: {
                                if(isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showTranfertError(response.getResultat());
                                    break;
                                }
                            }

                            case 4: {
                                if(isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showTranfertError(response.getResultat());
                                    break;
                                }
                            }

                            default: {
                                if(isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().finishToTranfert(response);
                                    break;
                                }
                            }
                        }
                    }
                }));
    }

    public void confirm_payment(String pin, String token, String api_key, final String expeditaire, final String destinataire, final String monnaie, final String montant){
        disposableHandler.manageDisposable(maishapayClient.confirm_payment(pin, api_key, token, expeditaire, destinataire, monnaie, montant)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<Integer>(getView()) {
                    @Override
                    protected void onSuccess(Integer response) {
                        switch (response) {
                            case 0: {
                                if(isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showConfimationError(response);
                                    break;
                                }
                            }

                            case 2: {
                                if(isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showConfimationError(response);
                                    break;
                                }
                            }

                            default: {
                                if(isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().finishToConfirm();
                                    break;
                                }
                            }
                        }
                    }
                }));
    }
}
