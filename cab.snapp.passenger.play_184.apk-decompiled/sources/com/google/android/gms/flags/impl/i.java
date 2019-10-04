package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

final class i implements Callable<String> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ SharedPreferences f3036a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3037b;
    private /* synthetic */ String c;

    i(SharedPreferences sharedPreferences, String str, String str2) {
        this.f3036a = sharedPreferences;
        this.f3037b = str;
        this.c = str2;
    }

    public final /* synthetic */ Object call() throws Exception {
        return this.f3036a.getString(this.f3037b, this.c);
    }
}
