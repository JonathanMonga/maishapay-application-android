package com.maishapay.ui.dialog;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatDialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.maishapay.R;

import butterknife.ButterKnife;
import butterknife.OnClick;

public class DialogConfirmCreationEpargneFragment extends AppCompatDialogFragment {

    private PossitiveButtonConfirmListener buttonListener;
    private View view;

    public static DialogConfirmCreationEpargneFragment newInstance(){
        DialogConfirmCreationEpargneFragment dialogForgotFragment = new DialogConfirmCreationEpargneFragment();
        Bundle bundle = new Bundle();
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
        view = inflater.inflate(R.layout.dialog_confirm_creation_epargne, container);
        ButterKnife.bind(this, view);
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        setCancelable(false);
    }

    @OnClick(R.id.BTN_Nao)
    public void negativeButton(){
        dismiss();
    }

    @OnClick(R.id.BTN_Sim)
    public void positiveButton(){
        buttonListener.positiveClicked(null);
    }
}
