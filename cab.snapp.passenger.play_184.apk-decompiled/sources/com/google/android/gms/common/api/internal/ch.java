package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.m;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public final class ch {

    /* renamed from: b  reason: collision with root package name */
    private static final BasePendingResult<?>[] f2816b = new BasePendingResult[0];
    public static final Status zzfvg = new Status(8, "The connection to Google Play services was lost");

    /* renamed from: a  reason: collision with root package name */
    final Set<BasePendingResult<?>> f2817a = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
    private final ck c = new ci(this);
    private final Map<a.d<?>, a.f> d;

    public ch(Map<a.d<?>, a.f> map) {
        this.d = map;
    }

    /* access modifiers changed from: package-private */
    public final void a(BasePendingResult<? extends m> basePendingResult) {
        this.f2817a.add(basePendingResult);
        basePendingResult.zza(this.c);
    }

    /* JADX WARNING: type inference failed for: r5v0, types: [com.google.android.gms.common.api.n, com.google.android.gms.common.api.s, com.google.android.gms.common.api.internal.ck] */
    public final void release() {
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f2817a.toArray(f2816b)) {
            ? r5 = 0;
            basePendingResult.zza((ck) r5);
            if (basePendingResult.zzagv() != null) {
                basePendingResult.setResultCallback(r5);
                IBinder zzagh = this.d.get(((cu) basePendingResult).zzagf()).zzagh();
                if (basePendingResult.isReady()) {
                    basePendingResult.zza((ck) new cj(basePendingResult, zzagh, (byte) 0));
                } else {
                    if (zzagh == null || !zzagh.isBinderAlive()) {
                        basePendingResult.zza((ck) r5);
                    } else {
                        cj cjVar = new cj(basePendingResult, zzagh, (byte) 0);
                        basePendingResult.zza((ck) cjVar);
                        try {
                            zzagh.linkToDeath(cjVar, 0);
                        } catch (RemoteException unused) {
                        }
                    }
                    basePendingResult.cancel();
                    r5.remove(basePendingResult.zzagv().intValue());
                }
            } else if (!basePendingResult.zzahh()) {
            }
            this.f2817a.remove(basePendingResult);
        }
    }

    public final void zzaju() {
        for (BasePendingResult zzv : (BasePendingResult[]) this.f2817a.toArray(f2816b)) {
            zzv.zzv(zzfvg);
        }
    }
}
