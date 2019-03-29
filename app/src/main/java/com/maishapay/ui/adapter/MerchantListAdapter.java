package com.maishapay.ui.adapter;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.github.aakira.expandablelayout.ExpandableLayout;
import com.github.aakira.expandablelayout.ExpandableLayoutListenerAdapter;
import com.github.aakira.expandablelayout.ExpandableLinearLayout;
import com.github.aakira.expandablelayout.Utils;
import com.github.ivbaranov.mli.MaterialLetterIcon;
import com.maishapay.R;
import com.parse.ParseObject;

import java.util.List;
import java.util.Random;

import butterknife.BindView;
import butterknife.ButterKnife;

public class MerchantListAdapter extends RecyclerView.Adapter<MerchantListAdapter.ViewHolder> {
    private static final Random RANDOM = new Random();

    private final TypedValue mTypedValue = new TypedValue();
    private int mBackground;
    private List<ParseObject> mValues;
    private int[] mMaterialColors;
    private SparseBooleanArray expandState = new SparseBooleanArray();

    public MerchantListAdapter(Context context, List<ParseObject> items) {
        context.getTheme().resolveAttribute(R.attr.selectableItemBackground, mTypedValue, true);
        mMaterialColors = context.getResources().getIntArray(R.array.colors);
        mBackground = mTypedValue.resourceId;
        mValues = items;
    }

    @Override
    public MerchantListAdapter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.recycler_view_list_row, parent, false);
        view.setBackgroundResource(mBackground);
        return new MerchantListAdapter.ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull final ViewHolder holder, final int position) {

        holder.mTextView.setText(mValues.get(position).getString("NomMarchant"));
        holder.mTextView.setText(mValues.get(position).getString("NomMarchant"));
        holder.mTextView.setText(mValues.get(position).getString("NomMarchant"));

        holder.mIcon.setInitials(true);
        holder.mIcon.setInitialsNumber(2);
        holder.mIcon.setLetterSize(18);
        holder.mIcon.setShapeColor(mMaterialColors[RANDOM.nextInt(mMaterialColors.length)]);
        holder.mIcon.setLetter(mValues.get(position).getString("NomMarchant"));

        holder.expandableLayout.setInRecyclerView(true);
        holder.expandableLayout.setInterpolator(Utils.createInterpolator(Utils.DECELERATE_INTERPOLATOR));
        holder.expandableLayout.setExpanded(expandState.get(position));
        holder.expandableLayout.setListener(new ExpandableLayoutListenerAdapter() {
            @Override
            public void onPreOpen() {
                holder.createRotateAnimator(holder.buttonLayout, 0f, 180f).start();
                expandState.put(position, true);
            }

            @Override
            public void onPreClose() {
                holder.createRotateAnimator(holder.buttonLayout, 180f, 0f).start();
                expandState.put(position, false);
            }
        });

        holder.buttonLayout.setRotation(expandState.get(position) ? 180f : 0f);
        holder.buttonLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(final View v) {
                onClickButton(holder.expandableLayout);
            }
        });
    }

    private void onClickButton(final ExpandableLayout expandableLayout) {
        expandableLayout.toggle();
    }

    @Override
    public int getItemCount() {
        return mValues.size();
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        @BindView(R.id.icon)
        MaterialLetterIcon mIcon;
        @BindView(R.id.text1)
        TextView mTextView;
        @BindView(R.id.button)
        LinearLayout buttonLayout;
        @BindView(R.id.expandableLayout)
        ExpandableLinearLayout expandableLayout;

        public ViewHolder(View view) {
            super(view);
            ButterKnife.bind(this, view);
        }

        public ObjectAnimator createRotateAnimator(final View target, final float from, final float to) {
            ObjectAnimator animator = ObjectAnimator.ofFloat(target, "rotation", from, to);
            animator.setDuration(300);
            animator.setInterpolator(Utils.createInterpolator(Utils.LINEAR_INTERPOLATOR));
            return animator;
        }
    }
}