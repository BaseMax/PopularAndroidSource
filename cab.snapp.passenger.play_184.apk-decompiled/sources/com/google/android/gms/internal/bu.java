package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.ap;
import java.util.UUID;

public final class bu {

    /* renamed from: a  reason: collision with root package name */
    private final String f3104a;

    /* renamed from: b  reason: collision with root package name */
    private final long f3105b;
    private /* synthetic */ bt c;

    private bu(bt btVar, String str, long j) {
        this.c = btVar;
        ap.zzgm(str);
        ap.checkArgument(j > 0);
        this.f3104a = str;
        this.f3105b = j;
    }

    /* synthetic */ bu(bt btVar, String str, long j, byte b2) {
        this(btVar, str, j);
    }

    private final String c() {
        return String.valueOf(this.f3104a).concat(":start");
    }

    private final String d() {
        return String.valueOf(this.f3104a).concat(":count");
    }

    private final String e() {
        return String.valueOf(this.f3104a).concat(":value");
    }

    private final void a() {
        long currentTimeMillis = this.c.zzdta.zzws().currentTimeMillis();
        SharedPreferences.Editor edit = this.c.f3102a.edit();
        edit.remove(d());
        edit.remove(e());
        edit.putLong(c(), currentTimeMillis);
        edit.commit();
    }

    public final void zzeg(String str) {
        if (b() == 0) {
            a();
        }
        if (str == null) {
            str = "";
        }
        synchronized (this) {
            long j = this.c.f3102a.getLong(d(), 0);
            if (j <= 0) {
                SharedPreferences.Editor edit = this.c.f3102a.edit();
                edit.putString(e(), str);
                edit.putLong(d(), 1);
                edit.apply();
                return;
            }
            long j2 = j + 1;
            boolean z = (UUID.randomUUID().getLeastSignificantBits() & Long.MAX_VALUE) < Long.MAX_VALUE / j2;
            SharedPreferences.Editor edit2 = this.c.f3102a.edit();
            if (z) {
                edit2.putString(e(), str);
            }
            edit2.putLong(d(), j2);
            edit2.apply();
        }
    }

    public final Pair<String, Long> zzaad() {
        long j;
        long b2 = b();
        if (b2 == 0) {
            j = 0;
        } else {
            j = Math.abs(b2 - this.c.zzdta.zzws().currentTimeMillis());
        }
        long j2 = this.f3105b;
        if (j < j2) {
            return null;
        }
        if (j > (j2 << 1)) {
            a();
            return null;
        }
        String string = this.c.f3102a.getString(e(), null);
        long j3 = this.c.f3102a.getLong(d(), 0);
        a();
        if (string == null || j3 <= 0) {
            return null;
        }
        return new Pair<>(string, Long.valueOf(j3));
    }

    private final long b() {
        return this.c.f3102a.getLong(c(), 0);
    }
}
