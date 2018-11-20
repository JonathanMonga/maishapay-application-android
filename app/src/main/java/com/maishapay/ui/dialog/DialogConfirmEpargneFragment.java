package com.maishapay.ui.dialog;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatDialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.maishapay.R;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class DialogConfirmEpargneFragment extends AppCompatDialogFragment {
    private static final String EXTRA_MONTANT = "montant";
    private static final String EXTRA_DEVISE = "devise";

    @BindView(R.id.TV_Msg) TextView TV_Msg;
    private PossitiveButtonConfirmListener buttonListener;
    private View view;

    public static DialogConfirmEpargneFragment newInstance(String montant, String devise){
        DialogConfirmEpargneFragment dialogForgotFragment = new DialogConfirmEpargneFragment();
        Bundle bundle = new Bundle();
        bundle.putString(EXTRA_MONTANT, montant);
        bundle.putString(EXTRA_DEVISE, devise);
        dialogForgotFragment.setArguments(bundle);
        return dialogForgotFragment;
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        getDialog().getWindow().getAttributes().windowAnimations = R.style.DialogAnimation;
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
        view = inflater.inflate(R.layout.dialog_confirm_epargne, container);
        ButterKnife.bind(this, view);
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        TV_Msg.setText(String.format("Vous allez transferer %s %s vers compte epargne, confirmez-vous ce transfert ?", getArguments().getString(EXTRA_MONTANT), getArguments().getString(EXTRA_DEVISE)));
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
