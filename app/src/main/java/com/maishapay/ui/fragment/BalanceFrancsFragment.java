package com.maishapay.ui.fragment;


import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.text.SpannableString;
import android.text.style.RelativeSizeSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.github.mikephil.charting.animation.Easing;
import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.data.PieData;
import com.github.mikephil.charting.data.PieDataSet;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.formatter.PercentFormatter;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.github.mikephil.charting.utils.MPPointF;
import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.util.LogCat;

import java.util.ArrayList;

import butterknife.BindView;
import butterknife.ButterKnife;

/**
 * A simple {@link Fragment} subclass.
 */
public class BalanceFrancsFragment extends Fragment {
    private static final String EXTRA_SOLDE_FRANCS = "solde";
    private static final String EXTRA_SOLDE_ENVOI = "envoi";
    private static final String EXTRA_SOLDE_RECU = "recu";

    @BindView(R.id.chart1) PieChart mChart;
    private Typeface mTfLight;

    public static BalanceFrancsFragment newInstance(int solde, int envoi, int recu) {

        Bundle args = new Bundle();
        args.putInt(EXTRA_SOLDE_FRANCS, solde);
        args.putInt(EXTRA_SOLDE_ENVOI, envoi);
        args.putInt(EXTRA_SOLDE_RECU, recu);

        LogCat.e("Solde franc : "+solde+" Envoi : "+envoi+" Recu :"+recu);

        BalanceFrancsFragment fragment = new BalanceFrancsFragment();
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.balance_francs_fragment, container, false);

        ButterKnife.bind(this, view);

        mTfLight = Typeface.createFromAsset(MaishapayApplication.getMaishapayContext().getAssets(), "fonts/Roboto-Light.ttf");
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

        mChart.setUsePercentValues(true);
        mChart.getDescription().setEnabled(false);
        mChart.setExtraOffsets(5, 10, 5, 5);

        mChart.setDragDecelerationFrictionCoef(0.95f);

        mChart.setCenterTextTypeface(mTfLight);
        mChart.setCenterText(generateCenterSpannableText());

        mChart.setDrawHoleEnabled(true);
        mChart.setHoleColor(Color.WHITE);

        mChart.setTransparentCircleColor(Color.WHITE);
        mChart.setTransparentCircleAlpha(110);

        mChart.setHoleRadius(58f);
        mChart.setTransparentCircleRadius(61f);

        mChart.setDrawCenterText(true);

        mChart.setRotationAngle(0);
        mChart.setRotationEnabled(true);
        mChart.setHighlightPerTapEnabled(true);

        setData();

        mChart.animateY(1400, Easing.EasingOption.EaseInBack);

        Legend l = mChart.getLegend();
        l.setVerticalAlignment(Legend.LegendVerticalAlignment.BOTTOM);
        l.setHorizontalAlignment(Legend.LegendHorizontalAlignment.CENTER);
        l.setOrientation(Legend.LegendOrientation.HORIZONTAL);
        l.setDrawInside(false);
        l.setXEntrySpace(7f);
        l.setYEntrySpace(0f);
        l.setYOffset(0f);

        mChart.setEntryLabelColor(Color.WHITE);
        mChart.setEntryLabelTypeface(mTfLight);
        mChart.setEntryLabelTextSize(12f);
    }

    private void setData() {
        ArrayList<PieEntry> entries = new ArrayList<>();

        if(! (getArguments().getInt(EXTRA_SOLDE_FRANCS) < 0)) {
            entries.add(new PieEntry((float) getArguments().getInt(EXTRA_SOLDE_RECU) < 0 ? 0 : getArguments().getInt(EXTRA_SOLDE_RECU), "Reçu"));
            entries.add(new PieEntry((float) getArguments().getInt(EXTRA_SOLDE_ENVOI) < 0 ? 0 : getArguments().getInt(EXTRA_SOLDE_ENVOI), "Envoyé"));
        } else {
            entries.add(new PieEntry((float) 100, "Dette"));
        }

        PieDataSet dataSet = new PieDataSet(entries, "Solde Francs");

        dataSet.setDrawIcons(false);

        dataSet.setSliceSpace(3f);
        dataSet.setIconsOffset(new MPPointF(0, 40));
        dataSet.setSelectionShift(5f);

        ArrayList<Integer> colors = new ArrayList<>();

        for (int c : ColorTemplate.MATERIAL_COLORS)
            colors.add(c);

        dataSet.setColors(colors);
        dataSet.setSelectionShift(0f);

        PieData data = new PieData(dataSet);
        data.setValueFormatter(new PercentFormatter());
        data.setValueTextSize(11f);
        data.setValueTextColor(Color.WHITE);
        data.setValueTypeface(mTfLight);
        mChart.setData(data);

        mChart.invalidate();
    }

    private SpannableString generateCenterSpannableText() {
        SpannableString s = new SpannableString(getArguments().getInt(EXTRA_SOLDE_FRANCS) + " Fc");
        s.setSpan(new RelativeSizeSpan(1.7f), 0, s.length(), 0);
        return s;
    }
}
