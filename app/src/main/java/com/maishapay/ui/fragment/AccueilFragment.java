package com.maishapay.ui.fragment;


import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;

import com.afollestad.materialdialogs.MaterialDialog;
import com.google.firebase.auth.FirebaseAuth;
import com.google.gson.Gson;
import com.maishapay.R;
import com.maishapay.app.MaishapayApplication;
import com.maishapay.model.client.response.UserResponse;
import com.maishapay.model.domain.QRCodeDataUser;
import com.maishapay.model.domain.UserDataPreference;
import com.maishapay.model.prefs.UserPrefencesManager;
import com.maishapay.presenter.AccueilPresenter;
import com.maishapay.service.MaishapayService;
import com.maishapay.ui.activities.ConversionActivity;
import com.maishapay.ui.activities.EpargneActivity;
import com.maishapay.ui.activities.PaiementActivity;
import com.maishapay.ui.activities.RetraitActivity;
import com.maishapay.ui.activities.TransactionActivity;
import com.maishapay.ui.activities.TransfertCompteActivity;
import com.maishapay.ui.activities.TransfertCompteCashActivity;
import com.maishapay.ui.adapter.HeaderPagerAdapter;
import com.maishapay.ui.dialog.PaieMoiDialogFragment;
import com.maishapay.ui.menu.MenuHelper;
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
    @BindView(R.id.TV_Francs)
    MoneyTextView TV_Francs;
    @BindView(R.id.TV_Dollars)
    MoneyTextView TV_Dollars;
    @BindView(R.id.pageIndicatorView)
    PageIndicatorView pageIndicatorView;
    @BindView(R.id.viewPager)
    AutoScrollViewPager pager;
    @BindView(R.id.bmb)
    BoomMenuButton bmb;
    private FirebaseAuth mAuth;
    private ProgressDialog progressDialog;
    public PaieMoiDialogFragment paieMoiDialogFragment;

    private MenuHelper menuHelper;
    private BalanceFrancsFragment balanceFrancsFragment;
    private BalanceDollarsFragment balanceDollarsFragment;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onCreateView(inflater, container, savedInstanceState);
        View view = inflater.inflate(R.layout.accueil_fragment, container, false);
        ButterKnife.bind(this, view);

        setHasOptionsMenu(true);

        getContext().startService(new Intent(getContext(), MaishapayService.class));

        menuHelper = new MenuHelper();

        mAuth = FirebaseAuth.getInstance();

        updateIndicator();
        initProgressBar();

        return view;
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

        balanceFrancsFragment = BalanceFrancsFragment.newInstance();
        balanceDollarsFragment = BalanceDollarsFragment.newInstance();

        HeaderPagerAdapter adapter = new HeaderPagerAdapter(getChildFragmentManager());

        List<Fragment> pageList = new ArrayList<>();
        pageList.add(balanceFrancsFragment);
        pageList.add(balanceDollarsFragment);

        adapter.setData(pageList);

        pager.setInterval(5000);
        pager.startAutoScroll();
        pager.setAdapter(adapter);
        adapter.notifyDataSetChanged();

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

        bmb.setOnBoomListener(new OnBoomClickListener());
    }

    @Override
    public void onResume() {
        super.onResume();

        if (NetworkUtility.isOnline(MaishapayApplication.getMaishapayContext())) {
            taux.setVisibility(View.VISIBLE);
            progressBarSolde.setVisibility(View.VISIBLE);
            progressBarTaux.setVisibility(View.VISIBLE);
            getPresenter().solde(UserPrefencesManager.getCurrentUser().getTelephone());
        } else {
            if (UserPrefencesManager.getUserDataPreference() != null) {
                taux.setVisibility(View.INVISIBLE);
                progressBarSolde.setVisibility(View.INVISIBLE);
                progressBarTaux.setVisibility(View.INVISIBLE);

                UserDataPreference userDataPreference = UserPrefencesManager.getUserDataPreference();

                TV_Dollars.setAmount(userDataPreference.getSoldeDollars());
                TV_Francs.setAmount(userDataPreference.getSoldeFrancs());
                TV_Taux.setAmount(Float.valueOf(String.valueOf(userDataPreference.getTaux())));

                balanceFrancsFragment.setChartDat(userDataPreference.getSoldeFrancs(), userDataPreference.getEnvoiFrancs(), userDataPreference.getRecuFrancs());
                balanceDollarsFragment.setChartDat(userDataPreference.getSoldeDollars(), userDataPreference.getEnvoiDollars(), userDataPreference.getRecuDollars());
            } else {
                onNetworkError();
            }
        }
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
                                startActivity(new Intent(MaishapayApplication.getMaishapayContext(), EpargneActivity.class));
                                break;
                            }
                        }
                    }
                })
                .show();
    }

    @Override
    public void finishToLoadSoldeAndRappot(UserDataPreference userDataPreference) {
        getPresenter().taux();

        progressBarSolde.setVisibility(View.INVISIBLE);
        progressBarTaux.setVisibility(View.INVISIBLE);

        TV_Dollars.setAmount(userDataPreference.getSoldeDollars());
        TV_Francs.setAmount(userDataPreference.getSoldeFrancs());

        balanceFrancsFragment.setChartDat(userDataPreference.getSoldeFrancs(), userDataPreference.getEnvoiFrancs(), userDataPreference.getRecuFrancs());
        balanceDollarsFragment.setChartDat(userDataPreference.getSoldeDollars(), userDataPreference.getEnvoiDollars(), userDataPreference.getRecuDollars());
    }

    @Override
    public void finishToLoadTaux() {
        menuHelper.stopLoading();
        taux.setVisibility(View.VISIBLE);
        progressBarTaux.setVisibility(View.INVISIBLE);
        TV_Taux.setAmount(Float.valueOf(String.valueOf(UserPrefencesManager.getUserDataPreference().getTaux())));
    }

    @Override
    public void enabledControls(boolean isEnabled) {
        if (isEnabled) {
            menuHelper.stopLoading();
            progressBarSolde.setVisibility(View.INVISIBLE);
            progressBarTaux.setVisibility(View.INVISIBLE);
        } else {
            menuHelper.startLoading();
            progressBarSolde.setVisibility(View.VISIBLE);
            progressBarTaux.setVisibility(View.VISIBLE);
        }
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
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        menuHelper.onCreateOptionsMenu(inflater, menu, true);
        super.onCreateOptionsMenu(menu, inflater);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {

        switch (item.getItemId()) {

            case R.id.action_rafrechir: {
                menuHelper.setMenuItem(item);
                menuHelper.startLoading();

                taux.setVisibility(View.INVISIBLE);
                progressBarSolde.setVisibility(View.VISIBLE);
                progressBarTaux.setVisibility(View.VISIBLE);
                getPresenter().solde(UserPrefencesManager.getCurrentUser().getTelephone());
            }

            default:
                return super.onOptionsItemSelected(item);
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        pager.stopAutoScroll();
    }

    private void initProgressBar() {
        progressDialog = new ProgressDialog(getActivity());
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        progressDialog.setMessage("Veuillez patienter");
    }

    @Override
    public void onUnknownError(String errorMessage) {
        enabledControls(true);

        Snacky.builder()
                .setView(getView())
                .setText("Aucune connexion réseau. Réessayez plus tard.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    @Override
    public void onTimeout() {
        enabledControls(true);

        Snacky.builder()
                .setView(getView())
                .setText("Aucune connexion réseau. Réessayez plus tard.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    @Override
    public void onNetworkError() {
        enabledControls(true);

        Snacky.builder()
                .setView(getView())
                .setText("Aucune connexion réseau. Réessayez plus tard.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    private class OnBoomClickListener implements OnBoomListener {

        @Override
        public void onClicked(int index, BoomButton boomButton) {
            switch (index) {
                case 0: {
                    new Handler().postDelayed(new Runnable() {
                        @Override
                        public void run() {
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
                    UserResponse userResponse = UserPrefencesManager.getCurrentUser();

                    FragmentManager fm = getChildFragmentManager();

                    QRCodeDataUser qrCodeDataUser = new QRCodeDataUser();
                    qrCodeDataUser.setTelephone(userResponse.getTelephone());
                    qrCodeDataUser.setNom(userResponse.getNom());
                    qrCodeDataUser.setPrenom(userResponse.getPrenom());

                    paieMoiDialogFragment = PaieMoiDialogFragment.newInstance(new Gson().toJson(qrCodeDataUser, QRCodeDataUser.class));
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
    }
}
