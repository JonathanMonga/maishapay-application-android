package com.maishapay.sdk.android;

import android.annotation.SuppressLint;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.util.List;

public class ArticleAdapter extends RecyclerView.Adapter<ArticleAdapter.ArticleViewHolder> {

    private List<MaishapayPaymentItem> mPaymentItems;

    public ArticleAdapter(List<MaishapayPaymentItem> mPaymentItems) {
        this.mPaymentItems = mPaymentItems;
    }

    @Override
    public ArticleAdapter.ArticleViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_layout, parent, false);
        return new ArticleViewHolder(itemView);
    }

    @SuppressLint("DefaultLocale")
    @Override
    public void onBindViewHolder(ArticleAdapter.ArticleViewHolder holder, int position) {
        holder.nom_article.setText(mPaymentItems.get(position).getName());
        holder.quantite_article.setText(String.format("%d", mPaymentItems.get(position).getQuantity()));
        holder.prix_article.setText(String.format("%s %s", MaishapayPaymentActivity.truncFloat((float) mPaymentItems.get(position).getAmount()), mPaymentItems.get(position).getCurrencyPayment().getCurrencyName()));
    }

    @Override
    public int getItemCount() {
        return mPaymentItems.size();
    }

    public class ArticleViewHolder extends RecyclerView.ViewHolder {
        public TextView nom_article;
        public TextView quantite_article;
        public TextView prix_article;

        public ArticleViewHolder(View view) {
            super(view);
            nom_article = view.findViewById(R.id.nom_article);
            quantite_article = view.findViewById(R.id.quantite_article);
            prix_article = view.findViewById(R.id.prix_article);
        }
    }
}
