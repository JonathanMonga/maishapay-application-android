

package com.maishapay.view;

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
