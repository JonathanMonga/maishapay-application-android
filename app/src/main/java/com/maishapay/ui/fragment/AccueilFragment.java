package com.maishapay.ui.fragment;


import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;

import com.afollestad.materialdialogs.MaterialDialog;
import com.google.firebase.auth.FirebaseAuth;
import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.domain.UserDataPreference;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.notification.service.MaishapayService;
import com.maishapay.presenter.AccueilPresenter;
import com.maishapay.ui.activities.ConversionActivity;
import com.maishapay.ui.activities.EpargneActivity;
import com.maishapay.ui.activities.EpargnePersonnelleActivity;
import com.maishapay.ui.activities.OuvrirEpargnePersonnelleActivity;
import com.maishapay.ui.activities.PaiementActivity;
import com.maishapay.ui.activities.RetraitActivity;
import com.maishapay.ui.activities.TransactionActivity;
import com.maishapay.ui.activities.TransfertCompteActivity;
import com.maishapay.ui.activities.TransfertCompteCashActivity;
import com.maishapay.ui.adapter.HeaderPagerAdapter;
import com.maishapay.ui.dialog.PaieMoiDialogFragment;
import com.maishapay.view.AccueilView;
import com.nightonke.boommenu.BoomButtons.BoomButton;
import com.nightonke.boommenu.BoomButtons.HamButton;
import com.nightonke.boommenu.BoomMenuButton;
import com.nightonke.boommenu.OnBoomListener;
import com.rd.PageIndicatorView;
import com.rd.animation.type.AnimationType;
import com.rd.draw.data.Orientation;
import com.rd.draw.data.RtlMode;

import org.alfonz.utility.NetworkUtility;
import org.fabiomsr.moneytextview.MoneyTextView;

import java.util.ArrayList;
import java.util.List;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cn.trinea.android.view.autoscrollviewpager.AutoScrollViewPager;
import de.mateware.snacky.Snacky;


public class AccueilFragment extends BaseFragment<AccueilPresenter, AccueilView> implements AccueilView {

    @BindView(R.id.progressBarSolde)
    ProgressBar progressBarSolde;
    @BindView(R.id.progressBarTaux)
    ProgressBar progressBarTaux;
    @BindView(R.id.taux)
    LinearLayout taux;
    @BindView(R.id.TV_Taux)
    MoneyTextView TV_Taux;
    @BindView(R.id.pageIndicatorView)
    PageIndicatorView pageIndicatorView;
    @BindView(R.id.viewPager)
    AutoScrollViewPager pager;
    @BindView(R.id.bmb)
    BoomMenuButton bmb;
    private FirebaseAuth mAuth;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onCreateView(inflater, container, savedInstanceState);
        View view = inflater.inflate(R.layout.accueil_fragment, container, false);
        ButterKnife.bind(this, view);

        getContext().startService(new Intent(getContext(), MaishapayService.class));

        mAuth = FirebaseAuth.getInstance();

        updateIndicator();
        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        pager.startAutoScroll();

        HamButton.Builder builder1 = new HamButton.Builder()
                .normalImageRes(R.drawable.epargne)
                .normalColorRes(R.color.ab_default)
                .normalTextRes(R.string.compte_epargne)
                .subNormalTextRes(R.string.sub_ouvrir_compte);
        bmb.addBuilder(builder1);

        HamButton.Builder builder2 = new HamButton.Builder()
                .normalImageRes(R.drawable.ic_despesa_branco)
                .normalColorRes(R.color.ab_abastecimento)
                .normalTextRes(R.string.retrait_argent)
                .subNormalTextRes(R.string.sub_retrait_argent);
        bmb.addBuilder(builder2);

        HamButton.Builder builder3 = new HamButton.Builder()
                .normalImageRes(R.drawable.ic_conversion)
                .normalColorRes(R.color.ab_despesa)
                .normalTextRes(R.string.taux_echange)
                .subNormalTextRes(R.string.sub_taux_jours);
        bmb.addBuilder(builder3);

