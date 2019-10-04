package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.analytics.r;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.stats.a;
import java.util.Collections;

public final class ad extends x {

    /* renamed from: a  reason: collision with root package name */
    final af f3049a = new af(this);

    /* renamed from: b  reason: collision with root package name */
    bl f3050b;
    private final az c;
    private final ca d;

    protected ad(z zVar) {
        super(zVar);
        this.d = new ca(zVar.zzws());
        this.c = new ae(this, zVar);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.d.start();
        this.c.zzs(bf.zzdxg.get().longValue());
    }

    public final boolean connect() {
        r.zzve();
        c();
        if (this.f3050b != null) {
            return true;
        }
        bl zzxt = this.f3049a.zzxt();
        if (zzxt == null) {
            return false;
        }
        this.f3050b = zzxt;
        a();
        return true;
    }

    public final boolean isConnected() {
        r.zzve();
        c();
        return this.f3050b != null;
    }

    public final boolean zzb(bk bkVar) {
        ap.checkNotNull(bkVar);
        r.zzve();
        c();
        bl blVar = this.f3050b;
        if (blVar == null) {
            return false;
        }
        try {
            blVar.zza(bkVar.zzjh(), bkVar.zzzi(), bkVar.zzzk() ? ax.zzyw() : ax.zzyx(), Collections.emptyList());
            a();
            return true;
        } catch (RemoteException unused) {
            zzdu("Failed to send hits to AnalyticsService");
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public final void zzvf() {
    }

    public final boolean zzxq() {
        r.zzve();
        c();
        bl blVar = this.f3050b;
        if (blVar == null) {
            return false;
        }
        try {
            blVar.zzwm();
            a();
            return true;
        } catch (RemoteException unused) {
            zzdu("Failed to clear hits from AnalyticsService");
            return false;
        }
    }

    public final void disconnect() {
        r.zzve();
        c();
        try {
            a.zzamc();
            this.zzdta.getContext().unbindService(this.f3049a);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        if (this.f3050b != null) {
            this.f3050b = null;
            this.zzdta.zzwx().zzwp();
        }
    }
}
