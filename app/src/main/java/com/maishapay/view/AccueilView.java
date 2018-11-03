

package com.maishapay.view;

import com.maishapay.model.domain.UserDataPreference;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;

public interface AccueilView extends BaseView {

    @CallOnMainThread
    void finishToLoadSoldeAndRappot(UserDataPreference response);

    @CallOnMainThread
    void finishToLoadTaux();

    @CallOnMainThread
    void finishToLoadEpargne();
}
