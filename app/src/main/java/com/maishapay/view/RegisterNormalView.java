

package com.maishapay.view;

import com.maishapay.model.client.response.UserResponse;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;


public interface RegisterNormalView extends BaseView {

    @CallOnMainThread
    void showResponseError(int response);

    @CallOnMainThread
    void finishToRegister(UserResponse response);
}
