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
 * MaishapayConfiguration class
 */

public class MaishapayConfiguration implements Parcelable {

    public static String ENVIRONMENT_PRODUCTION = BuildConfig.PROD_BASE_URL;
    public static String TEST_ENVIRONMENT = BuildConfig.TEST_BASE_URL;

    /**
     * Environment of execution
     */
    private String environment;


    /**
     * L'api key du developpeur
     */
    private String devApiKey;

    public String getEnvironment() {
        return environment;
    }

    public String getDevApiKey() {
        return devApiKey;
    }

    public MaishapayConfiguration environment(String environment) {
        this.environment = environment;
        return this;
    }

    public MaishapayConfiguration devApiKey(String devApiKey) {
        this.devApiKey = devApiKey;
        return this;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(environment);
        dest.writeString(devApiKey);
    }

    public static final Creator<MaishapayConfiguration> CREATOR = new Creator<MaishapayConfiguration>() {
        @Override
        public MaishapayConfiguration createFromParcel(final Parcel source) {
            return new MaishapayConfiguration()
                    .environment(source.readString())
                    .devApiKey(source.readString());
        }

        @Override
        public MaishapayConfiguration[] newArray(final int size) {
            return new MaishapayConfiguration[size];
        }
    };
}
