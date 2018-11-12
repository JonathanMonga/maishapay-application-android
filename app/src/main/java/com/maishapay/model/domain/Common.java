package com.maishapay.model.domain;

import com.google.firebase.iid.FirebaseInstanceId;
import com.maishapay.util.Constants;
import com.pixplicity.easyprefs.library.Prefs;

import static com.maishapay.BuildConfig.USER_PHONE_FIREBASE;

public class Common {

    public static String currentUserToken = FirebaseInstanceId.getInstance().getToken();
    public static String currentUserPhone = Prefs.getString(USER_PHONE_FIREBASE,"");
}
