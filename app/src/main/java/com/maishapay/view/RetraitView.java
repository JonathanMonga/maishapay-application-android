package com.maishapay.view;

import com.maishapay.model.client.response.RetraitResponse;
import com.maishapay.model.client.response.TransfertResponse;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;

public interface RetraitView extends TiView {

    @CallOnMainThread
    void showNetworkError();

    @CallOnMainThread
    void showRetraitError(int i);

    @CallOnMainThread
    void showConfimationError(int i);

    @CallOnMainThread
    void finishToConfirm();

    @CallOnMainThread
    void finishToRetrait(RetraitResponse retraitResponse);

    @CallOnMainThread
    void enabledControls(boolean flag);
}
