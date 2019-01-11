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

import com.google.gson.annotations.SerializedName;

/**
 * A user response
 */
class PaymentResponse extends BaseResponse{

    @SerializedName("message")
    private String message;
    @SerializedName("token")
    private String token;
    @SerializedName("api_key")
    private String api_key;
    @SerializedName("montant")
    private String montant;
    @SerializedName("monnaie")
    private String monnaie;

    @SerializedName("api_info")
    private DataAPIResponse api_info;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getApi_key() {
        return api_key;
    }

    public void setApi_key(String api_key) {
        this.api_key = api_key;
    }

    public String getMontant() {
        return montant;
    }

    public void setMontant(String montant) {
        this.montant = montant;
    }

    public String getMonnaie() {
        return monnaie;
    }

    public void setMonnaie(String monnaie) {
        this.monnaie = monnaie;
    }

    public DataAPIResponse getApi_info() {
        return api_info;
    }

    public void setApi_info(DataAPIResponse api_info) {
        this.api_info = api_info;
    }
}
