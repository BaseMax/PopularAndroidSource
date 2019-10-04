package com.google.android.gms.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.ap;

public final class jk {

    /* renamed from: a  reason: collision with root package name */
    private final String f3247a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f3248b = true;
    private boolean c;
    private boolean d;
    private /* synthetic */ jj e;

    public jk(jj jjVar, String str, boolean z) {
        this.e = jjVar;
        ap.zzgm(str);
        this.f3247a = str;
    }

    public final boolean get() {
        if (!this.c) {
            this.c = true;
            this.d = this.e.h().getBoolean(this.f3247a, this.f3248b);
        }
        return this.d;
    }

    public final void set(boolean z) {
        SharedPreferences.Editor edit = this.e.h().edit();
        edit.putBoolean(this.f3247a, z);
        edit.apply();
        this.d = z;
    }
}
