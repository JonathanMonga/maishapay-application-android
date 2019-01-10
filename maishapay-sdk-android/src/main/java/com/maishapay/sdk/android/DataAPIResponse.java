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
class DataAPIResponse extends BaseResponse {

    @SerializedName("id")
    private String id;

    @SerializedName("merchant_phone")
    private String telephone;

    @SerializedName("api_key")
    private String api_key;

    @SerializedName("project_name")
    private String project_name;

    @SerializedName("project_type")
    private String project_type;

    @SerializedName("project_description")
    private String project_description;

    @SerializedName("project_id")
    private String project_id;

    @SerializedName("project_logo")
    private String project_logo;

    @SerializedName("project_redirect_url")
    private String project_redirect_url;

    @SerializedName("project_callback_url")
    private String project_callback_url;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getApi_key() {
        return api_key;
    }

    public void setApi_key(String api_key) {
        this.api_key = api_key;
    }

    public String getProject_name() {
        return project_name;
    }

    public void setProject_name(String project_name) {
        this.project_name = project_name;
    }

    public String getProject_type() {
        return project_type;
    }

    public void setProject_type(String project_type) {
        this.project_type = project_type;
    }

    public String getProject_id() {
        return project_id;
    }

    public void setProject_id(String project_id) {
        this.project_id = project_id;
    }

    public String getProject_logo() {
        return project_logo;
    }

    public void setProject_logo(String project_logo) {
        this.project_logo = project_logo;
    }

    public String getProject_redirect_url() {
        return project_redirect_url;
    }

    public void setProject_redirect_url(String project_redirect_url) {
        this.project_redirect_url = project_redirect_url;
    }

    public String getProject_callback_url() {
        return project_callback_url;
    }

    public void setProject_callback_url(String project_callback_url) {
        this.project_callback_url = project_callback_url;
    }

    public String getProject_description() {
        return project_description;
    }

    public void setProject_description(String project_description) {
        this.project_description = project_description;
    }
}
