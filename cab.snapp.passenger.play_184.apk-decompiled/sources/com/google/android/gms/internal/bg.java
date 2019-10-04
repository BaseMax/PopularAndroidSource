package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;

public final class bg<V> {

    /* renamed from: a  reason: collision with root package name */
    private final V f3086a;

    /* renamed from: b  reason: collision with root package name */
    private final dx<V> f3087b;

    bg(dx<V> dxVar, V v) {
        ap.checkNotNull(dxVar);
        this.f3087b = dxVar;
        this.f3086a = v;
    }

    static bg<Integer> a(String str, int i, int i2) {
        return new bg<>(dx.zza(str, Integer.valueOf(i2)), Integer.valueOf(i));
    }

    static bg<Long> a(String str, long j, long j2) {
        return new bg<>(dx.zza(str, Long.valueOf(j2)), Long.valueOf(j));
    }

    static bg<String> a(String str, String str2, String str3) {
        return new bg<>(dx.zzs(str, str3), str2);
    }

    static bg<Boolean> a(String str, boolean z, boolean z2) {
        return new bg<>(dx.zze(str, z2), Boolean.valueOf(z));
    }

    public final V get() {
        return this.f3086a;
    }
}
