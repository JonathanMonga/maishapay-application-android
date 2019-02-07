package com.maishapay.ui.activities;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.maishapay.R;

import butterknife.BindView;
import butterknife.ButterKnife;

public class MaishapayWebviewActivity extends AppCompatActivity {

    @BindView(R.id.toolbar_actionbar)
    Toolbar toolbar;
    @BindView(R.id.webview)
    WebView mWebView;

    @SuppressLint("SetJavaScriptEnabled")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_webview);
        ButterKnife.bind(this);

        toolbar.setTitle("Points Maishapay");
        setSupportActionBar(toolbar);

        ActionBar actionBar = getSupportActionBar();

        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
        }

        mWebView.loadUrl("http://www.maishapay.online/cash/");
        mWebView.setWebViewClient(new MaishapayWebviewClient());

        WebSettings settings = mWebView.getSettings();
        settings.setJavaScriptEnabled(true);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                finish();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @SuppressLint("NewApi")
    private class MaishapayWebviewClient extends WebViewClient{
        private String url;

        @Override
        public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
            url = request.getUrl().toString();

            if(Uri.parse(url).getHost().equals("www.maishapay.online")){
                return false;
            }

            Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
            startActivity(intent);
            return true;
        }
    }
}
