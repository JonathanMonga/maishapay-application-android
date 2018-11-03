

package com.maishapay.view;

import com.maishapay.model.client.response.SoldeEpargneResponse;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;

public interface EpargneView extends BaseView {

    @CallOnMainThread
    void showNetworkError();

    @CallOnMainThread
    void finishToLoadSolde(SoldeEpargneResponse response);

    @CallOnMainThread
    void enabledControls(boolean flag);
}
