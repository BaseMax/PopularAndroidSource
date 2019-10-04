package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

final class df implements bb {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ dd f2849a;

    private df(dd ddVar) {
        this.f2849a = ddVar;
    }

    /* synthetic */ df(dd ddVar, byte b2) {
        this(ddVar);
    }

    public final void zzj(Bundle bundle) {
        this.f2849a.g.lock();
        try {
            dd ddVar = this.f2849a;
            if (ddVar.c == null) {
                ddVar.c = bundle;
            } else if (bundle != null) {
                ddVar.c.putAll(bundle);
            }
            this.f2849a.d = ConnectionResult.zzfkr;
            dd.a(this.f2849a);
        } finally {
            this.f2849a.g.unlock();
        }
    }

    public final void zzc(ConnectionResult connectionResult) {
        this.f2849a.g.lock();
        try {
            this.f2849a.d = connectionResult;
            dd.a(this.f2849a);
        } finally {
            this.f2849a.g.unlock();
        }
    }

    public final void zzf(int i, boolean z) {
        this.f2849a.g.lock();
        try {
            if (!this.f2849a.f && this.f2849a.e != null) {
                if (this.f2849a.e.isSuccess()) {
                    this.f2849a.f = true;
                    this.f2849a.f2847b.onConnectionSuspended(i);
                    this.f2849a.g.unlock();
                    return;
                }
            }
            this.f2849a.f = false;
            dd.a(this.f2849a, i, z);
        } finally {
            this.f2849a.g.unlock();
        }
    }
}
