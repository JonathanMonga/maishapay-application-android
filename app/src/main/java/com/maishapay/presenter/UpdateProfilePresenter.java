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
import com.maishapay.model.client.response.UserResponse;
import com.maishapay.model.domain.UserDataPreference;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.view.UpdateProfileView;

import net.grandcentrix.thirtyinch.TiPresenter;
import net.grandcentrix.thirtyinch.rx2.RxTiPresenterDisposableHandler;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;


public class UpdateProfilePresenter extends TiPresenter<UpdateProfileView> {

    private RxTiPresenterDisposableHandler disposableHandler = new RxTiPresenterDisposableHandler(this);
    private MaishapayClient maishapayClient;

    @Override
    protected void onCreate() {
        super.onCreate();

        maishapayClient = MaishapayApplication.getMaishapayContext().getMaishapayClient();
    }

    public void updateProfile(String userNom, String userPrenom, String userPhone, String userEmail, String userAdresse, String userVille, String userPin){
        final UserResponse userResponse = new UserResponse();
        userResponse.setNom(userNom);
        userResponse.setPrenom(userPrenom);
        userResponse.setTelephone(userPhone);
        userResponse.setEmail(userEmail);
        userResponse.setAdresse(userAdresse);
        userResponse.setVille(userVille);

        disposableHandler.manageDisposable(maishapayClient.update_profil(userNom, userPrenom, userPhone, userEmail, userAdresse, userVille, userPin)
                .observeOn(AndroidSchedulers.mainThread())
                .subscribeOn(Schedulers.io())
                .subscribeWith(new CallbackWrapper<Integer>(getView()) {
                    @Override
                    protected void onSuccess(Integer response) {
                        switch (response) {
                            case 3: {
                                if(isViewAttached()) {
                                    getView().enabledControls(true);
                                    getView().showResponseError();
                                    break;
                                }
                            }

                            default: {
                                if(isViewAttached()) {
                                    UserPrefencesManager.setCurentUser(userResponse);
                                    getView().enabledControls(true);
                                    getView().finishToUpdate();
                                    break;
                                }
                            }
                        }
                    }
                }));
    }
}
