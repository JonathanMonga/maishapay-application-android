package com.maishapay.sdk.android;

interface CallbackView {

    void onUnknownError(String errorMessage);

    void onTimeout();

    void onNetworkError();

    void enabledControls(boolean flag);
}
