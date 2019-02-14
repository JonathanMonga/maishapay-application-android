/*
 * Copyright 2018 Jonathan Monga.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.maishapay.ui.activities;

import android.support.annotation.NonNull;

import com.maishapay.model.client.response.UserResponse;
import com.maishapay.presenter.LoginPresenter;
import com.maishapay.view.LoginView;

public class MaishapayLoginActivity extends BaseActivity<LoginPresenter, LoginView> implements LoginView {
    @Override
    public void showLoginError(int type) {

    }

    @Override
    public void showForgotError(int type) {

    }

    @Override
    public void finishToLogin(UserResponse response) {

    }

    @Override
    public void finishToForgot() {

    }

    @Override
    public void onUnknownError(String errorMessage) {

    }

    @Override
    public void onTimeout() {

    }

    @Override
    public void onNetworkError() {

    }

    @Override
    public void enabledControls(boolean flag) {

    }

    @NonNull
    @Override
    public LoginPresenter providePresenter() {
        return null;
    }
/*
    private FirebaseAuth mAuth;

    private static final int FRAMEWORK_REQUEST_CODE = 1;
    private int nextPermissionsRequestCode = 4000;
    @SuppressLint("UseSparseArrays")
    private final Map<Integer, OnCompleteListener> permissionsListeners = new HashMap<>();
    private AccountKitConfiguration.AccountKitConfigurationBuilder configurationBuilder;

    private interface OnCompleteListener {
        void onComplete();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.maishapay_login_activity);
        ButterKnife.bind(this);

        if (AccountKit.getCurrentAccessToken() != null && savedInstanceState == null) {
            startActivity(new Intent(this, DrawerActivity.class));
            finish();
        }

        configurationBuilder = new AccountKitConfiguration.AccountKitConfigurationBuilder(LoginType.PHONE, AccountKitActivity.ResponseType.TOKEN);

        if (UserPrefencesManager.getCurrentUser() != null) {

            String userPhone = UserPrefencesManager.getCurrentUser().getTelephone().substring(3, UserPrefencesManager.getCurrentUser().getTelephone().length());
            String userCodePhone = UserPrefencesManager.getCurrentUser().getTelephone().substring(0, 3);
            PhoneNumber phoneNumber = new PhoneNumber(userCodePhone, userPhone, "CD");
            configurationBuilder.setInitialPhoneNumber(phoneNumber);

            onLogin();
        } else {
            onLogin();
        }

        mAuth = FirebaseAuth.getInstance();
    }

    @Override
    protected void onActivityResult(
            final int requestCode,
            final int resultCode,
            final Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode != FRAMEWORK_REQUEST_CODE) {
            return;
        }

        final String toastMessage;
        final AccountKitLoginResult loginResult = AccountKit.loginResultWithIntent(data);
        if (loginResult == null || loginResult.wasCancelled()) {
            toastMessage = "Login Cancelled";
            Toast.makeText(this, toastMessage, Toast.LENGTH_LONG).show();
        } else if (loginResult.getError() != null) {
            toastMessage = loginResult.getError().getErrorType().getMessage();
            Toast.makeText(this, toastMessage, Toast.LENGTH_LONG).show();
        } else {
            final AccessToken accessToken = loginResult.getAccessToken();

            if (accessToken != null) {
                showLockScreenFragment();
            } else {
                toastMessage = "Unknown response type";
                Toast.makeText(this, toastMessage, Toast.LENGTH_LONG).show();
            }
        }
    }

    @Override
    public void enabledControls(boolean isEnabled) {

    }

    @NonNull
    @Override
    public LoginPresenter providePresenter() {
        return new LoginPresenter();
    }

    @Override
    public void showForgotError(int type) {
        if (type == 0)
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Les données que vous avez saisies ne sont pas correctes.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
        else
            Snacky.builder()
                    .setView(findViewById(R.id.root))
                    .setText("Echec d'envoie E-mail, veuillez reessayer.")
                    .setDuration(Snacky.LENGTH_LONG)
                    .error()
                    .show();
    }

    @Override
    public void showLoginError(int type) {
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Les informations entrées ne sont pas correctes, verifiez votre code PIN.")
                .setDuration(Snacky.LENGTH_LONG)
                .error()
                .show();
    }

    @Override
    public void finishToLogin(UserResponse response) {
        firebaseSignIn();
        UserPrefencesManager.setCurentUserLoginSuccess(true);
        UserPrefencesManager.setCurentUser(response);
        startActivity(new Intent(this, DrawerActivity.class));
        finish();
    }

    @Override
    public void finishToForgot() {
        Snacky.builder()
                .setView(findViewById(R.id.root))
                .setText("Vous avez recu un mail avec votre code PIN.")
                .setDuration(Snacky.LENGTH_LONG)
                .success()
                .show();
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(CalligraphyContextWrapper.wrap(newBase));
    }

    @Override
    public void onBackPressed() {
        if (UserPrefencesManager.getCurrentUser() == null)
            finish();

        super.onBackPressed();
    }

    private void firebaseSignIn() {
        mAuth.signInAnonymously()
                .addOnCompleteListener(this, new com.google.android.gms.tasks.OnCompleteListener<AuthResult>() {
                    @Override
                    public void onComplete(@NonNull Task<AuthResult> task) {
                        if (task.isSuccessful()) {
                            // Sign in success, update UI with the signed-in user's information
                            LogCat.e("signInAnonymously:success");
                            FirebaseUser user = mAuth.getCurrentUser();
                            LogCat.e("signInAnonymously:success" + user);

                        } else {
                            // If sign in fails, display a message to the user.
                            LogCat.e("signInAnonymously:failure", task.getException());

                        }

                    }
                });
    }

    @Override
    public void onUnknownError(String errorMessage) {
        enabledControls(true);

        Constants.showOnUnknownError(findViewById(R.id.root), null);
    }

    @Override
    public void onTimeout() {
        enabledControls(true);

        Constants.showOnTimeoutErro(findViewById(R.id.root), null);
    }

    @Override
    public void onNetworkError() {
        enabledControls(true);

        Constants.showOnNetworkError(findViewById(R.id.root), null);
    }

    private void onLogin() {
        final Intent intent = new Intent(this, AccountKitActivity.class);
        final AccountKitConfiguration configuration = configurationBuilder.build();
        intent.putExtra(AccountKitActivity.ACCOUNT_KIT_ACTIVITY_CONFIGURATION, configuration);
        OnCompleteListener completeListener = new OnCompleteListener() {
            @Override
            public void onComplete() {
                startActivityForResult(intent, FRAMEWORK_REQUEST_CODE);
            }
        };

        if (configuration.isReceiveSMSEnabled() && !canReadSmsWithoutPermission()) {
            final OnCompleteListener receiveSMSCompleteListener = completeListener;
            completeListener = new OnCompleteListener() {
                @Override
                public void onComplete() {
                    requestPermissions(
                            Manifest.permission.RECEIVE_SMS,
                            R.string.permissions_receive_sms_title,
                            R.string.permissions_receive_sms_message,
                            receiveSMSCompleteListener);
                }
            };
        }

        if (configuration.isReadPhoneStateEnabled() && !isGooglePlayServicesAvailable()) {
            final OnCompleteListener readPhoneStateCompleteListener = completeListener;
            completeListener = new OnCompleteListener() {
                @Override
                public void onComplete() {
                    requestPermissions(
                            Manifest.permission.READ_PHONE_STATE,
                            R.string.permissions_read_phone_state_title,
                            R.string.permissions_read_phone_state_message,
                            readPhoneStateCompleteListener);
                }
            };
        }

        completeListener.onComplete();
    }

    private boolean isGooglePlayServicesAvailable() {
        final GoogleApiAvailability apiAvailability = GoogleApiAvailability.getInstance();
        int googlePlayServicesAvailable = apiAvailability.isGooglePlayServicesAvailable(this);
        return googlePlayServicesAvailable == ConnectionResult.SUCCESS;
    }

    private boolean canReadSmsWithoutPermission() {
        final GoogleApiAvailability apiAvailability = GoogleApiAvailability.getInstance();
        int googlePlayServicesAvailable = apiAvailability.isGooglePlayServicesAvailable(this);
        if (googlePlayServicesAvailable == ConnectionResult.SUCCESS) {
            return true;
        }
        //TODO we should also check for Android O here t18761104

        return false;
    }

    private void requestPermissions(
            final String permission,
            final int rationaleTitleResourceId,
            final int rationaleMessageResourceId,
            final OnCompleteListener listener) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.M) {
            if (listener != null) {
                listener.onComplete();
            }
            return;
        }

        checkRequestPermissions(
                permission,
                rationaleTitleResourceId,
                rationaleMessageResourceId,
                listener);
    }

    @TargetApi(23)
    private void checkRequestPermissions(
            final String permission,
            final int rationaleTitleResourceId,
            final int rationaleMessageResourceId,
            final OnCompleteListener listener) {
        if (checkSelfPermission(permission) == PackageManager.PERMISSION_GRANTED) {
            if (listener != null) {
                listener.onComplete();
            }
            return;
        }

        final int requestCode = nextPermissionsRequestCode++;
        permissionsListeners.put(requestCode, listener);

        if (shouldShowRequestPermissionRationale(permission)) {
            new AlertDialog.Builder(this)
                    .setTitle(rationaleTitleResourceId)
                    .setMessage(rationaleMessageResourceId)
                    .setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(final DialogInterface dialog, final int which) {
                            requestPermissions(new String[]{permission}, requestCode);
                        }
                    })
                    .setNegativeButton(android.R.string.no, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(final DialogInterface dialog, final int which) {
                            // ignore and clean up the listener
                            permissionsListeners.remove(requestCode);
                        }
                    })
                    .setIcon(android.R.drawable.ic_dialog_alert)
                    .show();
        } else {
            requestPermissions(new String[]{permission}, requestCode);
        }
    }

    @TargetApi(23)
    @SuppressWarnings("unused")
    @Override
    public void onRequestPermissionsResult(final int requestCode,
                                           final @NonNull String permissions[],
                                           final @NonNull int[] grantResults) {
        final OnCompleteListener permissionsListener = permissionsListeners.remove(requestCode);
        if (permissionsListener != null
                && grantResults.length > 0
                && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
            permissionsListener.onComplete();
        }
    }

    private void showLockScreenFragment() {
        final PFFLockScreenConfiguration.Builder builder = new PFFLockScreenConfiguration.Builder(this)
                .setTitle("Entrez votre code PIN")
                .setCodeLength(4)
                .setMode(PFFLockScreenConfiguration.MODE_CREATE)
                .setUseFingerprint(false);

        PFLockScreenFragment fragment = new PFLockScreenFragment();

        fragment.setConfiguration(builder.build());
        fragment.setCodeCreateListener(mCodeCreateListener);
        getSupportFragmentManager().beginTransaction().replace(R.id.root, fragment).commit();
    }

    private PFLockScreenFragment.OnPFLockScreenCodeCreateListener mCodeCreateListener =
            new PFLockScreenFragment.OnPFLockScreenCodeCreateListener() {
                @Override
                public void onCodeCreated(final String encodedCode) {
                    AccountKit.getCurrentAccount(new AccountKitCallback<Account>() {
                        @Override
                        public void onSuccess(final Account account) {
                            getPresenter().login(account.getPhoneNumber().getRawPhoneNumber(), encodedCode);
                        }

                        @Override
                        public void onError(final AccountKitError error) {

                        }
                    });
                }
            };
            */
}
