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

/**
 * MaishapayPaymentDetails class
 */

public class MaishapayShippingAddress implements Parcelable{

    private String destinataire;
    private String adresse;
    private String ville;
    private String province;
    private String codeIsoPays;

    public MaishapayShippingAddress(){}

    public MaishapayShippingAddress destinataire(String destinataire){
        this.destinataire = destinataire;
        return this;
    }

    public MaishapayShippingAddress adresse(String adresse){
        this.adresse = adresse;
        return this;
    }

    public MaishapayShippingAddress ville(String ville){
        this.ville = ville;
        return this;
    }

    public MaishapayShippingAddress province(String province){
        this.province = province;
        return this;
    }

    public MaishapayShippingAddress codeIsoPays(String codeIsoPays){
        this.codeIsoPays = codeIsoPays;
        return this;
    }

    public String getDestinataire() {
        return destinataire;
    }

    public String getAdresse() {
        return adresse;
    }

    public String getVille() {
        return ville;
    }

    public String getProvince() {
        return province;
    }

    public String getCodeIsoPays() {
        return codeIsoPays;
    }

    private MaishapayShippingAddress(Parcel in) {
        this.destinataire = in.readString();
        this.adresse = in.readString();
        this.ville = in.readString();
        this.province = in.readString();
        this.codeIsoPays = in.readString();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(destinataire);
        parcel.writeString(adresse);
        parcel.writeString(ville);
        parcel.writeString(province);
        parcel.writeString(codeIsoPays);
    }

    public static final Creator<MaishapayShippingAddress> CREATOR = new Creator<MaishapayShippingAddress>() {
        @Override
        public MaishapayShippingAddress createFromParcel(final Parcel source) {
            return new MaishapayShippingAddress(source);
        }

        @Override
        public MaishapayShippingAddress [] newArray(final int size) {
            return new MaishapayShippingAddress[size];
        }
    };
}
