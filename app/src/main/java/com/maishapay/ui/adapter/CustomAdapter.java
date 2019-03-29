package com.maishapay.ui.adapter;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import com.maishapay.R;

import java.util.List;

public class CustomAdapter extends ArrayAdapter<String> {

    private List<String> data;
    LayoutInflater inflater;

    public CustomAdapter(Activity activity, int textViewResourceId, List<String> data) {
        super(activity, textViewResourceId, data);

        this.data = data;
        inflater = (LayoutInflater) activity.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    }

    @Override
    public View getDropDownView(int position, View convertView, ViewGroup parent) {
        return getCustomView(position, convertView, parent);
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        return getCustomView(position, convertView, parent);
    }

    public View getCustomView(int position, View convertView, ViewGroup parent) {
        View row = inflater.inflate(R.layout.spinner_rows, parent, false);

        TextView label = row.findViewById(R.id.BouquetName);
        String name = data.get(position);

        label.setText(name);

        return row;
    }
}
