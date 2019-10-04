package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;

final class ca {

    /* renamed from: a  reason: collision with root package name */
    private final d f3114a;

    /* renamed from: b  reason: collision with root package name */
    private long f3115b;

    public ca(d dVar) {
        ap.checkNotNull(dVar);
        this.f3114a = dVar;
    }

    public ca(d dVar, long j) {
        ap.checkNotNull(dVar);
        this.f3114a = dVar;
        this.f3115b = j;
    }

    public final void clear() {
        this.f3115b = 0;
    }

    public final void start() {
        this.f3115b = this.f3114a.elapsedRealtime();
    }

    public final boolean zzu(long j) {
        return this.f3115b == 0 || this.f3114a.elapsedRealtime() - this.f3115b > j;
    }
}
