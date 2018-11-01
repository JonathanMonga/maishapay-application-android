package com.maishapay.model.domain;

import java.util.ArrayList;
import java.util.List;

public class PaiementModel {
    public static final int HEADER_TYPE = 0;
    public static final int CONTENT_TYPE = 1;

    private int type;
    private String name;
    private String description;

    public PaiementModel(int type, String name, String description) {
        this.type = type;
        this.name = name;
        this.description = description;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public static List<PaiementModel> getData(){
        List<PaiementModel> paiementModels = new ArrayList<>();
        paiementModels.add(new PaiementModel(HEADER_TYPE, "Paiement facture", ""));
        paiementModels.add(new PaiementModel(CONTENT_TYPE, "Taxi", "Payer votre taxi."));
        paiementModels.add(new PaiementModel(CONTENT_TYPE, "Restaurant | Fastfood", "Payer votre restaurant."));
        paiementModels.add(new PaiementModel(CONTENT_TYPE, "Elèctricité", "Payer votre facture pour le courant, gaz..."));
        paiementModels.add(new PaiementModel(CONTENT_TYPE, "L'eau", "Payer votre facture pour l'eau."));
        paiementModels.add(new PaiementModel(CONTENT_TYPE, "Université", "Payer vos frais académique."));
        paiementModels.add(new PaiementModel(CONTENT_TYPE, "Ecole", "Payer vos frais scolaire."));
        paiementModels.add(new PaiementModel(CONTENT_TYPE, "Hôpital | Pharmacie", "Payer vos frais médicaux."));
        paiementModels.add(new PaiementModel(CONTENT_TYPE, "Autres", "Tout autres types de paiement."));


        paiementModels.add(new PaiementModel(HEADER_TYPE, "Abonnement", ""));
        paiementModels.add(new PaiementModel(CONTENT_TYPE, "Canal +", "Réabonnez vous aux bouqué Canal +."));
        paiementModels.add(new PaiementModel(CONTENT_TYPE, "Easy Tv", "Réabonnez vous aux bouqué Easy Tv."));
        paiementModels.add(new PaiementModel(CONTENT_TYPE, "Startimes", "Réabonnez vous aux bouqué Startimes."));

        return paiementModels;
    }
}
