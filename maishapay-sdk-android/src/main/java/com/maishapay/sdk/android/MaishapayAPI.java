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

import io.reactivex.Observable;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

/**
 * Sets up a JAVA interface to the Maishapay API
 */
interface MaishapayAPI {

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<UserResponse> login(@Field("ent") String ent,
                                   @Field("telephone") String telephone,
                                   @Field("pin") String pin);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<TransactionConfirmationResponse> transfert_compte_confirmation(@Field("ent") String ent,
                                                                              @Field("pin") String pin,
                                                                              @Field("expeditaire") String expeditaire,
                                                                              @Field("destinataire") String destinataire,
                                                                              @Field("monnaie") String monnaie,
                                                                              @Field("montant") String montant);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<Float> taux_du_jour(@Field("ent") String ent);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<ForgotMDPResponse> pin_perdu(@Field("ent") String ent,
                                  @Field("telephone") String telephone,
                                  @Field("email") String email);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<PaymentResponse> request_payment(@Field("ent") String ent,
                                                @Field("client_api_key") String api_key,
                                                @Field("payment_amount") String montant,
                                                @Field("payment_devise") String monnaie);
}
