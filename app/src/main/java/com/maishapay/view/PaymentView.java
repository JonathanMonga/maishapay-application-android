package com.maishapay.view;

import com.maishapay.model.client.response.BaseResponse;

import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;

public interface PaymentView extends BaseView {

    @CallOnMainThread
    void showTranfertError(int i);

    @CallOnMainThread
    void showConfimationError(int i);

    @CallOnMainThread
    void finishToConfirm();

    @CallOnMainThread
    void finishToTranfert(BaseResponse transfertResponse);
}
