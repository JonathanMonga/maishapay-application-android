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

package com.maishapay.model.prefs;

import android.util.Log;

import com.google.gson.Gson;
import com.maishapay.model.client.response.UserResponse;
import com.maishapay.model.domain.UserDataPreference;
import com.pixplicity.easyprefs.library.Prefs;

import static com.maishapay.BuildConfig.DEFAULT_SESSION_VALUE;
import static com.maishapay.BuildConfig.USER_COUNTRY_CODE;
import static com.maishapay.BuildConfig.USER_DISCONNECT;
import static com.maishapay.BuildConfig.USER_FIRST_RUN;
import static com.maishapay.BuildConfig.USER_LAST_SOLDE_AND_REPPORT;
import static com.maishapay.BuildConfig.USER_LOGIN_SUCCESS;
import static com.maishapay.BuildConfig.USER_PHONE;
import static com.maishapay.BuildConfig.USER_PHONE_FIREBASE;
import static com.maishapay.BuildConfig.USER_REFRESH;
import static com.maishapay.BuildConfig.USER_SESSION;

/**
 * UserPrefencesManager class
 */
public class UserPrefencesManager {

    public static void setCurentUser(UserResponse userResponse){
        String userResponseString;

        Gson gson = new Gson();
        try {
            userResponseString = gson.toJson(userResponse, UserResponse.class);
            Prefs.putString(USER_PHONE_FIREBASE, userResponse.getTelephone());
        }catch (Exception e) {
            userResponseString = DEFAULT_SESSION_VALUE;
        }

        Prefs.putString(USER_SESSION, userResponseString);
    }

    public static UserResponse getCurrentUser(){
        UserResponse userResponse = null;

        Gson gson = new Gson();
        String sessionUser = Prefs.getString(USER_SESSION, DEFAULT_SESSION_VALUE);
        if(!sessionUser.equals(DEFAULT_SESSION_VALUE)){
            try {
                userResponse = gson.fromJson(sessionUser, UserResponse.class);
            }catch (Exception e){
                Log.e("GSON", e.getMessage());
            }
        }
        return userResponse;
    }

    public static void setCurentUserLoginSuccess(boolean b){
        Prefs.putBoolean(USER_LOGIN_SUCCESS, b);
    }

    public static void setUserFirtRun(boolean b){
        Prefs.putBoolean(USER_FIRST_RUN, b);
    }

    public static boolean getUserFirtRun() {
        return Prefs.getBoolean(USER_FIRST_RUN, true);
    }

    public static void setUserRefresh(boolean b){
        Prefs.putBoolean(USER_REFRESH, b);
    }

    public static boolean getUserRefresh(){
        return Prefs.getBoolean(USER_REFRESH, false);
    }

    public static boolean getCurentUserLoginSuccess(){
        return Prefs.getBoolean(USER_LOGIN_SUCCESS, false);
    }

    public static void clearAll(){
        Prefs.clear().apply();
    }


    public static void setCurrentUserDisconnect(boolean b){
        Prefs.putBoolean(USER_DISCONNECT, b);
    }

    public static boolean getCurrentUserDisconnect(){
        return Prefs.getBoolean(USER_DISCONNECT, false);
    }

    public static void setLastSoldeAndRapport(UserDataPreference userDataPreference){
        String soldeAndRapportString;

        Gson gson = new Gson();
        try {
            soldeAndRapportString = gson.toJson(userDataPreference, UserDataPreference.class);
        }catch (Exception e){
            soldeAndRapportString = DEFAULT_SESSION_VALUE;
        }

        Prefs.putString(USER_LAST_SOLDE_AND_REPPORT, soldeAndRapportString);
    }

    public static UserDataPreference getLastSoldeAndRapport(){
        UserDataPreference userDataPreference = null;

        Gson gson = new Gson();
        String sessionUser = Prefs.getString(USER_LAST_SOLDE_AND_REPPORT, DEFAULT_SESSION_VALUE);

        if(!sessionUser.equals(DEFAULT_SESSION_VALUE)){
            try {
                userDataPreference = gson.fromJson(sessionUser, UserDataPreference.class);
            }catch (Exception e){
                userDataPreference = new UserDataPreference();
            }
        }
        return userDataPreference;
    }

    public static void setUserCountryCodePhone(int b){
        Prefs.putInt(USER_COUNTRY_CODE, b);
    }

    public static int getUserCountryCodePhone(){
        return Prefs.getInt(USER_COUNTRY_CODE, 0);
    }

    public static void setUserPhone(String b){
        Prefs.putString(USER_PHONE, b);
    }

    public static String getUserPhone(){
        return Prefs.getString(USER_PHONE, "");
    }
}
