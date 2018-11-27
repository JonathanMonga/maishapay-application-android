package com.maishapay.model.client.api;

import com.maishapay.util.LogCat;
import com.maishapay.view.BaseView;

import org.json.JSONObject;

import java.io.IOException;
import java.net.SocketTimeoutException;

import io.reactivex.observers.DisposableObserver;
import okhttp3.ResponseBody;
import retrofit2.HttpException;

public abstract class CallbackWrapper <T> extends DisposableObserver<T> {
    //BaseView is just a reference of a View in MVP
    private BaseView view;

    public CallbackWrapper(BaseView view) {
        this.view = view;
    }

    protected abstract void onSuccess(T t);

    @Override
    public void onNext(T t) {
        onSuccess(t);
    }

    @Override
    public void onError(Throwable e) {
        if (e instanceof HttpException) {
            LogCat.e(e.getMessage());
            ResponseBody responseBody = ((HttpException)e).response().errorBody();
            if(view != null)
                view.onUnknownError(getErrorMessage(responseBody));
        } else if (e instanceof SocketTimeoutException) {
            LogCat.e(e.getMessage());
            if(view != null)
                view.onTimeout();
        } else if (e instanceof IOException) {
            LogCat.e(e.getMessage());
            if(view != null)
                view.onNetworkError();
        } else if(e instanceof Exception) {
            LogCat.e(e.getMessage());
            if(view != null)
                view.onUnknownError(e.getMessage());
        } else {
            LogCat.e(e.getMessage());
            if(view != null)
                view.onUnknownError(e.getMessage());
        }
    }

    @Override
    public void onComplete() {}

    private String getErrorMessage(ResponseBody responseBody) {
        try {
            JSONObject jsonObject = new JSONObject(responseBody.string());
            return jsonObject.getString("message");
        } catch (Exception e) {
            return e.getMessage();
        }
    }
}
