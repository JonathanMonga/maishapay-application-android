package com.maishapay.notification.model;

import com.google.firebase.iid.FirebaseInstanceId;
import com.maishapay.util.Constants;
import com.pixplicity.easyprefs.library.Prefs;

public class Common {

    public static String currentUserToken = FirebaseInstanceId.getInstance().getToken();
    public static String currentUserPhone = Prefs.getString(Constants.USER_PHONE_FIREBASE,"");
}
