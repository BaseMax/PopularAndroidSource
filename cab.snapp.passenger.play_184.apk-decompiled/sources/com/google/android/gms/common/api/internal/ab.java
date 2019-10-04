package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.f;
import java.util.concurrent.atomic.AtomicReference;

final class ab implements f.b {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ AtomicReference f2751a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ bz f2752b;
    private /* synthetic */ z c;

    ab(z zVar, AtomicReference atomicReference, bz bzVar) {
        this.c = zVar;
        this.f2751a = atomicReference;
        this.f2752b = bzVar;
    }

    public final void onConnected(Bundle bundle) {
        this.c.a((f) this.f2751a.get(), this.f2752b, true);
    }

    public final void onConnectionSuspended(int i) {
    }
}
