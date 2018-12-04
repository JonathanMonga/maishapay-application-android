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
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.PieData;
import com.github.mikephil.charting.data.PieDataSet;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.formatter.PercentFormatter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.listener.OnChartValueSelectedListener;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.github.mikephil.charting.utils.MPPointF;
import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.util.Constants;

import java.util.ArrayList;

import butterknife.BindView;
import butterknife.ButterKnife;

/**
 * A simple {@link Fragment} subclass.
 */
public class BalanceFrancsFragment extends Fragment implements OnChartValueSelectedListener {
    private static final String EXTRA_SOLDE_FRANCS = "solde";
    private static final String EXTRA_SOLDE_ENVOI = "envoi";
    private static final String EXTRA_SOLDE_RECU = "recu";

    @BindView(R.id.chart1) PieChart mChart;
    private Typeface mTfLight;
    private ArrayList<PieEntry> entries;
    private float mSolde;
    private float mRecu;
    private float mEnvoi;



    public static BalanceFrancsFragment newInstance(String solde, float envoi, float recu) {
        BalanceFrancsFragment fragment = new BalanceFrancsFragment();
        Bundle bundle = new Bundle();

        bundle.putFloat(EXTRA_SOLDE_ENVOI, envoi);
        bundle.putFloat(EXTRA_SOLDE_RECU, recu);
        bundle.putString(EXTRA_SOLDE_FRANCS, solde);
        fragment.setArguments(bundle);
        return fragment;
    }

    public void setChartData(String solde, float envoi, float recu) {
        mSolde = Float.valueOf(solde);
        mRecu = recu;
        mEnvoi = envoi;

        mChart.setUsePercentValues(true);
        mChart.getDescription().setEnabled(false);
        mChart.setExtraOffsets(5, 10, 5, 5);

        mChart.setDragDecelerationFrictionCoef(0.95f);

        mChart.setCenterTextTypeface(mTfLight);

        SpannableString spannableString = new SpannableString(String.format("%s Fc", Constants.truncFloat(Float.valueOf(solde))));
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

        setChartData(getArguments().getString(EXTRA_SOLDE_FRANCS), getArguments().getFloat(EXTRA_SOLDE_ENVOI), getArguments().getFloat(EXTRA_SOLDE_RECU));
    }

    private void setData() {
        entries = new ArrayList<>();

        if(mSolde >= 0f) {
            if(mRecu <= 0f && mEnvoi <= 0f) {
                entries.add(new PieEntry(100f, "Pas de transactions."));
            } else {
                entries.add(new PieEntry(mRecu < 0f ? 0f : mRecu, "Reçu"));
                entries.add(new PieEntry(mEnvoi < 0f ? 0f : mEnvoi, "Envoyé"));
            }
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

    @Override
    public void onValueSelected(Entry e, Highlight h) {
        if(((PieEntry)e).getLabel().equalsIgnoreCase("Pas de transactions.")) {
            SpannableString spannableString = new SpannableString(String.format("%s FC", Constants.truncFloat(0f)));
            spannableString.setSpan(new RelativeSizeSpan(1.7f), 0, spannableString.length(), 0);
            mChart.setCenterText(spannableString);
        } else if(((PieEntry)e).getLabel().equalsIgnoreCase("Reçu")) {
            SpannableString spannableString = new SpannableString(String.format("%s FC", Constants.truncFloat(((PieEntry)e).getValue())));
            spannableString.setSpan(new RelativeSizeSpan(1.7f), 0, spannableString.length(), 0);
            mChart.setCenterText(spannableString);
        } if(((PieEntry)e).getLabel().equalsIgnoreCase("Envoyé")) {
            SpannableString spannableString = new SpannableString(String.format("%s FC", Constants.truncFloat(((PieEntry)e).getValue())));
            spannableString.setSpan(new RelativeSizeSpan(1.7f), 0, spannableString.length(), 0);
            mChart.setCenterText(spannableString);
        }
    }

    @Override
    public void onNothingSelected() {
        SpannableString spannableString = new SpannableString(String.format("%s FC", Constants.truncFloat(mSolde)));
        spannableString.setSpan(new RelativeSizeSpan(1.7f), 0, spannableString.length(), 0);
        mChart.setCenterText(spannableString);

        setData();
    }
}
