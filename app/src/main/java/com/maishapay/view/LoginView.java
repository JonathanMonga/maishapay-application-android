

package com.maishapay.view;

import com.maishapay.model.client.response.UserResponse;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;


public interface LoginView extends BaseView {

    @CallOnMainThread
    void showLoginError(int type);

    @CallOnMainThread
    void showForgotError(int type);

    @CallOnMainThread
    void finishToLogin(UserResponse response);

    @CallOnMainThread
    void finishToForgot();
}
