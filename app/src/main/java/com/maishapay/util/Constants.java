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
import android.graphics.Point;
import android.net.Uri;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;

import com.google.zxing.WriterException;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.prefs.UserPrefencesManager;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import androidmads.library.qrgenearator.QRGContents;
import androidmads.library.qrgenearator.QRGEncoder;
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

    public static String getOperatorName() {
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

    public static String generatePhoneNumber(String phone) {
        String codePhone = UserPrefencesManager.getCurrentUser().getTelephone().substring(0, 4);
        String destinatairePhone;
        String recipient = phone.replace(" ", "");

        int stringLength = recipient.length();

        if(recipient.length() == 9)
            destinatairePhone = codePhone + recipient;
        else if (recipient.length() == 10)
            destinatairePhone = codePhone + recipient.substring(1, stringLength);
        else
            destinatairePhone = recipient;

        LogCat.e(destinatairePhone);

        return destinatairePhone;
    }

    public static void generateQRcode(String data, ImageView imageView, WindowManager manager){
        Display display = manager.getDefaultDisplay();
        Point point = new Point();
        display.getSize(point);
        int width = point.x;
        int height = point.y;
        int smallerDimension = width < height ? width : height;
        smallerDimension = smallerDimension * 3 / 5;

        // Initializing the QR Encoder with your value to be encoded, type you required and Dimension
        QRGEncoder qrgEncoder = new QRGEncoder(data, null, QRGContents.Type.TEXT, smallerDimension);
        try {
            imageView.setImageBitmap(qrgEncoder.encodeAsBitmap());
        } catch (WriterException e) {
            LogCat.e(e.toString());
        }
    }

    public static boolean containsIgnoreCase(String haystack, String needle){
        if(needle.equals(""))
            return true;

        if(haystack == null || haystack.equals(""))
            return false;

        Pattern pattern = Pattern.compile(needle, Pattern.CASE_INSENSITIVE + Pattern.LITERAL);
        Matcher matcher = pattern.matcher(haystack);

        return matcher.find();
    }
}
