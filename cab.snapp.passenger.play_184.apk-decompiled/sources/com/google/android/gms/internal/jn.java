package com.google.android.gms.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.ap;

public final class jn {

    /* renamed from: a  reason: collision with root package name */
    private final String f3253a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3254b = null;
    private boolean c;
    private String d;
    private /* synthetic */ jj e;

    public jn(jj jjVar, String str, String str2) {
        this.e = jjVar;
        ap.zzgm(str);
        this.f3253a = str;
    }

    public final String zzazr() {
        if (!this.c) {
            this.c = true;
            this.d = this.e.h().getString(this.f3253a, null);
        }
        return this.d;
    }

    public final void zzjq(String str) {
        if (!na.zzas(str, this.d)) {
            SharedPreferences.Editor edit = this.e.h().edit();
            edit.putString(this.f3253a, str);
            edit.apply();
            this.d = str;
        }
    }
}
