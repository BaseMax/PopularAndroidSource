package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.f;

final class v implements f.b, f.c {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ m f2879a;

    private v(m mVar) {
        this.f2879a = mVar;
    }

    /* synthetic */ v(m mVar, byte b2) {
        this(mVar);
    }

    public final void onConnectionSuspended(int i) {
    }

    public final void onConnected(Bundle bundle) {
        this.f2879a.e.zza(new t(this.f2879a));
    }

    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f2879a.f2865b.lock();
        try {
            if (this.f2879a.a(connectionResult)) {
                this.f2879a.c();
                this.f2879a.b();
            } else {
                this.f2879a.b(connectionResult);
            }
        } finally {
            this.f2879a.f2865b.unlock();
        }
    }
}
