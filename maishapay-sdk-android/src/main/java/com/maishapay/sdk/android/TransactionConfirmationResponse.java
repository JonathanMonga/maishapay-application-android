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
class TransactionConfirmationResponse extends BaseResponse {

    @SerializedName("type_solde")
    private String type_solde;
    @SerializedName("solde_actuel")
    private String solde_actuel;
    @SerializedName("message")
    private String message;

    public String getType_solde() {
        return type_solde;
    }

    public void setType_solde(String type_solde) {
        this.type_solde = type_solde;
    }

    public String getSolde_actuel() {
        return solde_actuel;
    }

    public void setSolde_actuel(String solde_actuel) {
        this.solde_actuel = solde_actuel;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
