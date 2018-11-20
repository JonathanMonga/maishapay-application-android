package com.maishapay.ui.dialog;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatDialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import com.maishapay.R;

import org.fabiomsr.moneytextview.MoneyTextView;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class DialogConversionFragment extends AppCompatDialogFragment {
    private static final String EXTRA_MONTANT = "montant";
    private static final String EXTRA_DEVISE= "devise";

    @BindView(R.id.TV_Conversion)
    MoneyTextView TV_Conversion;
    @BindView(R.id.BTN_Sim) Button yesButton;
    private View view;

    public static DialogConversionFragment newInstance(String montant, String device){
        DialogConversionFragment dialogForgotFragment = new DialogConversionFragment();
        Bundle bundle = new Bundle();
        bundle.putString(EXTRA_MONTANT, montant);
        bundle.putString(EXTRA_DEVISE, device);
        dialogForgotFragment.setArguments(bundle);
        return dialogForgotFragment;
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        getDialog().getWindow().getAttributes().windowAnimations = R.style.DialogAnnimation;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.dialog_conversion, container);
        ButterKnife.bind(this, view);
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        setCancelable(false);

        if(String.valueOf(String.format("%s%s", Float.valueOf(getArguments().getString(EXTRA_MONTANT)), getArguments().getString(EXTRA_DEVISE))).length() > 6){
            TV_Conversion.setBaseTextSize(35f);
            TV_Conversion.setDecimalsTextSize(25f);
            TV_Conversion.setSymbolTextSize(25f);
        }

        TV_Conversion.setAmount(Float.valueOf(getArguments().getString(EXTRA_MONTANT)), getArguments().getString(EXTRA_DEVISE));
    }

    @OnClick(R.id.BTN_Sim)
    public void postiveButton(){
        dismiss();
    }
}
