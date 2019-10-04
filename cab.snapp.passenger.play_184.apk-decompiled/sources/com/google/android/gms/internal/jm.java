package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.ap;

public final class jm {

    /* renamed from: a  reason: collision with root package name */
    private String f3251a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3252b;
    private final String c;
    private final long d;
    private /* synthetic */ jj e;

    private jm(jj jjVar, String str, long j) {
        this.e = jjVar;
        ap.zzgm(str);
        ap.checkArgument(j > 0);
        this.f3251a = String.valueOf(str).concat(":start");
        this.f3252b = String.valueOf(str).concat(":count");
        this.c = String.valueOf(str).concat(":value");
        this.d = j;
    }

    /* synthetic */ jm(jj jjVar, String str, long j, byte b2) {
        this(jjVar, str, j);
    }

    private final void a() {
        this.e.zzve();
        long currentTimeMillis = this.e.zzws().currentTimeMillis();
        SharedPreferences.Editor edit = this.e.h().edit();
        edit.remove(this.f3252b);
        edit.remove(this.c);
        edit.putLong(this.f3251a, currentTimeMillis);
        edit.apply();
    }

    private final long b() {
        return this.e.h().getLong(this.f3251a, 0);
    }

    public final Pair<String, Long> zzaad() {
        long j;
        this.e.zzve();
        this.e.zzve();
        long b2 = b();
        if (b2 == 0) {
            a();
            j = 0;
        } else {
            j = Math.abs(b2 - this.e.zzws().currentTimeMillis());
        }
        long j2 = this.d;
        if (j < j2) {
            return null;
        }
        if (j > (j2 << 1)) {
            a();
            return null;
        }
        String string = this.e.h().getString(this.c, null);
        long j3 = this.e.h().getLong(this.f3252b, 0);
        a();
        return (string == null || j3 <= 0) ? jj.f3245a : new Pair<>(string, Long.valueOf(j3));
    }

    public final void zzf(String str, long j) {
        this.e.zzve();
        if (b() == 0) {
            a();
        }
        if (str == null) {
            str = "";
        }
        long j2 = this.e.h().getLong(this.f3252b, 0);
        if (j2 <= 0) {
            SharedPreferences.Editor edit = this.e.h().edit();
            edit.putString(this.c, str);
            edit.putLong(this.f3252b, 1);
            edit.apply();
            return;
        }
        long j3 = j2 + 1;
        boolean z = (this.e.zzawu().c().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j3;
        SharedPreferences.Editor edit2 = this.e.h().edit();
        if (z) {
            edit2.putString(this.c, str);
        }
        edit2.putLong(this.f3252b, j3);
        edit2.apply();
    }
}
