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

package com.maishapay.model.client.api;

import com.maishapay.BuildConfig;
import com.maishapay.model.client.response.EpargneResponse;
import com.maishapay.model.client.response.PaymentResponse;
import com.maishapay.model.client.response.TransactionResponse;
import com.maishapay.model.client.response.RetraitResponse;
import com.maishapay.model.client.response.SoldeEpargneResponse;
import com.maishapay.model.client.response.SoldeResponse;
import com.maishapay.model.client.response.TransfertResponse;
import com.maishapay.model.client.response.UserResponse;

import java.util.List;

import io.reactivex.Observable;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

/**
 * Sets up a JAVA interface to the Maishapay API
 */
public interface MaishapayAPI {

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<UserResponse> login(@Field("ent") String ent,
                                   @Field("telephone") String telephone,
                                   @Field("pin") String pin);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<SoldeResponse> solde(@Field("ent") String ent,
                                    @Field("telephone") String telephone);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<Integer> creation_compte_epargne_perso(@Field("ent") String ent,
                                                      @Field("telephone") String telephone,
                                                      @Field("date_cloture") String date_cloture,
                                                      @Field("devise") String devise,
                                                      @Field("code_secret") String code_secret);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<Integer> creation_compte_epargne_avenir(@Field("ent") String ent,
                                                       @Field("telephone") String telephone,
                                                       @Field("beneficiaire") String beneficiaire,
                                                       @Field("date_cloture") String date_cloture,
                                                       @Field("devise") String devise,
                                                       @Field("code_secret") String code_secret);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<SoldeEpargneResponse> solde_epargne_perso(@Field("ent") String ent,
                                                         @Field("telephone") String telephone);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<UserResponse> inscription(@Field("ent") String ent,
                                         @Field("nom") String nom,
                                         @Field("prenom") String prenom,
                                         @Field("telephone") String telephone,
                                         @Field("email") String email,
                                         @Field("adresse") String adresse,
                                         @Field("ville") String ville,
                                         @Field("code_pin") String code_pin);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<TransfertResponse> transfert_compte(@Field("ent") String ent,
                                                   @Field("expeditaire") String expeditaire,
                                                   @Field("destinataire") String destinataire,
                                                   @Field("monnaie") String monnaie,
                                                   @Field("montant") String montant);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<Integer> transfert_compte_confirmation(@Field("ent") String ent,
                                                      @Field("pin") String pin,
                                                      @Field("expeditaire") String expeditaire,
                                                      @Field("destinataire") String destinataire,
                                                      @Field("monnaie") String monnaie,
                                                      @Field("montant") String montant);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<EpargneResponse> transfert_epargne(@Field("ent") String ent,
                                                  @Field("type_transfert") String type_transfert,
                                                  @Field("telephone") String telephone,
                                                  @Field("monnaie") String monnaie,
                                                  @Field("montant") String montant);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<Integer> confirmation_transfert_epargne(@Field("ent") String ent,
                                                       @Field("type_transfert_ep") String type_transfert_ep,
                                                       @Field("telephone") String telephone,
                                                       @Field("monnaie") String monnaie,
                                                       @Field("montant") String montant);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<RetraitResponse> retrait(@Field("ent") String ent,
                                        @Field("expeditaire") String expeditaire,
                                        @Field("tel_agent") String tel_agent,
                                        @Field("mt") String mt,
                                        @Field("monnaie") String monnaie);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<Integer> confirm_retrait(@Field("ent") String ent,
                                        @Field("expeditaire") String expeditaire,
                                        @Field("pin") String pin,
                                        @Field("tel_agent") String tel_agent,
                                        @Field("mt") String mt,
                                        @Field("monnaie") String monnaie);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<List<TransactionResponse>> rapport(@Field("ent") String ent,
                                                  @Field("telephone") String telephone);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<Integer> emprunt_check(@Field("ent") String ent,
                                      @Field("telephone") String telephone);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<EpargneResponse> emprunt(@Field("ent") String ent,
                                        @Field("telephone") String telephone,
                                        @Field("pin") String pin,
                                        @Field("mt") String mt,
                                        @Field("monnaie") String monnaie);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<String> conversion_monnaie(@Field("ent") String ent,
                                          @Field("mt") String mt,
                                          @Field("monnaie") String monnaie);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<Integer> nous_contacter(@Field("ent") String ent,
                                       @Field("expeditaire") String expeditaire,
                                       @Field("sujet") String sujet,
                                       @Field("msg") String msg);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<Integer> update_profil(@Field("ent") String ent,
                                      @Field("nom") String nom,
                                      @Field("prenom") String prenom,
                                      @Field("telephone") String telephone,
                                      @Field("email") String email,
                                      @Field("adresse") String adresse,
                                      @Field("ville") String ville,
                                      @Field("pin") String code_pin);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<Integer> pin_perdu(@Field("ent") String ent,
                                  @Field("telephone") String telephone,
                                  @Field("email") String email);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<Integer> taux_du_jour(@Field("ent") String ent,
                                    @Field("mn") String telephone);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<PaymentResponse> attempt_payment(@Field("ent") String ent,
                                                @Field("api_key") String api_key,
                                                @Field("token") String token,
                                                @Field("monnaie") String monnaie,
                                                @Field("montant") String montant);

    @FormUrlEncoded
    @POST(BuildConfig.END_POINT)
    Observable<Integer> confirm_payment(@Field("ent") String ent,
                                        @Field("pin") String pin,
                                        @Field("api_key") String api_key,
                                        @Field("token") String token,
                                        @Field("expeditaire") String expeditaire,
                                        @Field("destinataire") String destinataire,
                                        @Field("monnaie") String monnaie,
                                        @Field("montant") String montant);

}
