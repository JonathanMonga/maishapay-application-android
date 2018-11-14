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
public class DataAPIResponse extends BaseResponse{

    @SerializedName("id")
    private int id;

    @SerializedName("resultat")
    private int resultat;

    @SerializedName("resultat")
    private int name;

    @SerializedName("resultat")
    private int telephone;

    @SerializedName("resultat")
    private int api_key;

    @SerializedName("project_name")
    private int project_name;

    @SerializedName("resultat")
    private int project_type;

    @SerializedName("resultat")
    private int project_id;

    @SerializedName("resultat")
    private int project_logo;

    @SerializedName("resultat")
    private int project_redirect_url;

    @SerializedName("resultat")
    private int project_callback_url;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getResultat() {
        return resultat;
    }

    public void setResultat(int resultat) {
        this.resultat = resultat;
    }

    public int getName() {
        return name;
    }

    public void setName(int name) {
        this.name = name;
    }

    public int getTelephone() {
        return telephone;
    }

    public void setTelephone(int telephone) {
        this.telephone = telephone;
    }

    public int getApi_key() {
        return api_key;
    }

    public void setApi_key(int api_key) {
        this.api_key = api_key;
    }

    public int getProject_name() {
        return project_name;
    }

    public void setProject_name(int project_name) {
        this.project_name = project_name;
    }

    public int getProject_type() {
        return project_type;
    }

    public void setProject_type(int project_type) {
        this.project_type = project_type;
    }

    public int getProject_id() {
        return project_id;
    }

    public void setProject_id(int project_id) {
        this.project_id = project_id;
    }

    public int getProject_logo() {
        return project_logo;
    }

    public void setProject_logo(int project_logo) {
        this.project_logo = project_logo;
    }

    public int getProject_redirect_url() {
        return project_redirect_url;
    }

    public void setProject_redirect_url(int project_redirect_url) {
        this.project_redirect_url = project_redirect_url;
    }

    public int getProject_callback_url() {
        return project_callback_url;
    }

    public void setProject_callback_url(int project_callback_url) {
        this.project_callback_url = project_callback_url;
    }
}
