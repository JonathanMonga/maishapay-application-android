package com.maishapay.ui.dialog;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatDialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;

import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class DialogCountryFragment extends AppCompatDialogFragment {
    private static final String EXTRA_TELEPHONE = "telephone";

    private PossitiveCountryButtonListener buttonListener;
    private View view;

    public static DialogCountryFragment newInstance(){
        DialogCountryFragment dialogForgotFragment = new DialogCountryFragment();
        return dialogForgotFragment;
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);

        if(context instanceof PossitiveCountryButtonListener)
            buttonListener = (PossitiveCountryButtonListener) context;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.dialog_country, container);
        ButterKnife.bind(this, view);
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        setCancelable(false);
    }

    @OnClick(R.id.kenya)
    public void kenyaButtonClicked(){
        buttonListener.positiveClicked(R.id.kenya);
        dismiss();
    }

    @OnClick(R.id.rdc)
    public void kenyaButtonClicked(){
        buttonListener.positiveClicked(R.id.kenya);
        dismiss();
    }


    @OnClick(R.id.rwanda)
    public void kenyaButtonClicked(){
        buttonListener.positiveClicked(R.id.kenya);
        dismiss();
    }


    @OnClick(R.id.togo)
    public void kenyaButtonClicked(){
        buttonListener.positiveClicked(R.id.kenya);
        dismiss();
    }


    @OnClick(R.id.senegal)
    public void kenyaButtonClicked(){
        buttonListener.positiveClicked(R.id.kenya);
        dismiss();
    }


    @OnClick(R.id.cotedivoire)
    public void kenyaButtonClicked(){
        buttonListener.positiveClicked(R.id.kenya);
        dismiss();
    }
}
