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

package com.maishapay.model.client;

import com.maishapay.model.client.api.MaishapayAPI;
import com.maishapay.model.client.api.ServiceGenerator;
import com.maishapay.model.client.response.ConfirmPaymentResponse;
import com.maishapay.model.client.response.ConfirmRetraitResponse;
import com.maishapay.model.client.response.EpargneResponse;
import com.maishapay.model.client.response.PaymentResponse;
import com.maishapay.model.client.response.RetraitResponse;
import com.maishapay.model.client.response.SoldeEpargneResponse;
import com.maishapay.model.client.response.SoldeResponse;
import com.maishapay.model.client.response.TransactionConfirmationResponse;
import com.maishapay.model.client.response.TransactionResponse;
import com.maishapay.model.client.response.TransfertResponse;
import com.maishapay.model.client.response.UserResponse;

import io.reactivex.Observable;

import static com.maishapay.BuildConfig.ATTEMPT_PAYMENT_PARAM;
import static com.maishapay.BuildConfig.CONFIRM_PAYMENT_PARAM;
import static com.maishapay.BuildConfig.CONTACT_PARAM;
import static com.maishapay.BuildConfig.CONVERSION_MONNAIE_PARAM;
import static com.maishapay.BuildConfig.CREATION_COMPTE_EPARGNE_AVENIR_PARAM;
import static com.maishapay.BuildConfig.CREATION_COMPTE_EPARGNE_PERSONNEL_PARAM;
import static com.maishapay.BuildConfig.EMPRUNT_CHECK_PARAM;
import static com.maishapay.BuildConfig.EMPRUNT_PARAM;
import static com.maishapay.BuildConfig.LOGIN_PARAM;
import static com.maishapay.BuildConfig.PIN_PERDU_PARAM;
import static com.maishapay.BuildConfig.PROD_BASE_URL;
import static com.maishapay.BuildConfig.RAPPORT_PARAM;
import static com.maishapay.BuildConfig.REGISTER_PARAM;
import static com.maishapay.BuildConfig.RETRAIT_CONFIMATION_PARAM;
import static com.maishapay.BuildConfig.RETRAIT_PARAM;
import static com.maishapay.BuildConfig.SOLDE_EPARGNE_PERSONNEL_PARAM;
import static com.maishapay.BuildConfig.SOLDE_PARAM;
import static com.maishapay.BuildConfig.TAUX_PARAM;
import static com.maishapay.BuildConfig.TRANSFERT_COMPTE_CONFIRMATION_PARAM;
import static com.maishapay.BuildConfig.TRANSFERT_COMPTE_PARAM;
import static com.maishapay.BuildConfig.TRANSFERT_EPARGNE_CONFIRMATION_PARAM;
import static com.maishapay.BuildConfig.TRANSFERT_EPARGNE_PARAM;
import static com.maishapay.BuildConfig.UPDATE_PROFIL_PARAM;

/**
 * Maishapay client
 */

public final class MaishapayClient {

    /**
     * Nouveelle instance de {@link MaishapayClient}
     */
    private static MaishapayClient INSTANCE = null;

    private final MaishapayAPI maishapayAPI;

    private MaishapayClient() {
        this.maishapayAPI = ServiceGenerator.createService(MaishapayAPI.class, PROD_BASE_URL);
    }

    /**
     * La methode du Observableton {@link MaishapayClient} celle-ci cree une instance de cette classe si cette dernier
     * n'existe pas
     */
    public static MaishapayClient getInstance() {
        if (INSTANCE == null)
            INSTANCE = new MaishapayClient();
        return INSTANCE;
    }

    /**
     * Login method.
     *
     * @return The user response.
     */
    public Observable<UserResponse> login(String telephone, String password) {
        return this.maishapayAPI.login(LOGIN_PARAM, telephone, password);
    }

    /**
     * Solde method.
     *
     * @return The solde response.
     */
    public Observable<SoldeResponse> solde(String telephone) {
        return this.maishapayAPI.solde(SOLDE_PARAM, telephone);
    }

