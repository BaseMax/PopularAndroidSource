package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.au;

public final class j implements ag {

    /* renamed from: a  reason: collision with root package name */
    final ah f2860a;

    /* renamed from: b  reason: collision with root package name */
    boolean f2861b = false;

    public j(ah ahVar) {
        this.f2860a = ahVar;
    }

    public final void begin() {
    }

    public final void connect() {
        if (this.f2861b) {
            this.f2861b = false;
            this.f2860a.a((ai) new l(this, this));
        }
    }

    public final void onConnected(Bundle bundle) {
    }

    public final void onConnectionSuspended(int i) {
        this.f2860a.a((ConnectionResult) null);
        this.f2860a.n.zzf(i, this.f2861b);
    }

    public final void zza(ConnectionResult connectionResult, a<?> aVar, boolean z) {
    }

    public final <A extends a.c, R extends m, T extends cu<R, A>> T zzd(T t) {
        return zze(t);
    }

    public final <A extends a.c, T extends cu<? extends m, A>> T zze(T t) {
        try {
            this.f2860a.m.e.a(t);
            z zVar = this.f2860a.m;
            a.f fVar = zVar.f2884b.get(t.zzagf());
            ap.checkNotNull(fVar, "Appropriate Api was not requested.");
            if (fVar.isConnected() || !this.f2860a.g.containsKey(t.zzagf())) {
                boolean z = fVar instanceof au;
                a.c cVar = fVar;
                if (z) {
                    cVar = au.zzals();
                }
                t.zzb(cVar);
                return t;
            }
            t.zzu(new Status(17));
            return t;
        } catch (DeadObjectException unused) {
            this.f2860a.a((ai) new k(this, this));
        }
    }

    public final boolean disconnect() {
        if (this.f2861b) {
            return false;
        }
        if (this.f2860a.m.c()) {
            this.f2861b = true;
            for (ce ceVar : this.f2860a.m.d) {
                ceVar.c = null;
            }
            return false;
        }
        this.f2860a.a((ConnectionResult) null);
        return true;
    }
}
