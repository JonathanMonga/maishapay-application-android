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

import io.reactivex.Observable;

import static com.maishapay.sdk.android.BuildConfig.CONTACT_PARAM;
import static com.maishapay.sdk.android.BuildConfig.LOGIN_PARAM;
import static com.maishapay.sdk.android.BuildConfig.PIN_PERDU_PARAM;
import static com.maishapay.sdk.android.BuildConfig.REGISTER_PARAM;
import static com.maishapay.sdk.android.BuildConfig.TRANSFERT_COMPTE_CONFIRMATION_PARAM;
import static com.maishapay.sdk.android.BuildConfig.TRANSFERT_COMPTE_PARAM;

/**
 * Maishapay client
 */

final class MaishapayClient {

    /**
     * Nouveelle instance de {@link MaishapayClient}
     */
    private static MaishapayClient INSTANCE = null;

    private final MaishapayAPI maishapayAPI;

    private MaishapayClient(Context  context, String url) {
        this.maishapayAPI = ServiceGenerator.createService(context, MaishapayAPI.class, url);
    }

    /**
     * La methode du Observableton {@link MaishapayClient} celle-ci cree une instance de cette classe si cette dernier
     * n'existe pas
     */
    public static MaishapayClient getInstance(Context  context, String url) {
        if (INSTANCE == null)
            INSTANCE = new MaishapayClient(context, url);
        return INSTANCE;
    }

    /**
     * Login method.
     *
     * @return The user response.
     */
    public Observable<UserResponse> login (String telephone, String password) {
        return this.maishapayAPI.login(LOGIN_PARAM, telephone, password);
    }

    public Observable<UserResponse> inscription (String nom,
                                                String prenom,
                                                String telephone,
                                                String email,
                                                String adresse,
                                                String ville,
                                                String code_pin) {
        return this.maishapayAPI.inscription (REGISTER_PARAM, nom, prenom, telephone, email, adresse, ville, code_pin);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<TransfertResponse> transfert_compte (String expeditaire,
                                                          String destinataire,
                                                          String monnaie,
                                                          String montant) {
        return this.maishapayAPI.transfert_compte (TRANSFERT_COMPTE_PARAM, expeditaire, destinataire, monnaie, montant);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<TransactionConfirmationResponse> transfert_compte_confirmation (String pin,
                                                                                     String expeditaire,
                                                                                     String destinataire,
                                                                                     String monnaie,
                                                                                     String montant) {
        return this.maishapayAPI.transfert_compte_confirmation (TRANSFERT_COMPTE_CONFIRMATION_PARAM, pin, expeditaire, destinataire, monnaie, montant);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<Integer> nous_contacter(String expeditaire,
                                              String sujet,
                                              String message) {
        return this.maishapayAPI.nous_contacter(CONTACT_PARAM, expeditaire, sujet, message);
    }

    /**
     * pin_perdu method.
     *
     * @return The solde response.
     */
    public Observable<ForgotMDPResponse> pin_perdu(String telephone,
                                         String email) {
        return this.maishapayAPI.pin_perdu(PIN_PERDU_PARAM, telephone, email);
    }

    /**
     * attempt_payment method.
     *
     * @return The solde response.
     */
    public Observable<PaymentResponse> request_payment(String api_key,
                                                       String montant,
                                                       String monnaie) {
        return this.maishapayAPI.request_payment("request_payment2", api_key, montant, monnaie);
    }
}
