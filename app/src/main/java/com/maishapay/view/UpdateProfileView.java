

package com.maishapay.view;

import com.maishapay.model.client.response.UserResponse;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;


public interface UpdateProfileView extends TiView {

    @CallOnMainThread
    void showNetworkError();

    @CallOnMainThread
    void showResponseError();

    @CallOnMainThread
    void finishToUpdate();

    @CallOnMainThread
    void enabledControls(boolean flag);
}
