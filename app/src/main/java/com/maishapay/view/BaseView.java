

package com.maishapay.view;

import com.maishapay.model.domain.UserDataPreference;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;

public interface BaseView extends TiView {

    void onUnknownError(String errorMessage);

    void onTimeout();

    void onNetworkError();
}
