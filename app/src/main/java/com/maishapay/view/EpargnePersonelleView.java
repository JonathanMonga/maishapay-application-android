package com.maishapay.view;

import com.maishapay.model.client.response.EpargneResponse;
import com.maishapay.model.client.response.TransfertResponse;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;

public interface EpargnePersonelleView extends BaseView {

    @CallOnMainThread
    void showNetworkError();

    @CallOnMainThread
    void showTranfertError(int i);

    @CallOnMainThread
    void showConfimationError(int i);

    @CallOnMainThread
    void finishToConfirm();

    @CallOnMainThread
    void finishToTranfert(EpargneResponse transfertResponse);

    @CallOnMainThread
    void enabledControls(boolean flag);
}
