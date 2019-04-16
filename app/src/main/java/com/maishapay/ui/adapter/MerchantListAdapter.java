package com.maishapay.ui.adapter;

import android.Manifest;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.text.util.Linkify;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;

import com.github.aakira.expandablelayout.ExpandableLayout;
import com.github.aakira.expandablelayout.ExpandableLayoutListenerAdapter;
import com.github.aakira.expandablelayout.ExpandableLinearLayout;
import com.github.ivbaranov.mli.MaterialLetterIcon;
import com.maishapay.R;
import com.parse.ParseObject;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import butterknife.BindView;
import butterknife.ButterKnife;
import me.saket.bettermovementmethod.BetterLinkMovementMethod;

public class MerchantListAdapter extends RecyclerView.Adapter<MerchantListAdapter.ViewHolder> implements Filterable {
    private static final Random RANDOM = new Random();

    private final TypedValue mTypedValue = new TypedValue();
    private int mBackground;
    private List<ParseObject> mValues;
    private List<ParseObject> mValuesFiltered;
    private int[] mMaterialColors;
    private Context mContext;
    private SparseBooleanArray expandState = new SparseBooleanArray();

    public MerchantListAdapter(Context context, List<ParseObject> items) {
        mContext = context;
        context.getTheme().resolveAttribute(R.attr.selectableItemBackground, mTypedValue, true);
        mMaterialColors = context.getResources().getIntArray(R.array.colors);
        mBackground = mTypedValue.resourceId;
        mValues = items;
        mValuesFiltered = items;
    }

    @Override
    public MerchantListAdapter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.recycler_view_list_row, parent, false);
        view.setBackgroundResource(mBackground);
        return new MerchantListAdapter.ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull final ViewHolder holder, @SuppressLint("RecyclerView") final int position) {
        ParseObject parseObject = mValuesFiltered.get(position);

        holder.mTextView.setText(parseObject.getString("NomMarchant"));
        holder.location.setText(parseObject.getString("Adresse"));
        holder.service.setText(parseObject.getString("Service"));
        holder.telephone.setText(parseObject.getString("Telephone") == null || TextUtils.isEmpty(parseObject.getString("Telephone")) ? "Pas disponible." : parseObject.getString("Telephone"));

        holder.mIcon.setInitials(true);
        holder.mIcon.setInitialsNumber(1);
        holder.mIcon.setLetterSize(18);
        holder.mIcon.setShapeColor(mMaterialColors[RANDOM.nextInt(mMaterialColors.length)]);
        holder.mIcon.setLetter(parseObject.getString("NomMarchant"));

        holder.expandableLayout.setInRecyclerView(true);
        holder.expandableLayout.setExpanded(expandState.get(position));
        holder.expandableLayout.setListener(new ExpandableLayoutListenerAdapter() {
            @Override
            public void onPreOpen() {
                expandState.put(position, true);
            }

            @Override
            public void onPreClose() {
                expandState.put(position, false);
            }
        });

        holder.buttonLayout.setOnClickListener(v -> onClickButton(holder.expandableLayout));
    }

    private void onClickButton(final ExpandableLayout expandableLayout) {
        expandableLayout.toggle();
    }

    @Override
    public int getItemCount() {
        return mValuesFiltered.size();
    }

    @Override
    public Filter getFilter() {
        return new Filter() {
            @Override
            protected FilterResults performFiltering(CharSequence charSequence) {
                String charString = charSequence.toString();
                if (charString.isEmpty()) {
                    mValuesFiltered = mValues;
                } else {
                    List<ParseObject> filteredList = new ArrayList<>();
                    for (ParseObject row : mValues) {

                        // name match condition. this might differ depending on your requirement
                        // here we are looking for name or phone number match
                        if (row.getString("NomMarchant").toLowerCase().contains(charString.toLowerCase()) || row.getString("Adresse").contains(charSequence)) {
                            filteredList.add(row);
                        }
                    }

                    mValuesFiltered = filteredList;
                }

                FilterResults filterResults = new FilterResults();
                filterResults.values = mValuesFiltered;
                return filterResults;
            }

            @Override
            protected void publishResults(CharSequence charSequence, FilterResults filterResults) {
                mValuesFiltered = (List<ParseObject>) filterResults.values;
                notifyDataSetChanged();
            }
        };
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        @BindView(R.id.icon)
        MaterialLetterIcon mIcon;
        @BindView(R.id.text1)
        TextView mTextView;
        @BindView(R.id.button)
        CardView buttonLayout;
        @BindView(R.id.expandableLayout)
        ExpandableLinearLayout expandableLayout;
        @BindView(R.id.location)
        TextView location;
        @BindView(R.id.service)
        TextView service;
        @BindView(R.id.telephone)
        TextView telephone;

        public ViewHolder(View view) {
            super(view);
            ButterKnife.bind(this, view);
        }
    }

    private static boolean isPhoneNumber(String url) {
        return url.startsWith("tel:");
    }
}