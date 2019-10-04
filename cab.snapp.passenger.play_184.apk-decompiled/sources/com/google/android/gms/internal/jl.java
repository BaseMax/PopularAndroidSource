package com.google.android.gms.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.ap;

public final class jl {

    /* renamed from: a  reason: collision with root package name */
    private final String f3249a;

    /* renamed from: b  reason: collision with root package name */
    private final long f3250b;
    private boolean c;
    private long d;
    private /* synthetic */ jj e;

    public jl(jj jjVar, String str, long j) {
        this.e = jjVar;
        ap.zzgm(str);
        this.f3249a = str;
        this.f3250b = j;
    }

    public final long get() {
        if (!this.c) {
            this.c = true;
            this.d = this.e.h().getLong(this.f3249a, this.f3250b);
        }
        return this.d;
    }

    public final void set(long j) {
        SharedPreferences.Editor edit = this.e.h().edit();
        edit.putLong(this.f3249a, j);
        edit.apply();
        this.d = j;
    }
}
