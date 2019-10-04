package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

final class dg implements bb {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ dd f2850a;

    private dg(dd ddVar) {
        this.f2850a = ddVar;
    }

    /* synthetic */ dg(dd ddVar, byte b2) {
        this(ddVar);
    }

    public final void zzj(Bundle bundle) {
        this.f2850a.g.lock();
        try {
            this.f2850a.e = ConnectionResult.zzfkr;
            dd.a(this.f2850a);
        } finally {
            this.f2850a.g.unlock();
        }
    }

    public final void zzc(ConnectionResult connectionResult) {
        this.f2850a.g.lock();
        try {
            this.f2850a.e = connectionResult;
            dd.a(this.f2850a);
        } finally {
            this.f2850a.g.unlock();
        }
    }

    public final void zzf(int i, boolean z) {
        this.f2850a.g.lock();
        try {
            if (this.f2850a.f) {
                this.f2850a.f = false;
                dd.a(this.f2850a, i, z);
                return;
            }
            this.f2850a.f = true;
            this.f2850a.f2846a.onConnectionSuspended(i);
            this.f2850a.g.unlock();
        } finally {
            this.f2850a.g.unlock();
        }
    }
}
