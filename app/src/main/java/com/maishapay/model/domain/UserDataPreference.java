package com.maishapay.model.domain;

import com.google.gson.annotations.SerializedName;

public class UserDataPreference {

    @SerializedName("soldeFrancs")
    private int soldeFrancs;
    @SerializedName("soldeDollars")
    private int soldeDollars;
    @SerializedName("envoiFrancs")
    private int envoiFrancs;
    @SerializedName("recuFrancs")
    private int recuFrancs;
    @SerializedName("envoiDollars")
    private int envoiDollars;
    @SerializedName("recuDollars")
    private int recuDollars;
    @SerializedName("taux")
    private double taux;
    @SerializedName("hasEpargneCompte")
    private boolean hasEpargneCompte = false;

    public int getSoldeFrancs() {
        return soldeFrancs;
    }

    public void setSoldeFrancs(int soldeFrancs) {
        this.soldeFrancs = soldeFrancs;
    }

    public int getSoldeDollars() {
        return soldeDollars;
    }

    public void setSoldeDollars(int soldeDollars) {
        this.soldeDollars = soldeDollars;
    }

    public int getEnvoiFrancs() {
        return envoiFrancs;
    }

    public void setEnvoiFrancs(int envoiFrancs) {
        this.envoiFrancs = envoiFrancs;
    }

    public int getRecuFrancs() {
        return recuFrancs;
    }

    public void setRecuFrancs(int recuFrancs) {
        this.recuFrancs = recuFrancs;
    }

    public int getEnvoiDollars() {
        return envoiDollars;
    }

    public void setEnvoiDollars(int envoiDollars) {
        this.envoiDollars = envoiDollars;
    }

    public int getRecuDollars() {
        return recuDollars;
    }

    public void setRecuDollars(int recuDollars) {
        this.recuDollars = recuDollars;
    }

    public boolean isHasEpargneCompte() {
        return hasEpargneCompte;
    }

    public void setHasEpargneCompte(boolean hasEpargneCompte) {
        this.hasEpargneCompte = hasEpargneCompte;
    }

    public double getTaux() {
        return taux;
    }

    public void setTaux(double taux) {
        this.taux = taux;
    }
}
