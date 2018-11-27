package com.maishapay.ui.adapter;

import android.annotation.SuppressLint;
import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.client.response.TransactionItemResponse;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;

public class TransactionAdapter extends RecyclerView.Adapter<TransactionAdapter.TransactionHolder> {

    private List<TransactionItemResponse> transactionItemResponseList;

    public class TransactionHolder extends RecyclerView.ViewHolder {
        @BindView(R.id.text_category_name) TextView text_category_name;
        @BindView(R.id.TV_Montant) TextView TV_Montant;
        @BindView(R.id.TV_Telephone) TextView TV_Telephone;
        @BindView(R.id.TV_Date) TextView TV_Date;
        @BindView(R.id.image_category_icon_background) ImageView image_category_icon_background;
        @BindView(R.id.image_category_icon) ImageView image_category_icon;

        public TransactionHolder(View view) {
            super(view);
            ButterKnife.bind(this, view);
        }
    }


    public TransactionAdapter(List<TransactionItemResponse> transactionItemResponseList) {
        this.transactionItemResponseList = transactionItemResponseList;
    }

    @Override
    public TransactionHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(MaishapayApplication.getMaishapayContext()).inflate(R.layout.view_record_item, parent, false);
        return new TransactionHolder(itemView);
    }

    @SuppressLint({"ResourceAsColor", "NewApi"})
    @Override
    public void onBindViewHolder(TransactionHolder holder, int position) {

        TransactionItemResponse transactionItemResponse = transactionItemResponseList.get(position);

        if (transactionItemResponse.getType_jrn().equals("e")) {
            holder.text_category_name.setText("Envoi à");
            holder.TV_Telephone.setText(transactionItemResponse.getTelephone_dest());
            holder.TV_Montant.setText(String.format("%s %s", transactionItemResponse.getMontant_jrn(), transactionItemResponse.getMonnaie_jrn()));
            holder.TV_Montant.setTextColor(Color.parseColor("#ffff4444"));
            holder.TV_Date.setText(String.format("%s %s", transactionItemResponse.getDate_jrn(), transactionItemResponse.getHeure_jrn()));
            holder.image_category_icon.setImageResource(R.drawable.ic_menu_up);
            holder.image_category_icon_background.setImageResource(R.drawable.circle_view_envoi);
        } else {
            holder.text_category_name.setText("Reception de");
            holder.TV_Telephone.setText(transactionItemResponse.getTelephone_dest());
            holder.TV_Montant.setText(String.format("%s %s", transactionItemResponse.getMontant_jrn(), transactionItemResponse.getMonnaie_jrn()));
            holder.TV_Montant.setTextColor(Color.parseColor("#ff8bc34a"));
            holder.TV_Date.setText(String.format("%s %s", transactionItemResponse.getDate_jrn(), transactionItemResponse.getHeure_jrn()));
            holder.image_category_icon.setImageResource(R.drawable.ic_menu_down);
            holder.image_category_icon_background.setImageResource(R.drawable.circle_view_recu);
        }
    }

    @Override
    public int getItemCount() {
        return transactionItemResponseList.size();
    }
}