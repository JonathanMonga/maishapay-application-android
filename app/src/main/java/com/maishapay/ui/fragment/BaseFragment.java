package com.maishapay.ui.fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;

import net.grandcentrix.thirtyinch.TiFragment;
import net.grandcentrix.thirtyinch.TiPresenter;
import net.grandcentrix.thirtyinch.TiView;


public abstract class BaseFragment<P extends TiPresenter<V>, V extends TiView> extends TiFragment<P,V> {

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }
}