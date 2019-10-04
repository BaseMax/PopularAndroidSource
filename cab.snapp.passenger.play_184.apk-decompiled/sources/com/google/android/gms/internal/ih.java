package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.ap;

abstract class ih {

    /* renamed from: b  reason: collision with root package name */
    private static volatile Handler f3206b;
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final jx f3207a;
    private final Runnable c = new ii(this);
    /* access modifiers changed from: private */
    public volatile long d;
    /* access modifiers changed from: private */
    public boolean e = true;

    ih(jx jxVar) {
        ap.checkNotNull(jxVar);
        this.f3207a = jxVar;
    }

    private final Handler a() {
        Handler handler;
        if (f3206b != null) {
            return f3206b;
        }
        synchronized (ih.class) {
            if (f3206b == null) {
                f3206b = new Handler(this.f3207a.getContext().getMainLooper());
            }
            handler = f3206b;
        }
        return handler;
    }

    public final void cancel() {
        this.d = 0;
        a().removeCallbacks(this.c);
    }

    public abstract void run();

    public final boolean zzdx() {
        return this.d != 0;
    }

    public final void zzs(long j) {
        cancel();
        if (j >= 0) {
            this.d = this.f3207a.zzws().currentTimeMillis();
            if (!a().postDelayed(this.c, j)) {
                this.f3207a.zzawy().zzazd().zzj("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }
}
