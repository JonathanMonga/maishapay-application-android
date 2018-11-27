

package com.maishapay.view;

import com.maishapay.model.client.response.TransactionItemResponse;
import com.maishapay.model.domain.UserDataPreference;

import net.grandcentrix.thirtyinch.callonmainthread.CallOnMainThread;

import java.util.List;

public interface TransactionView extends BaseView {


    @CallOnMainThread
    void finishToLoadTransactions(List<TransactionItemResponse> responses);

    void finishToLoadStatisics(UserDataPreference userDataPreference);
}
