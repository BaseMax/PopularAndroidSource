package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;

final class mv {

    /* renamed from: a  reason: collision with root package name */
    private final d f3403a;

    /* renamed from: b  reason: collision with root package name */
    private long f3404b;

    public mv(d dVar) {
        ap.checkNotNull(dVar);
        this.f3403a = dVar;
    }

    public final void clear() {
        this.f3404b = 0;
    }

    public final void start() {
        this.f3404b = this.f3403a.elapsedRealtime();
    }

    public final boolean zzu(long j) {
        return this.f3404b == 0 || this.f3403a.elapsedRealtime() - this.f3404b >= 3600000;
    }
}
