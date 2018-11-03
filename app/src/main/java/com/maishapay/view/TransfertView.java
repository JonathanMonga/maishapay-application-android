package com.maishapay.view;

import com.maishapay.model.client.response.TransfertResponse;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;

public interface TransfertView extends BaseView {

    @CallOnMainThread
    void showTranfertError(int i);

    @CallOnMainThread
    void showConfimationError(int i);

    @CallOnMainThread
    void finishToConfirm();

    @CallOnMainThread
    void finishToTranfert(TransfertResponse transfertResponse);
}
