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

package com.maishapay.sdk.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

import com.google.gson.Gson;

/**
 * MaishapayUserSessionManager class
 */
class MaishapayUserSessionManager {

    /**
     * This static method can be called to get the logged in user.
     * It reads from the shared preferences and builds a {@link UserResponse} object and returns it.
     * If no user is logged in it returns null
     *
     * @param context
     * @return {@link UserResponse}
     */
    static UserResponse getCurrentUser(Context context) {
        UserResponse userResponse = null;
        SharedPreferences preferences = context.getSharedPreferences(Constants.USER_PREFS, Context.MODE_PRIVATE);
        Gson gson = new Gson();
        String sessionUser = preferences.getString(Constants.USER_SESSION, Constants.DEFAULT_SESSION_VALUE);
        if (!sessionUser.equals(Constants.DEFAULT_SESSION_VALUE)) {
            try {
                userResponse = gson.fromJson(sessionUser, UserResponse.class);
            } catch (Exception e) {
                Log.e("GSON", e.getMessage());
            }
        }
        return userResponse;
    }

    /**
     * This method sets the session object for the current logged in user.
     * This is called from inside the {@link MaishapayLoginActivity} to save the
     * current logged in user to the shared preferences.
     *
     * @param userResponse
     * @param context
     * @return boolean
     */
    static boolean setUserSession(Context context, UserResponse userResponse) {
        SharedPreferences preferences;
        SharedPreferences.Editor editor;
        if (userResponse != null) {
            try {
                preferences = context.getSharedPreferences(Constants.USER_PREFS, Context.MODE_PRIVATE);
                editor = preferences.edit();

                Gson gson = new Gson();
                String sessionUser = gson.toJson(userResponse);
                editor.putString(Constants.USER_SESSION, sessionUser);
                editor.apply();
                return true;
            } catch (Exception e) {
                Log.e("Session Error", e.getMessage());
                return false;
            }
        } else {
            Log.e("Session Error", "User is null");
            return false;
        }
    }

    /**
     * This static method can be called to get a status of user.
     * If no user is logged in it returns false else true
     *
     * @param context
     * @return boolean
     */
    static boolean isUserExist(Context context) {
        boolean isUserExist = false;
        SharedPreferences preferences = context.getSharedPreferences(Constants.USER_PREFS, Context.MODE_PRIVATE);
        String sessionUser = preferences.getString(Constants.USER_SESSION, Constants.DEFAULT_SESSION_VALUE);
        if (!sessionUser.equals(Constants.DEFAULT_SESSION_VALUE)) {
            isUserExist = true;
        }
        return isUserExist;
    }

    /**
     * This method sets the session object for the current logged in user.
     * This is called from inside the {@link MaishapayLoginActivity} to save the
     * current logged in user to the shared preferences.
     * @param context
     * @return boolean
     */
    static void setFirstLaunsh(Context context) {
        SharedPreferences preferences;
        SharedPreferences.Editor editor;
        preferences = context.getSharedPreferences(Constants.USER_PREFS, Context.MODE_PRIVATE);
        editor = preferences.edit();
        editor.putBoolean(Constants.USER_FIRST_LAUNCH, true);
        editor.apply();
    }

    /**
     * This static method can be called to get a status of user.
     * If no user is logged in it returns false else true
     *
     * @param context
     * @return boolean
     */
    static boolean isFirstLaunsh(Context context) {
        SharedPreferences preferences = context.getSharedPreferences(Constants.USER_PREFS, Context.MODE_PRIVATE);
        return preferences.getBoolean(Constants.USER_FIRST_LAUNCH, false);
    }
}
