

package com.maishapay.view;

import com.maishapay.model.client.response.SoldeEpargneResponse;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;

public interface OuvrirEpargnePersonelleView extends BaseView {

    @CallOnMainThread
    void showNetworkError();

    @CallOnMainThread
    void showOuvrirEpargnePersonelleError(int  type);

    @CallOnMainThread
    void showConfirmEpargnePersonelleError(int  type);

    @CallOnMainThread
    void finishToOuvrir(Integer response);

    @CallOnMainThread
    void finishToConfirm(Integer response);

    @CallOnMainThread
    void enabledControls(boolean flag);
}
