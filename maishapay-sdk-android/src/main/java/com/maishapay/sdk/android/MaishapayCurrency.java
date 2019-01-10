package com.maishapay.sdk.android;

public enum MaishapayCurrency {

    USD("Dollars US"),
    CDF("Franc Congolais");

    private String currencyName;

    MaishapayCurrency(String currencyName){
        this.currencyName = currencyName;
    }

    public String getCurrencyName() {
        return currencyName;
    }
}
