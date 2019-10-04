package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.internal.zzbt;
import com.google.android.gms.internal.ny;
import com.google.android.gms.internal.ob;
import com.google.android.gms.internal.oc;
import com.google.android.gms.internal.of;
import com.google.android.gms.internal.zzcxq;
import java.util.Set;

public final class bt extends of implements f.b, f.c {

    /* renamed from: a  reason: collision with root package name */
    private static a.b<? extends ob, oc> f2802a = ny.zzebg;

    /* renamed from: b  reason: collision with root package name */
    private final Context f2803b;
    private final Handler c;
    private final a.b<? extends ob, oc> d;
    private Set<Scope> e;
    private bl f;
    private ob g;
    /* access modifiers changed from: private */
    public bw h;

    public bt(Context context, Handler handler, bl blVar) {
        this(context, handler, blVar, f2802a);
    }

    public bt(Context context, Handler handler, bl blVar, a.b<? extends ob, oc> bVar) {
        this.f2803b = context;
        this.c = handler;
        this.f = (bl) ap.checkNotNull(blVar, "ClientSettings must not be null");
        this.e = blVar.zzakv();
        this.d = bVar;
    }

    public final void onConnected(Bundle bundle) {
        this.g.zza(this);
    }

    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.h.zzh(connectionResult);
    }

    public final void onConnectionSuspended(int i) {
        this.g.disconnect();
    }

    public final void zza(bw bwVar) {
        ob obVar = this.g;
        if (obVar != null) {
            obVar.disconnect();
        }
        this.f.zzc(Integer.valueOf(System.identityHashCode(this)));
        a.b<? extends ob, oc> bVar = this.d;
        Context context = this.f2803b;
        Looper looper = this.c.getLooper();
        bl blVar = this.f;
        this.g = (ob) bVar.zza(context, looper, blVar, blVar.zzalb(), this, this);
        this.h = bwVar;
        Set<Scope> set = this.e;
        if (set == null || set.isEmpty()) {
            this.c.post(new bu(this));
        } else {
            this.g.connect();
        }
    }

    public final ob zzaje() {
        return this.g;
    }

    public final void zzajq() {
        ob obVar = this.g;
        if (obVar != null) {
            obVar.disconnect();
        }
    }

    public final void zzb(zzcxq zzcxq) {
        this.c.post(new bv(this, zzcxq));
    }

    static /* synthetic */ void a(bt btVar, zzcxq zzcxq) {
        ConnectionResult zzahf = zzcxq.zzahf();
        if (zzahf.isSuccess()) {
            zzbt zzbdi = zzcxq.zzbdi();
            zzahf = zzbdi.zzahf();
            if (!zzahf.isSuccess()) {
                String valueOf = String.valueOf(zzahf);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
                sb.append("Sign-in succeeded with resolve account failure: ");
                sb.append(valueOf);
                Log.wtf("SignInCoordinator", sb.toString(), new Exception());
            } else {
                btVar.h.zzb(zzbdi.zzalp(), btVar.e);
                btVar.g.disconnect();
            }
        }
        btVar.h.zzh(zzahf);
        btVar.g.disconnect();
    }
}
