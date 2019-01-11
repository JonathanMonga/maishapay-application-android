package com.maishapay.sdk.android;

public enum MaishapayCurrency {

    USD("USD"),
    FC("FC");

    private String currencyName;

    MaishapayCurrency(String currencyName){
        this.currencyName = currencyName;
    }

    public String getCurrencyName() {
        return currencyName;
    }
}
