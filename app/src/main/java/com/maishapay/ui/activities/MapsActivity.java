package com.maishapay.ui.activities;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;

import com.crashlytics.android.Crashlytics;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.maishapay.R;
import com.maishapay.model.domain.MaishapayClusterItem;
import com.maishapay.util.Constants;
import com.maishapay.util.LogCat;
import com.nightonke.boommenu.BoomButtons.BoomButton;
import com.nightonke.boommenu.BoomButtons.HamButton;
import com.nightonke.boommenu.BoomMenuButton;
import com.nightonke.boommenu.OnBoomListener;

import net.sharewire.googlemapsclustering.Cluster;
import net.sharewire.googlemapsclustering.ClusterManager;

import java.util.ArrayList;
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import io.fabric.sdk.android.Fabric;

public class MapsActivity extends AppCompatActivity implements OnMapReadyCallback {

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    @BindView(R.id.bmb)
    BoomMenuButton bmb;

    private static final LatLngBounds RDC = new LatLngBounds(new LatLng(-5.712875, 12.075148), new LatLng(2.123881, 31.274105));

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Fabric.with(this, new Crashlytics());
        setContentView(R.layout.activity_maps);
        ButterKnife.bind(this);

        if (savedInstanceState == null) {
            setupMapFragment();
        }

        toolbar.setTitle("Points Maishapay");
        setSupportActionBar(toolbar);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        HamButton.Builder builder1 = new HamButton.Builder()
                .normalImageRes(R.drawable.ic_local_branco)
                .normalColorRes(R.color.ab_default)
                .normalTextRes(R.string.atm_visa)
                .subNormalText("Tous les atms visa.");
        bmb.addBuilder(builder1);

        HamButton.Builder builder2 = new HamButton.Builder()
                .normalImageRes(R.drawable.ic_local_branco)
                .normalColorRes(R.color.ab_abastecimento)
                .normalTextRes(R.string.points_maishapay)
                .subNormalText("Points de retrait et dépos Maishapay.");
        bmb.addBuilder(builder2);

        bmb.setOnBoomListener(new OnBoomClickListener());
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                finish();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public void onMapReady(final GoogleMap googleMap) {
        googleMap.setOnMapLoadedCallback(new GoogleMap.OnMapLoadedCallback() {
            @Override
            public void onMapLoaded() {
                googleMap.animateCamera(CameraUpdateFactory.newLatLngBounds(RDC, 0));
            }
        });

        ClusterManager<MaishapayClusterItem> clusterManager = new ClusterManager<>(this, googleMap);
        clusterManager.setCallbacks(new ClusterManager.Callbacks<MaishapayClusterItem>() {
            @Override
            public boolean onClusterClick(@NonNull Cluster<MaishapayClusterItem> cluster) {
                LogCat.d("onClusterClick");
                return false;
            }

            @Override
            public boolean onClusterItemClick(@NonNull MaishapayClusterItem clusterItem) {
                LogCat.d("onClusterItemClick");
                return false;
            }
        });

        googleMap.setOnCameraIdleListener(clusterManager);

        List<MaishapayClusterItem> clusterItems = new ArrayList<>();
        /*
        for (int i = 0; i < 20000; i++) {
            clusterItems.add(new MaishapayClusterItem(RandomLocationGenerator.generate(RDC)));
        }
        */

        clusterManager.setItems(clusterItems);
    }

    private void setupMapFragment() {
        SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager().findFragmentById(R.id.map);
        mapFragment.setRetainInstance(true);
        mapFragment.getMapAsync(this);
    }

    private class OnBoomClickListener implements OnBoomListener {

        @Override
        public void onClicked(int index, BoomButton boomButton) {
            switch (index) {
                case 0: {

                }

                default: {

                }
            }
        }

        @Override
        public void onBackgroundClick() {

        }

        @Override
        public void onBoomWillHide() {

        }

        @Override
        public void onBoomDidHide() {

        }

        @Override
        public void onBoomWillShow() {

        }

        @Override
        public void onBoomDidShow() {

        }
    }
}