        HamButton.Builder builder4 = new HamButton.Builder()
                .normalImageRes(R.drawable.ic_payment)
                .normalColorRes(R.color.ab_percurso)
                .normalTextRes(R.string.paie_moi)
                .subNormalTextRes(R.string.sub_paie_moi);
        bmb.addBuilder(builder4);


        bmb.setOnBoomListener(new OnBoomListener() {
            public PaieMoiDialogFragment paieMoiDialogFragment;

            @Override
            public void onClicked(int index, BoomButton boomButton) {
                switch (index) {
                    case 0: {
                        new Handler().postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                if (!UserPrefencesManager.getLastSoldeAndRapport().isHasEpargneCompte())
                                    startActivity(new Intent(MaishapayApplication.getMaishapayContext(), OuvrirEpargnePersonnelleActivity.class));
                                else
                                    startActivity(new Intent(MaishapayApplication.getMaishapayContext(), EpargneActivity.class));
                            }
                        }, 430);
                        break;
                    }

                    case 1: {
                        new Handler().postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                startActivity(new Intent(MaishapayApplication.getMaishapayContext(), RetraitActivity.class));
                            }
                        }, 430);
                        break;
                    }

                    case 2: {
                        new Handler().postDelayed(new Runnable() {
                            @Override
                            public void run() {
                                startActivity(new Intent(MaishapayApplication.getMaishapayContext(), ConversionActivity.class));
                            }
                        }, 430);
                        break;
                    }

                    default: {
                        FragmentManager fm = getChildFragmentManager();
                        paieMoiDialogFragment = PaieMoiDialogFragment.newInstance(UserPrefencesManager.getCurrentUser().getTelephone());
                        paieMoiDialogFragment.show(fm, "PaieMoiDialogFragment");
                    }
                }
            }

            @Override
            public void onBackgroundClick() {

            }

            @Override
            public void onBoomWillHide() {

            }

            @Override
            public void onBoomDidHide() {

            }

            @Override
            public void onBoomWillShow() {

            }

            @Override
            public void onBoomDidShow() {

            }
        });

        taux.setVisibility(View.INVISIBLE);
        progressBarSolde.setVisibility(View.VISIBLE);
        progressBarTaux.setVisibility(View.VISIBLE);
        getPresenter().tauxAndEpargne(UserPrefencesManager.getCurrentUser().getTelephone());
        getPresenter().solde(UserPrefencesManager.getCurrentUser().getTelephone());
    }

    @OnClick({R.id.paiementCardId})
    public void paiementCardIdClicked() {
        startActivity(new Intent(MaishapayApplication.getMaishapayContext(), PaiementActivity.class));
    }


    @OnClick({R.id.epargneCardId})
    public void epargneClicked() {
        startActivity(new Intent(MaishapayApplication.getMaishapayContext(), EpargneActivity.class));
    }

    @OnClick({R.id.transactionCardId})
    public void transactionCardIdClicked() {
        startActivity(new Intent(MaishapayApplication.getMaishapayContext(), TransactionActivity.class));
    }

    @OnClick({R.id.bankcardId})
    public void transfertClicked() {
        new MaterialDialog.Builder(getActivity())
                .title("Type des transferts")
                .items(R.array.option_transfert)
                .itemsCallback(new MaterialDialog.ListCallback() {
                    @Override
                    public void onSelection(MaterialDialog dialog, View itemView, int position, CharSequence text) {
                        switch (position) {
                            case 0: {
                                startActivity(new Intent(MaishapayApplication.getMaishapayContext(), TransfertCompteActivity.class));
                                break;
                            }

                            case 1: {
                                startActivity(new Intent(MaishapayApplication.getMaishapayContext(), TransfertCompteCashActivity.class));
                                break;
                            }

                            default: {
                                startActivity(new Intent(MaishapayApplication.getMaishapayContext(), EpargnePersonnelleActivity.class));
                                break;
                            }
                        }
                    }
                })
                .show();
    }

    @Override
    public void showNetworkError() {
        if (! NetworkUtility.isOnline(MaishapayApplication.getMaishapayContext())) {
            if (UserPrefencesManager.getLastSoldeAndRapport() != null) {
                taux.setVisibility(View.VISIBLE);
                progressBarSolde.setVisibility(View.INVISIBLE);
                progressBarTaux.setVisibility(View.INVISIBLE);

                UserDataPreference userDataPreference = UserPrefencesManager.getLastSoldeAndRapport();

                TV_Taux.setAmount(Float.valueOf(String.valueOf(userDataPreference.getTaux())));

                HeaderPagerAdapter adapter = new HeaderPagerAdapter(getChildFragmentManager());

                List<Fragment> pageList = new ArrayList<>();
                pageList.add(BalanceFrancsFragment.newInstance(userDataPreference.getSoldeFrancs(), userDataPreference.getEnvoiFrancs(), userDataPreference.getRecuFrancs()));
                pageList.add(BalanceDollarsFragment.newInstance(userDataPreference.getSoldeDollars(), userDataPreference.getEnvoiDollars(), userDataPreference.getRecuDollars()));

                adapter.setData(pageList);

                pager.setInterval(5000);
                pager.startAutoScroll();
                pager.setAdapter(adapter);
                adapter.notifyDataSetChanged();
            }
        } else {
            Snacky.builder()
                    .setView(getView())
                    .setText("Vous avez besion d'une connexion internet pour effectuer cette action!")
                    .setDuration(Snacky.LENGTH_INDEFINITE)
                    .setActionText("Réesseyer")
                    .setActionClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View view) {
                            enabledControls(false);
                            getPresenter().solde(UserPrefencesManager.getCurrentUser().getTelephone());
                            getPresenter().tauxAndEpargne(UserPrefencesManager.getCurrentUser().getTelephone());
                        }
                    })
                    .error()
                    .show();
        }
    }

    @Override
    public void finishToLoadSoldeAndRappot(UserDataPreference response) {

        progressBarSolde.setVisibility(View.INVISIBLE);
        HeaderPagerAdapter adapter = new HeaderPagerAdapter(getChildFragmentManager());

        List<Fragment> pageList = new ArrayList<>();
        pageList.add(BalanceFrancsFragment.newInstance(response.getSoldeFrancs(), response.getEnvoiFrancs(), response.getRecuFrancs()));
        pageList.add(BalanceDollarsFragment.newInstance(response.getSoldeDollars(), response.getEnvoiDollars(), response.getRecuDollars()));

        adapter.setData(pageList);

        pager.setInterval(5000);
        pager.startAutoScroll();
        pager.setAdapter(adapter);
        adapter.notifyDataSetChanged();
    }


    @Override
    public void finishToLoadTauxAndEpargne(UserDataPreference response) {
        progressBarTaux.setVisibility(View.INVISIBLE);
        taux.setVisibility(View.VISIBLE);
        TV_Taux.setAmount(Float.valueOf(String.valueOf(response.getTaux())));
    }

    @Override
    public void enabledControls(boolean flag) {

    }

    @NonNull
    @Override
    public AccueilPresenter providePresenter() {
        return new AccueilPresenter();
    }


    private void updateIndicator() {
        pageIndicatorView.setAnimationType(AnimationType.SWAP);
        pageIndicatorView.setOrientation(Orientation.HORIZONTAL);
        pageIndicatorView.setRtlMode(RtlMode.Auto);
        pageIndicatorView.setInteractiveAnimation(true);
        pageIndicatorView.setAutoVisibility(true);
        pageIndicatorView.setFadeOnIdle(false);
        pageIndicatorView.setAnimationDuration(500);
        pageIndicatorView.setIdleDuration(500);
    }

    @Override
    public void onPause() {
        super.onPause();
        pager.stopAutoScroll();
    }
}
