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

import android.os.Parcel;
import android.os.Parcelable;

import java.math.BigDecimal;

/**
 * Constants MaishapayPaymentItem
 */

public class MaishapayPaymentItem implements Parcelable{

    private String name;
    private String description;
    private String currencyPayment;
    private double amount;
    private int quantity;

    public MaishapayPaymentItem(String name, String description, double amount, MaishapayCurrency currencyPayment, int quantity) {
        this.name = name;
        this.description = description;
        this.currencyPayment = currencyPayment.getCurrencyName();
        this.amount = amount;
        this.quantity = quantity;
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

    public MaishapayCurrency getCurrencyPayment() {
        return MaishapayCurrency.valueOf(currencyPayment);
    }

    public void setCurrencyPayment(String currencyPayment) {
        this.currencyPayment = currencyPayment;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public static BigDecimal getItemTotal(MaishapayPaymentItem [] items){
        double totalAmount = 0.0;

        for (MaishapayPaymentItem item : items){
            totalAmount = totalAmount + (item.amount * item.quantity);
        }

        return BigDecimal.valueOf(totalAmount);
    }

    private MaishapayPaymentItem(Parcel in) {
        this.name = in.readString();
        this.description = in.readString();
        this.currencyPayment = in.readString();
        this.amount = in.readDouble();
        this.quantity = in.readInt();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(name);
        dest.writeString(description);
        dest.writeString(currencyPayment);
        dest.writeDouble(amount);
        dest.writeInt(quantity);
    }

    public static final Creator<MaishapayPaymentItem> CREATOR = new Creator<MaishapayPaymentItem>() {
        @Override
        public MaishapayPaymentItem createFromParcel(final Parcel source) {
            return new MaishapayPaymentItem(source);
        }

        @Override
        public MaishapayPaymentItem[] newArray(final int size) {
            return new MaishapayPaymentItem[size];
        }
    };
}
