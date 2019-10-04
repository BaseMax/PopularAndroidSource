package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.bd;
import com.google.android.gms.common.internal.o;
import java.util.Set;

final class at implements bw, bd {

    /* renamed from: a  reason: collision with root package name */
    final a.f f2774a;

    /* renamed from: b  reason: collision with root package name */
    final cp<?> f2775b;
    boolean c = false;
    final /* synthetic */ al d;
    private o e = null;
    private Set<Scope> f = null;

    public at(al alVar, a.f fVar, cp<?> cpVar) {
        this.d = alVar;
        this.f2774a = fVar;
        this.f2775b = cpVar;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (this.c) {
            o oVar = this.e;
            if (oVar != null) {
                this.f2774a.zza(oVar, this.f);
            }
        }
    }

    public final void zzb(o oVar, Set<Scope> set) {
        if (oVar == null || set == null) {
            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
            zzh(new ConnectionResult(4));
            return;
        }
        this.e = oVar;
        this.f = set;
        a();
    }

    public final void zzf(ConnectionResult connectionResult) {
        this.d.e.post(new au(this, connectionResult));
    }

    public final void zzh(ConnectionResult connectionResult) {
        ((an) this.d.o.get(this.f2775b)).zzh(connectionResult);
    }
}
