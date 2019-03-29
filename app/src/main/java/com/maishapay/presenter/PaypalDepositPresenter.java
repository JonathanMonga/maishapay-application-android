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
import com.maishapay.model.client.response.PaypalDepositResponse;
import com.maishapay.view.PaypalDepositView;

import net.grandcentrix.thirtyinch.TiPresenter;
import net.grandcentrix.thirtyinch.rx2.RxTiPresenterDisposableHandler;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;


public class PaypalDepositPresenter extends TiPresenter<PaypalDepositView> {

    private RxTiPresenterDisposableHandler disposableHandler = new RxTiPresenterDisposableHandler(this);
    private MaishapayClient maishapayClient;

    @Override
    protected void onCreate() {
        super.onCreate();

        maishapayClient = MaishapayApplication.getMaishapayContext().getMaishapayClient();
    }

    public void depot(String telephone, String montant, String monnaie){
        disposableHandler.manageDisposable(maishapayClient.depot(telephone, montant, monnaie)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<PaypalDepositResponse>(getView()) {
                    @Override
                    protected void onSuccess(PaypalDepositResponse response) {
                        switch (response.getResultat()) {
                            case 0: {
                                if(isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showConfimationError(response.getResultat());
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