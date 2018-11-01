package com.maishapay.ui.adapter;

import android.annotation.SuppressLint;
import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.domain.PaiementModel;

import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;

public class PaiementAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    private List<PaiementModel> paiementModels;
    private int totalTypes;
    private ItemClickedListener itemClickedListener;

    public static class HeaderHolder extends RecyclerView.ViewHolder {
        @BindView(R.id.nom) TextView nom;

        public HeaderHolder(View view) {
            super(view);
            ButterKnife.bind(this, view);
        }
    }

    public class ContentHolder extends RecyclerView.ViewHolder implements View.OnClickListener{
        @BindView(R.id.nom) TextView nom;
        @BindView(R.id.description) TextView description;
        @BindView(R.id.cardView) CardView cardView;

        public ContentHolder(View view) {
            super(view);
            ButterKnife.bind(this, view);
            cardView.setOnClickListener(this);
        }

        @Override
        public void onClick(View view) {
            itemClickedListener.clicked(getAdapterPosition());
        }
    }

    public PaiementAdapter(List<PaiementModel> paiementModels, ItemClickedListener itemClickedListener) {
        this.paiementModels = paiementModels;
        this.itemClickedListener = itemClickedListener;
        totalTypes = paiementModels.size();
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView;

        if(viewType == PaiementModel.HEADER_TYPE) {
            itemView = LayoutInflater.from(MaishapayApplication.getMaishapayContext()).inflate(R.layout.paiement_list_item_header, parent, false);
            return new HeaderHolder(itemView);
        } else {
            itemView = LayoutInflater.from(MaishapayApplication.getMaishapayContext()).inflate(R.layout.paiement_list_item_content, parent, false);
            return new ContentHolder(itemView);
        }
    }

    @Override
    public int getItemViewType(int position) {
        if(paiementModels.get(position).getType() == PaiementModel.HEADER_TYPE)
            return PaiementModel.HEADER_TYPE;
        else
            return PaiementModel.CONTENT_TYPE;
    }

    @SuppressLint({"ResourceAsColor", "NewApi"})
    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {

        PaiementModel paiementModel = paiementModels.get(position);

        if(paiementModel.getType() == PaiementModel.HEADER_TYPE){
            ((HeaderHolder)holder).nom.setText(paiementModel.getName());
        } else {
            ((ContentHolder)holder).nom.setText(paiementModel.getName());
            ((ContentHolder)holder).description.setText(paiementModel.getDescription());
        }
    }

    @Override
    public int getItemCount() {
        return totalTypes;
    }


    public interface ItemClickedListener{

        void clicked(int position);
    }
}