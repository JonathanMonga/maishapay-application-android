package com.maishapay.ui.binder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.ahamed.multiviewadapter.BaseViewHolder;
import com.ahamed.multiviewadapter.ItemBinder;
import com.ahamed.multiviewadapter.util.ItemDecorator;
import com.maishapay.model.client.response.TransactionItemResponse;

import butterknife.ButterKnife;


public class TransactionBinder extends ItemBinder<TransactionItemResponse, TransactionBinder.ViewHolder> {

    public TransactionBinder(ItemDecorator itemDecorator) {
        super(itemDecorator);
    }

    @Override
    public ViewHolder create(LayoutInflater layoutInflater, ViewGroup parent) {
        return new ViewHolder(layoutInflater.inflate(0/*R.layout.item_car*/, parent, false));
    }

    @Override
    public void bind(ViewHolder holder, TransactionItemResponse item) {
       // holder.tvName.setText(item.getModelName());
       // holder.tvMake.setText(item.getMake());
       // holder.tvYear.setText(item.getYear());
    }

    @Override
    public boolean canBindData(Object item) {
        return item instanceof TransactionItemResponse;
    }

    @Override
    public int getSpanSize(int maxSpanCount) {
        return maxSpanCount;
    }

    static class ViewHolder extends BaseViewHolder<TransactionItemResponse> {
        private TextView tvName;
        private TextView tvMake;
        private TextView tvYear;

        ViewHolder(View itemView) {
            super(itemView);
            ButterKnife.bind(this, itemView);
        }
    }
}