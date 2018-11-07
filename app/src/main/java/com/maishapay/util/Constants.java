/*
 * Copyright 2018 Jonathan Monga.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.maishapay.util;

import android.content.Context;
import android.net.Uri;
import android.telephony.TelephonyManager;
import android.view.View;

import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.prefs.UserPrefencesManager;

import de.mateware.snacky.Snacky;

/**
 * Constants class
 */

public class Constants {
    public static final String USER_CURRENT_TAUX = "current_taux";
    public static final String USER_PHONE = "phone";
    public static final String USER_DISCONNECT = "disconnect";
    public static final String USER_LAST_SOLDE_AND_REPPORT = "last_solde_and_report";
    public static final String USER_REFRESH = "refresh";
    public static final String USER_CREATION_EPARGNE = "creation_epargne";
    public static final String USER_COUNTRY_CODE = "country_code";
    public static final String USER_PHONE_FIREBASE = "user_phone_firebase";
    public static final String USER_FIRST_RUN = "firt_run";
    public static final String USER_MOBILE_MONEY_FIRST_RUN = "mobile_money_first_run";
    public static final String USER_MOBILE_MONEY_COUNTRY = "mobile_money_country";

    public static void showOnUnknownError(View view, View.OnClickListener onClickListener){
        Snacky.builder()
                .setView(view)
                .setText("Impossible de se connecter au serveur.")
                .setDuration(Snacky.LENGTH_INDEFINITE)
                .setActionText("Réessayez")
                .setActionClickListener(onClickListener)
                .error()
                .show();
    }

    public static void showOnTimeout(View view, View.OnClickListener onClickListener){
        Snacky.builder()
                .setView(view)
                .setText("Le délais s'est t'écouler.")
                .setDuration(Snacky.LENGTH_INDEFINITE)
                .setActionText("Réessayez")
                .setActionClickListener(onClickListener)
                .error()
                .show();
    }

    public static void showOnNetworkError(View view, View.OnClickListener onClickListener){
        Snacky.builder()
                .setView(view)
                .setText("Aucune connexion réseau. Réessayez plus tard.")
                .setDuration(Snacky.LENGTH_INDEFINITE)
                .setActionText("Réessayez")
                .setActionClickListener(onClickListener)
                .error()
                .show();
    }

    public static String getOperatorNamePhone() {
        TelephonyManager telephonyManager = (TelephonyManager) MaishapayApplication.getMaishapayContext().getSystemService(Context.TELEPHONY_SERVICE);
        return telephonyManager.getSimOperatorName();
    }

    public static Uri ussdToCallableUri(String ussd) {
        String uriString = "";

        if(!ussd.startsWith("tel:"))
            uriString += "tel:";

        for(char c : ussd.toCharArray()) {
            if(c == '#')
                uriString += Uri.encode("#");
            else
                uriString += c;
        }

        return Uri.parse(uriString);
    }

    public static String generatePhoneNumber(String phone){
        String codePhone = UserPrefencesManager.getCurrentUser().getTelephone().substring(0, 3);
        String destinqtqirePhone;
        String recipient = phone;

        int stringLength = recipient.length();

        if(recipient.length() == 10)
            destinqtqirePhone = codePhone + recipient.substring(1, stringLength);
        else if (recipient.length() == 12)
            destinqtqirePhone = codePhone + recipient.substring(3, stringLength);
        else if (recipient.length() == 13)
            destinqtqirePhone = codePhone + recipient.substring(4, stringLength);
        else
            destinqtqirePhone = recipient;

        return destinqtqirePhone;
    }
}
