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
import com.maishapay.model.client.response.UserResponse;
import com.maishapay.view.RegisterMerchantView;
import com.maishapay.view.RegisterNormalView;

import net.grandcentrix.thirtyinch.TiPresenter;
import net.grandcentrix.thirtyinch.rx2.RxTiPresenterDisposableHandler;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;


public class RegisterNormalPresenter extends TiPresenter<RegisterNormalView> {

    private RxTiPresenterDisposableHandler disposableHandler = new RxTiPresenterDisposableHandler(this);
    private MaishapayClient maishapayClient;

    @Override
    protected void onCreate() {
        super.onCreate();

        maishapayClient = MaishapayApplication.getMaishapayContext().getMaishapayClient();
    }

    public void inscription(String userNom, String userPrenom, String userPhone, String userEmail, String userAdresse, String userVille, String userPin) {
        disposableHandler.manageDisposable(maishapayClient.inscription(userNom, userPrenom, userPhone, userEmail, userAdresse, userVille, userPin)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribe(new Consumer<UserResponse>() {
                    @Override
                    public void accept(UserResponse response) {
                        switch (response.getResultat()) {
                            case 0: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showResponseError(response.getResultat());
                                    break;
                                }
                            }

                            case 2: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showResponseError(response.getResultat());
                                    break;
                                }
                            }

                            default: {
                                if (isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().finishToRegister(response);
                                    break;
                                }
                            }
                        }
                    }
                }, new Consumer<Throwable>() {
                    @Override
                    public void accept(Throwable throwable) throws Exception {
                        if (isViewAttached()) {
                            getView().enabledControls(true);
                            getView().showNetworkError();
                        }
                    }
                }));
    }
}
