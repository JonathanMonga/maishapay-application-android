package com.maishapay.model.contact;

import android.accounts.*;
import android.content.Context;
import android.os.Bundle;

import com.maishapay.util.LogCat;

public class Authenticator extends AbstractAccountAuthenticator {

    public Authenticator(Context context) {
        super(context);
    }

    @Override
    public Bundle editProperties(AccountAuthenticatorResponse response, String accountType) {
        LogCat.e("editProperties");
        return null;
    }

    @Override
    public Bundle addAccount(AccountAuthenticatorResponse response, String accountType, String authTokenType, String[] requiredFeatures, Bundle options) {
        LogCat.e("addAccount");
        return null;
    }

    @Override
    public Bundle confirmCredentials(AccountAuthenticatorResponse response, Account account, Bundle options) {
        LogCat.e("confirmCredentials");
        return null;
    }

    @Override
    public Bundle getAuthToken(AccountAuthenticatorResponse response, Account account, String authTokenType, Bundle options) {
        LogCat.e("getAuthToken");
        return null;
    }

    @Override
    public String getAuthTokenLabel(String authTokenType) {
        LogCat.e("getAuthTokenLabel");
        return null;
    }

    @Override
    public Bundle updateCredentials(AccountAuthenticatorResponse response, Account account, String authTokenType, Bundle options) {
        LogCat.e("updateCredentials");
        return null;
    }

    @Override
    public Bundle hasFeatures(AccountAuthenticatorResponse response, Account account, String[] features) {
        LogCat.e("hasFeatures");
        return null;
    }
}
