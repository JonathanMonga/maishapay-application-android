

package com.maishapay.view;

import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;


public interface UpdateProfileView extends BaseView {

    @CallOnMainThread
    void showResponseError();

    @CallOnMainThread
    void finishToUpdate();
}
