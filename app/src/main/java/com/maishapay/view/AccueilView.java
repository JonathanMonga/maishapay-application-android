

package com.maishapay.view;

import com.maishapay.model.domain.UserDataPreference;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;

public interface AccueilView extends TiView {

    @CallOnMainThread
    void showNetworkError();

    @CallOnMainThread
    void finishToLoadSoldeAndRappot(UserDataPreference response);

    @CallOnMainThread
    void finishToLoadTaux(Double response);

    @CallOnMainThread
    void finishToLoadEpargneStatus();

    @CallOnMainThread
    void enabledControls(boolean flag);
}
