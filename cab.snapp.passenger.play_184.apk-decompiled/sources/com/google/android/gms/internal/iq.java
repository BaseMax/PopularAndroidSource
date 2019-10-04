package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;

public final class iq<V> {

    /* renamed from: a  reason: collision with root package name */
    private final V f3219a;

    /* renamed from: b  reason: collision with root package name */
    private final dx<V> f3220b;
    private final String c;

    private iq(String str, dx<V> dxVar, V v) {
        ap.checkNotNull(dxVar);
        this.f3220b = dxVar;
        this.f3219a = v;
        this.c = str;
    }

    static iq<Integer> a(String str, int i, int i2) {
        return new iq<>(str, dx.zza(str, Integer.valueOf(i2)), Integer.valueOf(i));
    }

    static iq<Long> a(String str, long j, long j2) {
        return new iq<>(str, dx.zza(str, Long.valueOf(j2)), Long.valueOf(j));
    }

    static iq<String> a(String str, String str2, String str3) {
        return new iq<>(str, dx.zzs(str, str3), str2);
    }

    static iq<Boolean> a(String str, boolean z, boolean z2) {
        return new iq<>(str, dx.zze(str, z2), Boolean.valueOf(z));
    }

    public final V get() {
        return this.f3219a;
    }

    public final V get(V v) {
        return v != null ? v : this.f3219a;
    }

    public final String getKey() {
        return this.c;
    }
}
