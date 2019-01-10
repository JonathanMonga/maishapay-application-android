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
import java.util.ArrayList;
import java.util.List;

/**
 * Constants MaishapayPayment
 */

public class MaishapayPayment implements Parcelable{

    private String name;
    private String description;
    private String currencyPayment;
    private double totalAmount;
    private List<MaishapayPaymentItem> items = new ArrayList<>();
    private MaishapayPaymentDetails details;
    private MaishapayShippingAddress shippingAdress;

    public MaishapayPayment(String name, BigDecimal totalAmount, MaishapayCurrency currencyPayment) {
        this.name = name;
        this.currencyPayment = currencyPayment.getCurrencyName();
        this.totalAmount = totalAmount.doubleValue();
    }

    public MaishapayPayment items(List<MaishapayPaymentItem> items){
        this.items = items;
        return this;
    }

    public MaishapayPayment details(MaishapayPaymentDetails details){
        this.details = details;
        return this;
    }

    public MaishapayPayment description(String description){
        this.description = description;
        return this;
    }

    public MaishapayPayment shippingAdress(MaishapayShippingAddress shippingAdress){
        this.shippingAdress = shippingAdress;
        return this;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public MaishapayCurrency getCurrencyPayment() {
        return MaishapayCurrency.valueOf(currencyPayment);
    }

    public BigDecimal getTotalAmount() {
        return BigDecimal.valueOf(totalAmount);
    }

    public List<MaishapayPaymentItem> getItems() {
        return items;
    }

    public MaishapayPaymentDetails getDetails() {
        return details;
    }

    public MaishapayShippingAddress getShippingAdress() {
        return shippingAdress;
    }

    private MaishapayPayment(Parcel in) {
        this.name = in.readString();
        this.description = in.readString();
        this.currencyPayment = in.readString();
        this.totalAmount = in.readDouble();
        in.readTypedList(items, MaishapayPaymentItem.CREATOR);
        this.details = in.readParcelable(MaishapayPaymentDetails.class.getClassLoader());
        this.shippingAdress = in.readParcelable(MaishapayShippingAddress.class.getClassLoader());
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
        dest.writeDouble(totalAmount);
        dest.writeTypedList(items);
        dest.writeParcelable(details, flags);
        dest.writeParcelable(shippingAdress, flags);
    }

    public static final Creator<MaishapayPayment> CREATOR = new Creator<MaishapayPayment>() {
        @Override
        public MaishapayPayment createFromParcel(final Parcel source) {
            return new MaishapayPayment(source);
        }

        @Override
        public MaishapayPayment[] newArray(final int size) {
            return new MaishapayPayment[size];
        }
    };
}
