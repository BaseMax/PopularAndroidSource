package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

final class g implements Callable<Long> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ SharedPreferences f3034a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3035b;
    private /* synthetic */ Long c;

    g(SharedPreferences sharedPreferences, String str, Long l) {
        this.f3034a = sharedPreferences;
        this.f3035b = str;
        this.c = l;
    }

    public final /* synthetic */ Object call() throws Exception {
        return Long.valueOf(this.f3034a.getLong(this.f3035b, this.c.longValue()));
    }
}
