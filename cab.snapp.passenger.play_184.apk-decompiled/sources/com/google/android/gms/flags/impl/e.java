package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

final class e implements Callable<Integer> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ SharedPreferences f3032a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3033b;
    private /* synthetic */ Integer c;

    e(SharedPreferences sharedPreferences, String str, Integer num) {
        this.f3032a = sharedPreferences;
        this.f3033b = str;
        this.c = num;
    }

    public final /* synthetic */ Object call() throws Exception {
        return Integer.valueOf(this.f3032a.getInt(this.f3033b, this.c.intValue()));
    }
}
