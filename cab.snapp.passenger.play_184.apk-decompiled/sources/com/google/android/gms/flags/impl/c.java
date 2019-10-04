package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

final class c implements Callable<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ SharedPreferences f3030a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ String f3031b;
    private /* synthetic */ Boolean c;

    c(SharedPreferences sharedPreferences, String str, Boolean bool) {
        this.f3030a = sharedPreferences;
        this.f3031b = str;
        this.c = bool;
    }

    public final /* synthetic */ Object call() throws Exception {
        return Boolean.valueOf(this.f3030a.getBoolean(this.f3031b, this.c.booleanValue()));
    }
}
