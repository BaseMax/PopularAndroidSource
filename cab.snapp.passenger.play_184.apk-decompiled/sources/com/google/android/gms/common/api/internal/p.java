package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.bd;
import java.util.Iterator;
import java.util.Map;

final class p extends w {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ m f2869a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<a.f, o> f2870b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public p(m mVar, Map<a.f, o> map) {
        super(mVar, (byte) 0);
        this.f2869a = mVar;
        this.f2870b = map;
    }

    public final void zzaib() {
        boolean z;
        Iterator<a.f> it = this.f2870b.keySet().iterator();
        boolean z2 = true;
        int i = 0;
        boolean z3 = false;
        boolean z4 = true;
        while (true) {
            if (!it.hasNext()) {
                z2 = z3;
                z = false;
                break;
            }
            a.f next = it.next();
            if (!next.zzagg()) {
                z4 = false;
            } else if (!this.f2870b.get(next).f2867a) {
                z = true;
                break;
            } else {
                z3 = true;
            }
        }
        if (z2) {
            i = this.f2869a.d.isGooglePlayServicesAvailable(this.f2869a.c);
        }
        if (i == 0 || (!z && !z4)) {
            if (this.f2869a.f) {
                this.f2869a.e.connect();
            }
            for (a.f next2 : this.f2870b.keySet()) {
                bd bdVar = this.f2870b.get(next2);
                if (!next2.zzagg() || i == 0) {
                    next2.zza(bdVar);
                } else {
                    this.f2869a.f2864a.a((ai) new r(this.f2869a, bdVar));
                }
            }
            return;
        }
        this.f2869a.f2864a.a((ai) new q(this, this.f2869a, new ConnectionResult(i, null)));
    }
}
