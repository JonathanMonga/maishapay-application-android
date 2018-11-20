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
import android.widget.EditText;

import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class DialogUpdateFragment extends AppCompatDialogFragment {

    @BindView(R.id.ET_CodePin) EditText ET_CodePin;
    private PossitiveButtonListener buttonListener;
    private View view;

    public static DialogUpdateFragment newInstance(){
        DialogUpdateFragment dialogForgotFragment = new DialogUpdateFragment();
        Bundle bundle = new Bundle();
        dialogForgotFragment.setArguments(bundle);
        return dialogForgotFragment;
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);

        if(context instanceof PossitiveButtonListener)
            buttonListener = (PossitiveButtonListener) context;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.dialog_update_profil, container);
        ButterKnife.bind(this, view);
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        ET_CodePin.requestFocus();
        setCancelable(false);
        getDialog().getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_MODE_CHANGED);
    }

    @OnClick(R.id.BTN_Nao)
    public void negativeButton(){
        dismiss();
    }

    @OnClick(R.id.BTN_Sim)
    public void postiveButton(){
        buttonListener.positiveClicked(null, ET_CodePin.getText().toString());
        hideSoftKeyboed(view);
        dismiss();
    }

    private void hideSoftKeyboed(View view){
        InputMethodManager inputMethodManager = (InputMethodManager) MaishapayApplication.getMaishapayContext().getSystemService(Context.INPUT_METHOD_SERVICE);
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }
}
