package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Callable;

final class k implements Callable<SharedPreferences> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Context f3039a;

    k(Context context) {
        this.f3039a = context;
    }

    public final /* synthetic */ Object call() throws Exception {
        return this.f3039a.getSharedPreferences("google_sdk_flags", 0);
    }
}
