package com.maishapay.sdk.android;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatDialogFragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class DialogConfirmPaymentFragment extends AppCompatDialogFragment implements View.OnClickListener {
    private static final String EXTRA_NOM = "nom";

    TextView textView;
    EditText editText;
    Button BTN_Nao;
    Button BTN_Sim;
    private PossitiveButtonConfirmListener buttonListener;
    private View view;

    public static DialogConfirmPaymentFragment newInstance(String nom) {
        DialogConfirmPaymentFragment dialogForgotFragment = new DialogConfirmPaymentFragment();
        Bundle bundle = new Bundle();
        bundle.putString(EXTRA_NOM, nom);
        dialogForgotFragment.setArguments(bundle);
        return dialogForgotFragment;
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);

        if (context instanceof PossitiveButtonConfirmListener)
            buttonListener = (PossitiveButtonConfirmListener) context;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.dialog_confirm, container);
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

        textView = view.findViewById(R.id.TV_Msg);
        editText = view.findViewById(R.id.ET_CodePin);
        BTN_Nao = view.findViewById(R.id.BTN_Nao);
        BTN_Sim = view.findViewById(R.id.BTN_Sim);

        BTN_Nao.setOnClickListener(this);
        BTN_Sim.setOnClickListener(this);

        textView.setText(String.format("Saisisez votre code PIN pour confirmer le paiement vers %s", getArguments().getString(EXTRA_NOM)));
        editText.requestFocus();
        setCancelable(false);
        getDialog().getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_MODE_CHANGED);
    }

    private void hideSoftKeyboed(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) getActivity().getSystemService(Context.INPUT_METHOD_SERVICE);
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    private void toastMessage(String message) {
        Toast.makeText(getActivity(), message, Toast.LENGTH_LONG).show();
    }

    @Override
    public void onClick(View view) {
        int i = view.getId();

        if (i == R.id.BTN_Nao) {
            dismiss();
        } else {
            if (TextUtils.isEmpty(editText.getText().toString())) {
                toastMessage("Le mot de passe est incorrect");
                return;
            }

            buttonListener.positiveClicked(editText.getText().toString());
            hideSoftKeyboed(view);
        }
    }
}
