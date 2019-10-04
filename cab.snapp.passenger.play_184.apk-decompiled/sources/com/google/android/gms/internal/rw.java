package com.google.android.gms.internal;

import com.google.android.gms.internal.ps;

final class rw extends ru<rv, rv> {
    rw() {
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Object a(Object obj) {
        return ((ps) obj).f3451b;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ int b(Object obj) {
        return ((rv) obj).zzczw();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void a(Object obj, sn snVar) {
        rv rvVar = (rv) obj;
        if (snVar.zzcwv() == ps.f.zzpho) {
            for (int i = rvVar.f3505a - 1; i >= 0; i--) {
                snVar.zzb(rvVar.f3506b[i] >>> 3, rvVar.c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < rvVar.f3505a; i2++) {
            snVar.zzb(rvVar.f3506b[i2] >>> 3, rvVar.c[i2]);
        }
    }
}
