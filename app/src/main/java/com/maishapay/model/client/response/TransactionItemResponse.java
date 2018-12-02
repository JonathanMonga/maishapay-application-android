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

package com.maishapay.model.client.response;

import com.google.gson.annotations.SerializedName;

/**
 * A user response
 */
public class TransactionItemResponse extends BaseResponse{

    @SerializedName("type_jrn")
    private String type_jrn;
    @SerializedName("date_jrn")
    private String date_jrn;
    @SerializedName("telephone_dest")
    private String telephone_dest;
    @SerializedName("montant_jrn")
    private String montant_jrn;
    @SerializedName("monnaie_jrn")
    private String monnaie_jrn;
    @SerializedName("nom_dest")
    private String nom_dest;
    @SerializedName("prenom_dest")
    private String prenom_dest;

    public String getType_jrn() {
        return type_jrn;
    }

    public void setType_jrn(String type_jrn) {
        this.type_jrn = type_jrn;
    }

    public String getDate_jrn() {
        return date_jrn;
    }

    public void setDate_jrn(String date_jrn) {
        this.date_jrn = date_jrn;
    }

    public String getTelephone_dest() {
        return telephone_dest;
    }

    public void setTelephone_dest(String telephone_dest) {
        this.telephone_dest = telephone_dest;
    }

    public String getMontant_jrn() {
        return montant_jrn;
    }

    public void setMontant_jrn(String montant_jrn) {
        this.montant_jrn = montant_jrn;
    }

    public String getMonnaie_jrn() {
        return monnaie_jrn;
    }

    public void setMonnaie_jrn(String monnaie_jrn) {
        this.monnaie_jrn = monnaie_jrn;
    }

    public String getNom_dest() {
        return nom_dest;
    }

    public void setNom_dest(String nom_dest) {
        this.nom_dest = nom_dest;
    }

    public String getPrenom_dest() {
        return prenom_dest;
    }

    public void setPrenom_dest(String prenom_dest) {
        this.prenom_dest = prenom_dest;
    }
}
