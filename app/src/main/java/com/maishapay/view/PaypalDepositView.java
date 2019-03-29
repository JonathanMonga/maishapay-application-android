package com.maishapay.view;

import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;

public interface PaypalDepositView extends BaseView {

    @CallOnMainThread
    void showConfimationError(int i);

    @CallOnMainThread
    void finishToConfirm();
}
