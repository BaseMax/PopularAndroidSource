package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import java.util.Collections;

final class au implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ConnectionResult f2776a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ at f2777b;

    au(at atVar, ConnectionResult connectionResult) {
        this.f2777b = atVar;
        this.f2776a = connectionResult;
    }

    public final void run() {
        if (this.f2776a.isSuccess()) {
            at atVar = this.f2777b;
            atVar.c = true;
            if (atVar.f2774a.zzaay()) {
                this.f2777b.a();
            } else {
                this.f2777b.f2774a.zza(null, Collections.emptySet());
            }
        } else {
            ((an) this.f2777b.d.o.get(this.f2777b.f2775b)).onConnectionFailed(this.f2776a);
        }
    }
}
