package com.maishapay.model.domain;

import com.google.gson.annotations.SerializedName;
import com.maishapay.model.client.response.TransactionResponse;

import java.util.List;

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
    @SerializedName("epargnefrancs")
    private String epargneFrancs;
    @SerializedName("epargneDollars")
    private String epargneDollars;
    @SerializedName("rapport")
    private List<TransactionResponse> transactionResponses;

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

    public double getTaux() {
        return taux;
    }

    public void setTaux(double taux) {
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

    public List<TransactionResponse> getTransactionResponses() {
        return transactionResponses;
    }

    public void setTransactionResponses(List<TransactionResponse> transactionResponses) {
        this.transactionResponses = transactionResponses;
    }
}
