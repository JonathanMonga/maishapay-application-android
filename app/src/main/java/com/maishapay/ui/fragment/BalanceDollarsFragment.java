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

import java.util.ArrayList;

import butterknife.BindView;
import butterknife.ButterKnife;

/**
 * A simple {@link Fragment} subclass.
 */
public class BalanceDollarsFragment extends Fragment {
    private static final String EXTRA_SOLDE_DOLLARS = "solde";
    private static final String EXTRA_SOLDE_ENVOI = "envoi";
    private static final String EXTRA_SOLDE_RECU = "recu";

    @BindView(R.id.chart1) PieChart mChart;
    private Typeface mTfLight;

    public static BalanceDollarsFragment newInstance(int solde, int envoi, int recu) {
        BalanceDollarsFragment fragment = new BalanceDollarsFragment();

        Bundle bundle = new Bundle();
        bundle.putInt(EXTRA_SOLDE_ENVOI, envoi);
        bundle.putInt(EXTRA_SOLDE_RECU, recu);
        bundle.putInt(EXTRA_SOLDE_DOLLARS, solde);

        fragment.setArguments(bundle);
        return fragment;
    }

    public void setChartData(int solde, int envoi, int recu){
        mChart.setUsePercentValues(true);
        mChart.getDescription().setEnabled(false);
        mChart.setExtraOffsets(5, 10, 5, 5);

        mChart.setDragDecelerationFrictionCoef(0.95f);

        mChart.setCenterTextTypeface(mTfLight);

        SpannableString spannableString = new SpannableString(String.format("%d $", solde));
        spannableString.setSpan(new RelativeSizeSpan(1.7f), 0, spannableString.length(), 0);
        mChart.setCenterText(spannableString);

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

        setData(solde, envoi, recu);

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

        setChartData(getArguments().getInt(EXTRA_SOLDE_DOLLARS), getArguments().getInt(EXTRA_SOLDE_ENVOI), getArguments().getInt(EXTRA_SOLDE_RECU));
    }

    private void setData(int solde, int envoi, int recu) {
        ArrayList<PieEntry> entries = new ArrayList<>();

        if(solde > 0) {
            entries.add(new PieEntry((float) envoi < 0 ? 0 : recu, "Reçu"));
            entries.add(new PieEntry((float) envoi < 0 ? 0 : recu, "Envoyé"));
        } else {
            SpannableString spannableString = new SpannableString("Vous avez une dette.");
            spannableString.setSpan(new RelativeSizeSpan(1.7f), 0, spannableString.length(), 0);
            mChart.setCenterText(spannableString);
        }

        PieDataSet dataSet = new PieDataSet(entries, "");

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
}
