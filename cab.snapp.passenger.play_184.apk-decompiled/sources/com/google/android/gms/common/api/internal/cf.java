package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.m;

final class cf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ m f2813a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ ce f2814b;

    cf(ce ceVar, m mVar) {
        this.f2814b = ceVar;
        this.f2813a = mVar;
    }

    public final void run() {
        try {
            BasePendingResult.c.set(Boolean.TRUE);
            this.f2814b.f.sendMessage(this.f2814b.f.obtainMessage(0, this.f2814b.f2811a.onSuccess(this.f2813a)));
            BasePendingResult.c.set(Boolean.FALSE);
            ce.a(this.f2813a);
            f fVar = (f) this.f2814b.e.get();
            if (fVar != null) {
                fVar.zzb(this.f2814b);
            }
        } catch (RuntimeException e) {
            this.f2814b.f.sendMessage(this.f2814b.f.obtainMessage(1, e));
            BasePendingResult.c.set(Boolean.FALSE);
            ce.a(this.f2813a);
            f fVar2 = (f) this.f2814b.e.get();
            if (fVar2 != null) {
                fVar2.zzb(this.f2814b);
            }
        } catch (Throwable th) {
            BasePendingResult.c.set(Boolean.FALSE);
            ce.a(this.f2813a);
            f fVar3 = (f) this.f2814b.e.get();
            if (fVar3 != null) {
                fVar3.zzb(this.f2814b);
            }
            throw th;
        }
    }
}
