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
import com.maishapay.model.client.response.ForgotPinResponse;
import com.maishapay.model.client.response.UserResponse;
import com.maishapay.view.LoginView;

import net.grandcentrix.thirtyinch.TiPresenter;
import net.grandcentrix.thirtyinch.rx2.RxTiPresenterDisposableHandler;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;


public class LoginPresenter extends TiPresenter<LoginView> {

    private RxTiPresenterDisposableHandler disposableHandler = new RxTiPresenterDisposableHandler(this);
    private MaishapayClient maishapayClient;

    @Override
    protected void onCreate() {
        super.onCreate();

        maishapayClient = MaishapayApplication.getMaishapayContext().getMaishapayClient();
    }

    public void login(String userPhone, String userCodePin){
        disposableHandler.manageDisposable(maishapayClient.login(userPhone, userCodePin)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<UserResponse>(getView()) {
                    @Override
                    protected void onSuccess(UserResponse response) {
                        switch (response.getResultat()) {
                            case 0: {
                                if(isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showLoginError(response.getResultat());
                                    break;
                                }
                            }

                            default: {
                                if(isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().finishToLogin(response);
                                    break;
                                }
                            }
                        }
                    }
                }));
    }

    public void forgot(String telephone, String email) {
        disposableHandler.manageDisposable(maishapayClient.pin_perdu(telephone, email)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<ForgotPinResponse>(getView()) {
                    @Override
                    protected void onSuccess(ForgotPinResponse response) {
                        switch (response.getResultat()) {
                            case 0: {
                                if(isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showForgotError(response.getResultat());
                                    break;
                                }
                            }

                            default: {
                                if(isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().finishToForgot();
                                    break;
                                }
                            }
                        }
                    }
                }));
    }
}
