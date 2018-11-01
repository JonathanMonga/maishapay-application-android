package com.maishapay.ui.fragment;


import android.app.ProgressDialog;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.Toast;

import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.ContactPresenter;
import com.maishapay.view.ContactView;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import de.mateware.snacky.Snacky;


/**
 * A simple {@link Fragment} subclass.
 */
public class ContactFragment extends BaseFragment<ContactPresenter, ContactView> implements ContactView{

    @BindView(R.id.ET_Assunto) EditText ET_Assunto;
    @BindView(R.id.ET_Mensagem) EditText ET_Mensagem;
    private ProgressDialog progressDialog;


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onCreateView(inflater, container, savedInstanceState);
        View view = inflater.inflate(R.layout.contact_fragment, container, false);

        ButterKnife.bind(this, view);
        return view;
    }

    @Override
    public void showNetworkError() {
        Snacky.builder()
                .setView(getView())
                .setText("Vous avez besion d'une connexion internet pour effectuer cette action!")
                .setDuration(Snacky.LENGTH_INDEFINITE)
                .setActionText("Réesseyer")
                .setActionClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        enabledControls(false);
                        getPresenter().send(UserPrefencesManager.getCurrentUser().getTelephone(), ET_Assunto.getText().toString(), ET_Mensagem.getText().toString());
                    }
                })
                .error()
                .show();
    }

    @OnClick(R.id.BTN_Envoyer)
    public void BTN_EnvoyerClicked(){
        if (TextUtils.isEmpty(ET_Assunto.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), ET_Assunto.getHint()), R.id.ET_Montant);
            return;
        }

        if (TextUtils.isEmpty(ET_Mensagem.getText().toString())) {
            toastMessage(String.format(getString(R.string.erro_campo), ET_Mensagem.getHint()), R.id.ET_Montant);
            return;
        }

        enabledControls(false);
        getPresenter().send(UserPrefencesManager.getCurrentUser().getTelephone(), ET_Assunto.getText().toString(), ET_Mensagem.getText().toString());
    }

    @Override
    public void showContactSendError(int i) {
        Snacky.builder()
                .setView(getView())
                .setText("Echec d'envoie E-mail, veuillez reessayer.")
                .setDuration(Snacky.LENGTH_LONG)
                .warning()
                .show();
    }

    @Override
    public void finishToSend() {
        Snacky.builder()
                .setView(getView())
                .setText("Votre mail est bien envoyé.")
                .setDuration(Snacky.LENGTH_LONG)
                .success()
                .show();
    }

    @Override
    public void enabledControls(boolean isEnabled) {
        if (isEnabled) {
            progressDialog.dismiss();
        } else {
            progressDialog.show();
        }
    }

    private void intProgressBar() {
        progressDialog = new ProgressDialog(getActivity());
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        progressDialog.setMessage("Veuillez patienter");
    }

    @NonNull
    @Override
    public ContactPresenter providePresenter() {
        return new ContactPresenter();
    }

    private void toastMessage(String message, int view) {
        getActivity().findViewById(view).startAnimation(AnimationUtils.loadAnimation(MaishapayApplication.getMaishapayContext(), R.anim.shake));
        Toast.makeText(MaishapayApplication.getMaishapayContext(), message, Toast.LENGTH_LONG).show();
    }
}
