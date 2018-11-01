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

/**
 * A Maishapay Message generator
 */
public class MaishapayMessage {
    public static final String SUCCESS_MESSAGE = "OK";

    private static MaishapayMessage INSTANCE = null;

    private int status;
    private MessageType messageType;

    private MaishapayMessage(int status, MessageType messageType) {
        this.status = status;
        this.messageType = messageType;
    }

    public static String generateMessage(MessageType messageType, int status) {
        if (INSTANCE == null)
            INSTANCE = new MaishapayMessage(status, messageType);

        return INSTANCE.getMessage();
    }

    private String getMessage() {
        switch (messageType) {
            case USER: {
                return userMessage();
            }

            case CONFIRM_CREATION_COMPTE: {
                return confimationCreationCompteMessage();
            }

            case SOLDE_EPARGNE: {
                return soldeEpargneMessage();
            }

            case INSCRIPTION: {
                return inscriptionMessage();
            }

            case TRANSFERT_COMPTE: {
                return transfertCompteMessage();
            }

            case CONFIRM_TRANSFERT_COMPTE: {
                return comfirmationTransfertCompteMessage();
            }

            case TRANSFERT_EPARGNE : {
                return transfertEpargneMessage();
            }

            case RETRAIT :{
                return retraitMessage();
            }

            case CONFIRM_RETRAIT :{
                return confirmationRetraitMessage();
            }

            case CONFIRM_TRANSFERT_EPARGNE : {
                return comfirmationTransfertEpargneMessage();
            }

            case PROFIL:{
                return updateProfilMessage();
            }

            case EMPRUNT:{
                return empruntMessage();
            }

            case PIN_PERDU:{
                return pinPerduMessage();
            }

            case CHECK_EMPRUNT:{
                return checkEmpruntMessage();
            }

            default: {
                return nousContacterMessage();
            }
        }
    }

    private String userMessage() {
        return status == 0 ? "Les informations entrées ne sont pas correctes, verifiez votre code PIN" : SUCCESS_MESSAGE;
    }

    private String confimationCreationCompteMessage() {
        if (status == 0)
            return "Echec de création veuillez recommencer plutatrd";
        else
            return SUCCESS_MESSAGE;
    }

    private String soldeEpargneMessage() {
        if (status == 0)
            return "Desolé, vous ne disposez pas d'un compte epargne";
        else
            return SUCCESS_MESSAGE;
    }

    private String inscriptionMessage() {
        if (status == 0)
            return "Echec d'inscription, veuillez reessayer";
        else if (status == 2)
            return "Desolé, ce numero est déja utilisé par une autre personne";
        else
            return SUCCESS_MESSAGE;
    }

    private String transfertCompteMessage() {
        if (status == 0)
            return "Le numero de destinataire n'existe pas dans Maishapay";
        else if (status == 2)
            return "Desolé, votre compte ne dispose pas beaucoup de solde pour effectuer ce transfert";
        else if (status == 3)
            return "Le compte de votre destinataire est indisponible pour le moment";
        else if (status == 4)
            return "Desolé, vous n'êtes pas autorisé à effectuer cette operation, veuillez contacter le service Maishpay";
        else
            return SUCCESS_MESSAGE;
    }

    private String comfirmationTransfertCompteMessage() {
        if (status == 0)
            return "Le code Pin saisi n'est pas correct";
        else if (status == 2)
            return "Echec de transfert";
        else
            return SUCCESS_MESSAGE;
    }

    private String transfertEpargneMessage() {
        if (status == 0)
            return "Désolé, vous ne disposez pas de compte epargne, veuillez en créer pour faire ce tranfert";
        else if (status == 2)
            return "Désolé, votre solde est insuffisant pour ce transfert";
        else
            return SUCCESS_MESSAGE;
    }

    private String retraitMessage() {
        if (status == 0)
            return "Le numero de l'Agent n'est pas correct";
        else if (status == 2)
            return "Desolé, votre solde est insuffisant";
        else
            return SUCCESS_MESSAGE;
    }

    private String confirmationRetraitMessage() {
        if (status == 0)
            return "Le numero de l'Agent n'est pas correct";
        else
            return SUCCESS_MESSAGE;
    }

    private String comfirmationTransfertEpargneMessage() {
        if (status == 0)
            return "Votre transfert à echoué, veuillez recommencer";
        else
            return SUCCESS_MESSAGE;
    }

    private String checkEmpruntMessage() {
        if (status == 1)
            return "Vous devez rembourser votre emprunt avant de prendre un autre";
        else
            return SUCCESS_MESSAGE;
    }

    private String empruntMessage() {
        if (status == 0)
            return "Cette operation est momentanement indisponible, veuillez reessayer plutard";
        else if (status == 2)
            return "Ce code Pin n'est pas correct, veuillez entrez un autre";
        else
            return SUCCESS_MESSAGE;
    }

    private String nousContacterMessage() {
        if (status == 0)
            return "Echec d'envoie E-mail, veuillez reessayer";
        else
            return SUCCESS_MESSAGE;
    }

    private String updateProfilMessage() {
        if (status == 3)
            return "Le code Pin entré n'est pas correct";
        else
            return SUCCESS_MESSAGE;
    }

    private String pinPerduMessage() {
        if (status == 0)
            return "Les données que vous avez saisies ne sont pas correctes";
        else if (status == 2)
            return "Echec d'envoie E-mail, veuillez reessayer";
        else
            return SUCCESS_MESSAGE;
    }


    public enum MessageType {
        USER,
        CONFIRM_CREATION_COMPTE,
        SOLDE_EPARGNE,
        INSCRIPTION,
        TRANSFERT_COMPTE,
        TRANSFERT_EPARGNE,
        CONFIRM_TRANSFERT_COMPTE,
        CONFIRM_TRANSFERT_EPARGNE,
        RETRAIT,
        CONFIRM_RETRAIT,
        EMPRUNT,
        CHECK_EMPRUNT,
        NOUS_CONTACTER,
        PROFIL,
        PIN_PERDU
    }
}
