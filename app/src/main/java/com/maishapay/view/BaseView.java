

package com.maishapay.view;

import com.maishapay.model.domain.UserDataPreference;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;

public interface BaseView extends TiView {

    @CallOnMainThread
    void onUnknownError(String errorMessage);

    @CallOnMainThread
    void onTimeout();

    @CallOnMainThread
    void onNetworkError();

    @CallOnMainThread
    void enabledControls(boolean flag);
}
