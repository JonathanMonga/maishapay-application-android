package com.maishapay.model;

import com.paypal.android.sdk.payments.PayPalConfiguration;

/**
 * Created by davidkazad on 25/07/2018.
 */

public class Configuration {

    public static final String PAYPAL_CLIENT_ID_SANDBOX = "AV3XFYFqdLx8CRhV6H7DwdV6FetDdm4BCYL6Ysj6rtJKLZRnHgXHIfJhwxtjNCYQh0bNwa6IA8vmpgKj";
    public static final String PAYPAL_CLIENT_ID_PRODUCTION = "AbBrvX9IcljbVCDUZwVjvao4elqkpvRMuoZSEMMi0zuOPpI3wH4ruajgqdCUhuFye8Zh_eCxryfO4DSp";

    public static final int PAYPAL_REQUEST_CODE = 7171;

    public static PayPalConfiguration PAYPAL_CONFIGURATION = new PayPalConfiguration()
            .environment((PayPalConfiguration.ENVIRONMENT_SANDBOX)) //sandbox for development test
            .clientId(PAYPAL_CLIENT_ID_SANDBOX);
}
