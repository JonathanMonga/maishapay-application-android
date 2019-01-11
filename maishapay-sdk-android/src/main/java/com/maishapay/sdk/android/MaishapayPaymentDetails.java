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
 * MaishapayPaymentDetails class
 */

public class MaishapayPaymentDetails implements Parcelable{

    private double shipping;
    private double subTotal;
    private double tax;

    public MaishapayPaymentDetails(BigDecimal shipping, BigDecimal subTotal, BigDecimal tax) {
        this.shipping = shipping.doubleValue();
        this.subTotal = subTotal.doubleValue();
        this.tax = tax.doubleValue();
    }

    public BigDecimal getShipping() {
        return new BigDecimal(shipping);
    }

    public BigDecimal getSubTotal() {
        return new BigDecimal(subTotal);
    }

    public BigDecimal getTax() {
        return new BigDecimal(tax);
    }

    public static BigDecimal getAmount(MaishapayPaymentDetails details){
        double total = details.getSubTotal().add(details.getShipping()).doubleValue();
        double totalTva = ((total * details.getTax().doubleValue()) / 100);
        double totalNet = total + totalTva;
        return new BigDecimal(totalNet);
    }

    private MaishapayPaymentDetails(Parcel in) {
        this.shipping = in.readDouble();
        this.subTotal = in.readDouble();
        this.tax = in.readDouble();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int i) {
        dest.writeDouble(shipping);
        dest.writeDouble(subTotal);
        dest.writeDouble(tax);
    }

    public static final Creator<MaishapayPaymentDetails> CREATOR = new Creator<MaishapayPaymentDetails>() {
        @Override
        public MaishapayPaymentDetails createFromParcel(final Parcel source) {
            return new MaishapayPaymentDetails(source);
        }

        @Override
        public MaishapayPaymentDetails[] newArray(final int size) {
            return new MaishapayPaymentDetails[size];
        }
    };
}
