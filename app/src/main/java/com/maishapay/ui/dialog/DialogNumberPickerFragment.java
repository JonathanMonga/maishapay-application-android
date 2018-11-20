package com.maishapay.ui.dialog;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatDialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

import com.fxn769.Numpad;
import com.fxn769.TextGetListner;
import com.maishapay.R;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class DialogNumberPickerFragment extends AppCompatDialogFragment {
    private static final String EXTRA_DEVISE = "device";

    @BindView(R.id.num) Numpad num;
    @BindView(R.id.BTN_Sim) Button yesButton;
    @BindView(R.id.ET_Montant) TextView moneyTextView;
    @BindView(R.id.ET_Device) TextView ET_Device;

    private NumPadPossitiveButtonListener buttonListener;
    private View view;
    private static String number = "0.0";

    public static DialogNumberPickerFragment newInstance(String devise){
        DialogNumberPickerFragment dialogForgotFragment = new DialogNumberPickerFragment();
        Bundle bundle = new Bundle();
        bundle.putString(EXTRA_DEVISE, devise);
        dialogForgotFragment.setArguments(bundle);
        return dialogForgotFragment;
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        getDialog().getWindow().getAttributes().windowAnimations = R.style.DialogAnnimation;
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);

        if(context instanceof NumPadPossitiveButtonListener)
            buttonListener = (NumPadPossitiveButtonListener) context;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.dialog_number_picker, container);
        ButterKnife.bind(this, view);
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        setCancelable(false);

        ET_Device.setText(getArguments().getString(EXTRA_DEVISE));

        num.setOnTextChangeListner(new TextGetListner() {
            @Override
            public void onTextChange(String text, int digits_remaining) {
                if (text.length() == 0) {
                    moneyTextView.setText("0");
                    number = "0.0";
                } else {
                    moneyTextView.setText(text);
                    number = text;
                }
            }
        });
    }

    @OnClick(R.id.BTN_Sim)
    public void postiveButton(){
        buttonListener.numPadPositiveClicked(number);
        dismiss();
    }
}
