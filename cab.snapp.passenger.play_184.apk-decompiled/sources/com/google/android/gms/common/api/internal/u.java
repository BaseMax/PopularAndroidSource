package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzbt;
import com.google.android.gms.internal.zzcxq;

final class u extends ai {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ m f2877a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ zzcxq f2878b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    u(ag agVar, m mVar, zzcxq zzcxq) {
        super(agVar);
        this.f2877a = mVar;
        this.f2878b = zzcxq;
    }

    public final void zzaib() {
        m mVar = this.f2877a;
        zzcxq zzcxq = this.f2878b;
        if (mVar.a(0)) {
            ConnectionResult zzahf = zzcxq.zzahf();
            if (zzahf.isSuccess()) {
                zzbt zzbdi = zzcxq.zzbdi();
                ConnectionResult zzahf2 = zzbdi.zzahf();
                if (!zzahf2.isSuccess()) {
                    String valueOf = String.valueOf(zzahf2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
                    sb.append("Sign-in succeeded with resolve account failure: ");
                    sb.append(valueOf);
                    Log.wtf("GoogleApiClientConnecting", sb.toString(), new Exception());
                    mVar.b(zzahf2);
                    return;
                }
                mVar.g = true;
                mVar.h = zzbdi.zzalp();
                mVar.i = zzbdi.zzalq();
                mVar.j = zzbdi.zzalr();
                mVar.b();
            } else if (mVar.a(zzahf)) {
                mVar.c();
                mVar.b();
            } else {
                mVar.b(zzahf);
            }
        }
    }
}
