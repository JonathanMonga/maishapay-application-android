package com.maishapay.model.domain;

import com.google.gson.annotations.SerializedName;
import com.maishapay.model.client.response.TransactionItemResponse;

import java.util.List;

public class UserDataPreference {

    @SerializedName("soldeFrancs")
    private String soldeFrancs;
    @SerializedName("soldeDollars")
    private String soldeDollars;
    @SerializedName("envoiFrancs")
    private float envoiFrancs;
    @SerializedName("recuFrancs")
    private float recuFrancs;
    @SerializedName("envoiDollars")
    private float envoiDollars;
    @SerializedName("recuDollars")
    private float recuDollars;
    @SerializedName("taux")
    private float taux;
    @SerializedName("hasEpargneCompte")
    private boolean hasEpargneCompte = false;
    @SerializedName("epargneFrancs")
    private String epargneFrancs;
    @SerializedName("epargneDollars")
    private String epargneDollars;
    @SerializedName("rapport")
    private List<TransactionItemResponse> transactionItemRespons;

    public String getSoldeFrancs() {
        return soldeFrancs;
    }

    public void setSoldeFrancs(String soldeFrancs) {
        this.soldeFrancs = soldeFrancs;
    }

    public String getSoldeDollars() {
        return soldeDollars;
    }

    public void setSoldeDollars(String soldeDollars) {
        this.soldeDollars = soldeDollars;
    }

    public boolean isHasEpargneCompte() {
        return hasEpargneCompte;
    }

    public void setHasEpargneCompte(boolean hasEpargneCompte) {
        this.hasEpargneCompte = hasEpargneCompte;
    }

    public float getEnvoiFrancs() {
        return envoiFrancs;
    }

    public void setEnvoiFrancs(float envoiFrancs) {
        this.envoiFrancs = envoiFrancs;
    }

    public float getRecuFrancs() {
        return recuFrancs;
    }

    public void setRecuFrancs(float recuFrancs) {
        this.recuFrancs = recuFrancs;
    }

    public float getEnvoiDollars() {
        return envoiDollars;
    }

    public void setEnvoiDollars(float envoiDollars) {
        this.envoiDollars = envoiDollars;
    }

    public float getRecuDollars() {
        return recuDollars;
    }

    public void setRecuDollars(float recuDollars) {
        this.recuDollars = recuDollars;
    }

    public float getTaux() {
        return taux;
    }

    public void setTaux(float taux) {
        this.taux = taux;
    }

    public String getEpargneFrancs() {
        return epargneFrancs;
    }

    public void setEpargneFrancs(String epargneFrancs) {
        this.epargneFrancs = epargneFrancs;
    }

    public String getEpargneDollars() {
        return epargneDollars;
    }

    public void setEpargneDollars(String epargneDollars) {
        this.epargneDollars = epargneDollars;
    }

    public List<TransactionItemResponse> getTransactionItemResponse() {
        return transactionItemRespons;
    }

    public void setTransactionItemRespons(List<TransactionItemResponse> transactionItemRespons) {
        this.transactionItemRespons = transactionItemRespons;
    }
}
