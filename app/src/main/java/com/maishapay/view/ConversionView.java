

package com.maishapay.view;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;


public interface ConversionView extends BaseView {

    @CallOnMainThread
    void showNetworkError();

    @CallOnMainThread
    void finishToConversion(String amount);

    @CallOnMainThread
    void finishToLoadTaux(Double aDouble);

    @CallOnMainThread
    void enabledControls(boolean flag);
}
