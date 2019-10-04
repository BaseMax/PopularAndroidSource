package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.m;
import java.util.Collections;

public final class x implements ag {

    /* renamed from: a  reason: collision with root package name */
    private final ah f2881a;

    public x(ah ahVar) {
        this.f2881a = ahVar;
    }

    public final void begin() {
        for (a.f disconnect : this.f2881a.f.values()) {
            disconnect.disconnect();
        }
        this.f2881a.m.c = Collections.emptySet();
    }

    public final boolean disconnect() {
        return true;
    }

    public final void onConnected(Bundle bundle) {
    }

    public final void onConnectionSuspended(int i) {
    }

    public final void zza(ConnectionResult connectionResult, a<?> aVar, boolean z) {
    }

    public final <A extends a.c, R extends m, T extends cu<R, A>> T zzd(T t) {
        this.f2881a.m.f2883a.add(t);
        return t;
    }

    public final <A extends a.c, T extends cu<? extends m, A>> T zze(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    public final void connect() {
        ah ahVar = this.f2881a;
        ahVar.f2758a.lock();
        try {
            m mVar = new m(ahVar, ahVar.h, ahVar.i, ahVar.d, ahVar.j, ahVar.f2758a, ahVar.c);
            ahVar.k = mVar;
            ahVar.k.begin();
            ahVar.f2759b.signalAll();
        } finally {
            ahVar.f2758a.unlock();
        }
    }
}
