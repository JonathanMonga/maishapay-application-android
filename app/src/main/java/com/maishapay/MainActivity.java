package com.maishapay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Toast;

import com.maishapay.sdk.android.MaishapayConfiguration;
import com.maishapay.sdk.android.MaishapayCurrency;
import com.maishapay.sdk.android.MaishapayPayment;
import com.maishapay.sdk.android.MaishapayPaymentActivity;
import com.maishapay.sdk.android.MaishapayPaymentDetails;
import com.maishapay.sdk.android.MaishapayPaymentItem;

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

    public void onBuyThingPressed(View view) {
        MaishapayPayment thingToBuy = getThingToBuy();

        Intent intent = new Intent(this, MaishapayPaymentActivity.class);

        // send configuration to MaishapayPaymentActivity
        intent.putExtra(MaishapayPaymentActivity.EXTRA_MAISHAPAY_CONFIGURATION, configuration);

        intent.putExtra(MaishapayPaymentActivity.EXTRA_PAYMENT, thingToBuy);

        startActivityForResult(intent, REQUEST_CODE_PAYMENT);
    }

    public void onBuyManyThingsPressed(View view) {
        MaishapayPayment thingsToBuy = getStuffToBuy();

        Intent intent = new Intent(this, MaishapayPaymentActivity.class);

        // send configuration to MaishapayPaymentActivity
        intent.putExtra(MaishapayPaymentActivity.EXTRA_MAISHAPAY_CONFIGURATION, configuration);

        intent.putExtra(MaishapayPaymentActivity.EXTRA_PAYMENT, thingsToBuy);

        startActivityForResult(intent, REQUEST_CODE_PAYMENT);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (resultCode == Activity.RESULT_OK) {
            if (requestCode == REQUEST_CODE_PAYMENT) {
                Toast.makeText(this, "Payment reusie", Toast.LENGTH_LONG).show();
            }
        } else {
            Toast.makeText(this, "Payment annuler.", Toast.LENGTH_LONG).show();
        }
    }

    /**
     * Acheter une seule chose.
     */
    private MaishapayPayment getThingToBuy() {
        MaishapayPayment maishapayPayment = new MaishapayPayment("Fanta", new BigDecimal("800"), MaishapayCurrency.FC);
        maishapayPayment.description("Un sucre bralima.");
        return maishapayPayment;
    }

    /**
     * Plus de fonctionnalités.
     */
    private MaishapayPayment getStuffToBuy() {
        //Ajouter une liste d'articles et les détails sur le paiement

        MaishapayPaymentItem [] items =
                {
                        new MaishapayPaymentItem("Musta Creame", "Biscuit Musta Creame",
                                new BigDecimal("500").doubleValue(), MaishapayCurrency.FC, 1),
                        new MaishapayPaymentItem("OMO 1500 gr", "OMO de 1500 grammes",
                                new BigDecimal("7500").doubleValue(), MaishapayCurrency.FC, 2)
                };

        BigDecimal sousTotal = MaishapayPaymentItem.getItemTotal(items);
        BigDecimal transport = new BigDecimal("0"); //Si vous ne prennez pas le transport en charge, Mettez 0 comme valeur.
        BigDecimal tva = new BigDecimal("0"); //Si vous ne prennez pas le taux sur la valeur ajouetee en charge, Mettez 0 comme valeur.

        MaishapayPaymentDetails paymentDetails = new MaishapayPaymentDetails(transport, sousTotal, tva);

        //Calcul du Montant net à pqyer
        BigDecimal totalAmount = MaishapayPaymentDetails.getAmount(paymentDetails);

        MaishapayPayment payment = new MaishapayPayment("Vente", totalAmount, MaishapayCurrency.FC)
                .items(Arrays.asList(items))
                .details(paymentDetails);

        payment.description("Achat de Mr Jonathan Monga");

        return payment;
    }
}
