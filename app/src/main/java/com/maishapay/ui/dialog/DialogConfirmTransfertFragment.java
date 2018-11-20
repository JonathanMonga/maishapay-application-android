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
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.wajahatkarim3.easyvalidation.core.Validator;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class DialogConfirmTransfertFragment extends AppCompatDialogFragment {
    private static final String EXTRA_PRENOM = "prenom";
    private static final String EXTRA_NOM = "nom";

    @BindView(R.id.TV_Msg) TextView textView;
    @BindView(R.id.ET_CodePin) EditText editText;
    @BindView(R.id.BTN_Nao) Button cancelButton;
    @BindView(R.id.BTN_Sim) Button yesButton;
    private PossitiveButtonConfirmListener buttonListener;
    private View view;

    public static DialogConfirmTransfertFragment newInstance(String prenom, String nom){
        DialogConfirmTransfertFragment dialogForgotFragment = new DialogConfirmTransfertFragment();
        Bundle bundle = new Bundle();
        bundle.putString(EXTRA_PRENOM, prenom);
        bundle.putString(EXTRA_NOM, nom);
        dialogForgotFragment.setArguments(bundle);
        return dialogForgotFragment;
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);

        if(context instanceof PossitiveButtonConfirmListener)
            buttonListener = (PossitiveButtonConfirmListener) context;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.dialog_confirm_transfert, container);
        ButterKnife.bind(this, view);
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        textView.setText(String.format("Saisisez votre code PIN pour envoyer l'argent à %s %s", getArguments().getString(EXTRA_PRENOM), getArguments().getString(EXTRA_NOM)));
        editText.requestFocus();
        setCancelable(false);
        getDialog().getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_MODE_CHANGED);
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        getDialog().getWindow().getAttributes().windowAnimations = R.style.DialogAnimation;
    }

    @OnClick(R.id.BTN_Nao)
    public void negativeButton(){
        dismiss();
    }

    @OnClick(R.id.BTN_Sim)
    public void positiveButton(){
        boolean validator = new Validator(editText.getText().toString())
                .nonEmpty()
                .onlyNumbers()
                .check();

        if (!validator) {
            toastMessage("Le mot de passe est incorrect");
            return;
        }

        buttonListener.positiveClicked(editText.getText().toString());
        hideSoftKeyboed(view);
    }

    private void hideSoftKeyboed(View view){
        InputMethodManager inputMethodManager = (InputMethodManager) MaishapayApplication.getMaishapayContext().getSystemService(Context.INPUT_METHOD_SERVICE);
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    private void toastMessage(String message) {
        getView().startAnimation(AnimationUtils.loadAnimation(getActivity(), R.anim.shake));
        Toast.makeText(getActivity(), message, Toast.LENGTH_LONG).show();
    }
}
