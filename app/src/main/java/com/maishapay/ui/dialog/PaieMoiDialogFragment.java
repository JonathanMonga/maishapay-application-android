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
import android.widget.ImageView;

import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.util.Constants;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

import static android.content.Context.WINDOW_SERVICE;

public class PaieMoiDialogFragment extends AppCompatDialogFragment {
    private static final String DATA = "data";

    @BindView(R.id.qrcode) ImageView qrcode;
    private PossitiveButtonConfirmListener buttonListener;
    private View view;

    public static PaieMoiDialogFragment newInstance(String data){
        PaieMoiDialogFragment dialogForgotFragment = new PaieMoiDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString(DATA, data);
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
        view = inflater.inflate(R.layout.dialog_qrcode, container);
        ButterKnife.bind(this, view);
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        setCancelable(false);
        getDialog().getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_MODE_CHANGED);

        Constants.generateQRcode(getArguments().getString(DATA), qrcode, (WindowManager) MaishapayApplication.getMaishapayContext().getSystemService(WINDOW_SERVICE));
    }

    @OnClick(R.id.BTN_Sim)
    public void positiveButton(){
        dismiss();
    }
}
