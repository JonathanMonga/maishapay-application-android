

package com.maishapay.view;

import com.maishapay.model.client.response.TransactionResponse;
import com.maishapay.model.domain.UserDataPreference;

import net.grandcentrix.thirtyinch.TiView;
import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;

import java.util.List;

public interface TransactionView extends TiView {

    @CallOnMainThread
    void showNetworkError();

    @CallOnMainThread
    void finishToLoadTransactions(List<TransactionResponse> responses);

    @CallOnMainThread
    void enabledControls(boolean flag);

    void finishToLoadStatisics(UserDataPreference userDataPreference);
}
