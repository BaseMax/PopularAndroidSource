package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class ac {

    /* renamed from: a  reason: collision with root package name */
    private final long f3047a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final String f3048b;
    private final String c;
    private final boolean d;
    private long e;
    private final Map<String, String> f;

    public ac(long j, String str, String str2, boolean z, long j2, Map<String, String> map) {
        ap.zzgm(str);
        ap.zzgm(str2);
        this.f3048b = str;
        this.c = str2;
        this.d = z;
        this.e = j2;
        this.f = map != null ? new HashMap<>(map) : Collections.emptyMap();
    }

    public final Map<String, String> zzjh() {
        return this.f;
    }

    public final void zzm(long j) {
        this.e = j;
    }

    public final String zzvz() {
        return this.f3048b;
    }

    public final long zzxm() {
        return this.f3047a;
    }

    public final String zzxn() {
        return this.c;
    }

    public final boolean zzxo() {
        return this.d;
    }

    public final long zzxp() {
        return this.e;
    }
}
