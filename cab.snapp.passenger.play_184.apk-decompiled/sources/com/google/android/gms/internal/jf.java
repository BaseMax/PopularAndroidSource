package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;
import java.util.List;
import java.util.Map;

final class jf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final je f3237a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3238b;
    private final Throwable c;
    private final byte[] d;
    private final String e;
    private final Map<String, List<String>> f;

    private jf(String str, je jeVar, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        ap.checkNotNull(jeVar);
        this.f3237a = jeVar;
        this.f3238b = i;
        this.c = th;
        this.d = bArr;
        this.e = str;
        this.f = map;
    }

    /* synthetic */ jf(String str, je jeVar, int i, Throwable th, byte[] bArr, Map map, byte b2) {
        this(str, jeVar, i, th, bArr, map);
    }

    public final void run() {
        this.f3237a.zza(this.e, this.f3238b, this.c, this.d, this.f);
    }
}
