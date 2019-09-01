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
public class PointFragment extends Fragment implements OnChartValueSelectedListener {
    private static final String EXTRA_POINT= "point";

    @BindView(R.id.chart1) PieChart mChart;
    private Typeface mTfLight;
    private ArrayList<PieEntry> entries;
    private float mPoint;

    public static PointFragment newInstance(float point) {
        PointFragment fragment = new PointFragment();

        Bundle bundle = new Bundle();
        bundle.putFloat(EXTRA_POINT, point);

        fragment.setArguments(bundle);
        return fragment;
    }

    public void setChartData(float point){
        mPoint = point;

        mChart.setUsePercentValues(true);
        mChart.getDescription().setEnabled(false);
        mChart.setExtraOffsets(5, 10, 5, 5);

        mChart.setDragDecelerationFrictionCoef(0.95f);

        mChart.setCenterTextTypeface(mTfLight);

        SpannableString spannableString = new SpannableString(
                point > 1 ? String.format("%s Points", Constants.truncFloat(point))
                        : String.format("%s Point", Constants.truncFloat(point)));

        spannableString.setSpan(new RelativeSizeSpan(1.7f), 0, spannableString.length(), 0);
        mChart.setCenterText(spannableString);

        mChart.setOnChartValueSelectedListener(this);

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
        View view = inflater.inflate(R.layout.balance_fragment, container, false);

        ButterKnife.bind(this, view);

        mTfLight = Typeface.createFromAsset(MaishapayApplication.getMaishapayContext().getAssets(), "fonts/Roboto-Light.ttf");
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        setChartData(getArguments().getFloat(EXTRA_POINT));
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        getArguments().clear();
    }

    private void setData() {
        entries = new ArrayList<>();

        if(mPoint >= 0f) {
            entries.add(new PieEntry(mPoint, "Points"));
        } else {
            SpannableString spannableString = new SpannableString("Vous n'avez pas des points.");
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

    }

    @Override
    public void onNothingSelected() {
        setData();
    }
}
