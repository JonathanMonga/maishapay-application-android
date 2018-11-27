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
public class PaymentResponse extends BaseResponse{

    @SerializedName("message")
    private String message;

    @SerializedName("data_api")
    private DataAPIResponse data_api;

    @SerializedName("data_trans")
    private DataPaymentResponse data_trans;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public DataAPIResponse getData_api() {
        return data_api;
    }

    public void setData_api(DataAPIResponse data_api) {
        this.data_api = data_api;
    }

    public DataPaymentResponse getData_trans() {
        return data_trans;
    }

    public void setData_trans(DataPaymentResponse data_trans) {
        this.data_trans = data_trans;
    }
}
