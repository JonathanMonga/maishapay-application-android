

package com.maishapay.view;

import com.maishapay.model.client.response.UserResponse;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;


public interface ContactView extends BaseView {

    @CallOnMainThread
    void showNetworkError();

    @CallOnMainThread
    void showContactSendError(int i);

    @CallOnMainThread
    void finishToSend();

    @CallOnMainThread
    void enabledControls(boolean flag);
}
