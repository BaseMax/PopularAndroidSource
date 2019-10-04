package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.internal.bx;
import com.google.android.gms.common.api.internal.co;
import com.google.android.gms.common.internal.ap;

public final class r {

    /* renamed from: a  reason: collision with root package name */
    private bx f2888a;

    /* renamed from: b  reason: collision with root package name */
    private Looper f2889b;

    public final r zza(Looper looper) {
        ap.checkNotNull(looper, "Looper must not be null.");
        this.f2889b = looper;
        return this;
    }

    public final r zza(bx bxVar) {
        ap.checkNotNull(bxVar, "StatusExceptionMapper must not be null.");
        this.f2888a = bxVar;
        return this;
    }

    public final e.a zzagq() {
        if (this.f2888a == null) {
            this.f2888a = new co();
        }
        if (this.f2889b == null) {
            this.f2889b = Looper.getMainLooper();
        }
        return new e.a(this.f2888a, this.f2889b, (byte) 0);
    }
}