    /**
     * creation_compte_epargne_perso method.
     *
     * @return The solde response.
     */
    public Observable<Integer> creation_compte_epargne_perso(String telephone,
                                                             String date_cloture,
                                                             String device,
                                                             String code_secret) {
        return this.maishapayAPI.creation_compte_epargne_perso(CREATION_COMPTE_EPARGNE_PERSONNEL_PARAM, telephone, date_cloture, device, code_secret);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<Integer> creation_compte_epargne_avenir(String telephone,
                                                              String beneficiaire,
                                                              String date_cloture,
                                                              String device,
                                                              String code_secret) {
        return this.maishapayAPI.creation_compte_epargne_avenir(CREATION_COMPTE_EPARGNE_AVENIR_PARAM, telephone, beneficiaire, date_cloture, device, code_secret);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<TransactionResponse> rapport(String telephone) {
        return this.maishapayAPI.rapport(RAPPORT_PARAM, telephone);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<SoldeEpargneResponse> solde_epargne_perso(String telephone) {
        return this.maishapayAPI.solde_epargne_perso(SOLDE_EPARGNE_PERSONNEL_PARAM, telephone);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<UserResponse> inscription(String nom,
                                                String prenom,
                                                String telephone,
                                                String email,
                                                String adresse,
                                                String ville,
                                                String code_pin) {
        return this.maishapayAPI.inscription(REGISTER_PARAM, nom, prenom, telephone, email, adresse, ville, code_pin);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<TransfertResponse> transfert_compte(String expeditaire,
                                                          String destinataire,
                                                          String monnaie,
                                                          String montant) {
        return this.maishapayAPI.transfert_compte(TRANSFERT_COMPTE_PARAM, expeditaire, destinataire, monnaie, montant);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<TransactionConfirmationResponse> transfert_compte_confirmation(String pin,
                                                                                     String expeditaire,
                                                                                     String destinataire,
                                                                                     String monnaie,
                                                                                     String montant) {
        return this.maishapayAPI.transfert_compte_confirmation(TRANSFERT_COMPTE_CONFIRMATION_PARAM, pin, expeditaire, destinataire, monnaie, montant);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<EpargneResponse> transfert_epargne(String type_transfert,
                                                         String telephone,
                                                         String monnaie,
                                                         String montant) {
        return this.maishapayAPI.transfert_epargne(TRANSFERT_EPARGNE_PARAM, type_transfert, telephone, monnaie, montant);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<Integer> confirmation_transfert_epargne(String type_transfert_ep,
                                                              String telephone,
                                                              String monnaie,
                                                              String montant) {
        return this.maishapayAPI.confirmation_transfert_epargne(TRANSFERT_EPARGNE_CONFIRMATION_PARAM, type_transfert_ep, telephone, monnaie, montant);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<RetraitResponse> retrait(String expeditaire,
                                               String tel_agent,
                                               String montant,
                                               String monnaie) {
        return this.maishapayAPI.retrait(RETRAIT_PARAM, expeditaire, tel_agent, montant, monnaie);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<ConfirmRetraitResponse> confirm_retrait(String expeditaire,
                                                              String pin,
                                                              String tel_agent,
                                                              String montant,
                                                              String monnaie) {
        return this.maishapayAPI.confirm_retrait(RETRAIT_CONFIMATION_PARAM, expeditaire, pin, tel_agent, montant, monnaie);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<Integer> emprunt_check(String telephone) {
        return this.maishapayAPI.emprunt_check(EMPRUNT_CHECK_PARAM, telephone);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<EpargneResponse> emprunt(String telephone,
                                               String pin,
                                               String montant,
                                               String monnaie) {
        return this.maishapayAPI.emprunt(EMPRUNT_PARAM, telephone, pin, montant, monnaie);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<String> conversion_monnaie(String montant,
                                                 String monnaie) {
        return this.maishapayAPI.conversion_monnaie(CONVERSION_MONNAIE_PARAM, montant, monnaie);
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
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<Integer> update_profil(String nom,
                                             String prenom,
                                             String telephone,
                                             String email,
                                             String adresse,
                                             String ville,
                                             String code_pin) {
        return this.maishapayAPI.update_profil(UPDATE_PROFIL_PARAM, nom, prenom, telephone, email, adresse, ville, code_pin);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<Integer> pin_perdu(String telephone,
                                         String email) {
        return this.maishapayAPI.pin_perdu(PIN_PERDU_PARAM, telephone, email);
    }

    /**
     * taux_du_jour method.
     *
     * @return The Double response.
     */
    public Observable<Double> taux_du_jour() {
        return this.maishapayAPI.taux_du_jour(TAUX_PARAM, "usd");
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<PaymentResponse> attempt_payment(String api_key,
                                                       String token,
                                                       String monnaie,
                                                       String montant) {
        return this.maishapayAPI.attempt_payment(ATTEMPT_PAYMENT_PARAM, api_key, token, monnaie, montant);
    }

    /**
     * creation_compte_epargne_avenir method.
     *
     * @return The solde response.
     */
    public Observable<ConfirmPaymentResponse> confirm_payment(String pin,
                                                              String api_key,
                                                              String token,
                                                              String expeditaire,
                                                              String destinataire,
                                                              String monnaie,
                                                              String montant) {
        return this.maishapayAPI.confirm_payment(CONFIRM_PAYMENT_PARAM, pin, api_key, token, expeditaire, destinataire, monnaie, montant);
    }
}
