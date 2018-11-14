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
        String destinqtairePhone;
        String recipient = phone;

        int stringLength = recipient.length();

        if(recipient.length() == 10)
            destinqtairePhone = codePhone + recipient.substring(1, stringLength);
        else if (recipient.length() == 12)
            destinqtairePhone = codePhone + recipient.substring(3, stringLength);
        else
            destinqtairePhone = recipient;

        return destinqtairePhone;
    }
}
