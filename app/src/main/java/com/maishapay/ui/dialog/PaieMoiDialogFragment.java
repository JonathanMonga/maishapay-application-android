package com.maishapay.ui.dialog;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatDialogFragment;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;

import com.google.zxing.WriterException;
import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.util.LogCat;

import androidmads.library.qrgenearator.QRGContents;
import androidmads.library.qrgenearator.QRGEncoder;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

import static android.content.Context.WINDOW_SERVICE;

public class PaieMoiDialogFragment extends AppCompatDialogFragment {
    private static final String EXTRA_TELEPHONE = "telephone";

    @BindView(R.id.qrcode) ImageView qrcode;
    private PossitiveButtonConfirmListener buttonListener;
    private View view;

    public static PaieMoiDialogFragment newInstance(String telephone){
        PaieMoiDialogFragment dialogForgotFragment = new PaieMoiDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString(EXTRA_TELEPHONE, telephone);
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
        view = inflater.inflate(R.layout.dialog_qrcode, container);
        ButterKnife.bind(this, view);
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        setCancelable(false);
        getDialog().getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_MODE_CHANGED);


        WindowManager manager = (WindowManager) MaishapayApplication.getMaishapayContext().getSystemService(WINDOW_SERVICE);
        Display display = manager.getDefaultDisplay();
        Point point = new Point();
        display.getSize(point);
        int width = point.x;
        int height = point.y;
        int smallerDimension = width < height ? width : height;
        smallerDimension = smallerDimension * 3 / 6;

        // Initializing the QR Encoder with your value to be encoded, type you required and Dimension
        QRGEncoder qrgEncoder = new QRGEncoder(getArguments().getString(EXTRA_TELEPHONE), null, QRGContents.Type.TEXT, smallerDimension);
        try {
            qrcode.setImageBitmap(qrgEncoder.encodeAsBitmap());
        } catch (WriterException e) {
            LogCat.e(e.toString());
        }
    }

    @OnClick(R.id.BTN_Sim)
    public void positiveButton(){
        dismiss();
    }
}
