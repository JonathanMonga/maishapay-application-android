package com.maishapay;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

import com.maishapay.sdk.android.MaishapayConfiguration;
import com.maishapay.sdk.android.MaishapayCurrency;
import com.maishapay.sdk.android.MaishapayPayment;
import com.maishapay.sdk.android.MaishapayPaymentActivity;
import com.maishapay.sdk.android.MaishapayPaymentDetails;
import com.maishapay.sdk.android.MaishapayPaymentItem;
import com.maishapay.sdk.android.MaishapayShippingAddress;

import java.math.BigDecimal;
import java.util.Arrays;

public class MainActivity extends AppCompatActivity {
    private static final String TAG = MainActivity.class.getSimpleName();
    /**
     * - Set to MaishapayConfiguration.ENVIRONMENT_PRODUCTION to move real money.
     * <p>
     * - Set to PayPalConfiguration.ENVIRONMENT_TEST to use your test credentials
     */
    private static final String CONFIG_ENVIRONMENT = MaishapayConfiguration.TEST_ENVIRONMENT;

    private static final String API_KEY = "urn:maishapay:5007819cf7ca37a1aaf5265d1defd51e5758b7fd";

    private static final int REQUEST_CODE_PAYMENT = 1;

    MaishapayConfiguration configuration = new MaishapayConfiguration()
            .environment(CONFIG_ENVIRONMENT)
            .devApiKey(API_KEY);

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void onBuyPressed(View view) {
        MaishapayPayment thingToBuy = getThingToBuy();

        Intent intent = new Intent(this, MaishapayPaymentActivity.class);

        // send configuration to MaishapayPaymentActivity
        intent.putExtra(MaishapayPaymentActivity.EXTRA_MAISHAPAY_CONFIGURATION, configuration);

        intent.putExtra(MaishapayPaymentActivity.EXTRA_PAYMENT, thingToBuy);

        startActivityForResult(intent, REQUEST_CODE_PAYMENT);
    }

    private MaishapayPayment getThingToBuy() {
        return new MaishapayPayment("100 unités airtel", new BigDecimal("1000"), MaishapayCurrency.CDF);
    }


    /**
     * Plus de fonctionnalités.
     */
    private MaishapayPayment getStuffToBuy() {
        //Ajouter une liste d'articles et les détails sur le paiement

        MaishapayPaymentItem [] items =
                {
                        new MaishapayPaymentItem("Musta Creame", "Biscuit Musta Creame",
                                new BigDecimal("500").doubleValue(), MaishapayCurrency.CDF, 1),
                };

        BigDecimal sousTotal = MaishapayPaymentItem.getItemTotal(items);
        BigDecimal transport = new BigDecimal("10000");
        BigDecimal tva = new BigDecimal("7040");

        MaishapayPaymentDetails paymentDetails = new MaishapayPaymentDetails(transport, sousTotal, tva);

        //Calcul du Montant net à pqyer
        BigDecimal totalAmount = MaishapayPaymentDetails.getAmount(paymentDetails);

        MaishapayPayment payment = new MaishapayPayment("Vente", totalAmount, MaishapayCurrency.CDF)
                .items(Arrays.asList(items))
                .details(paymentDetails);

        shippingAddress(payment);

        payment.description("Achat de Mr Jonathan Monga");

        return payment;
    }

    /**
     * Ajout de l'adresse du client
     */
    private void shippingAddress(MaishapayPayment paypalPayment) {
        MaishapayShippingAddress shippingAddress = new MaishapayShippingAddress()
                .destinataire("Mr Jonathan Monga")
                .adresse("12 Av. Kalemie Q/ Kawama C/ Ruashi")
                .ville("Lubumbashi")
                .province("Haut-Katanga")
                .codeIsoPays("CDF");

        paypalPayment.shippingAdress(shippingAddress);
    }
}
