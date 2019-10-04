package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.ap;

abstract class az {

    /* renamed from: b  reason: collision with root package name */
    private static volatile Handler f3077b;
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final z f3078a;
    private final Runnable c = new ba(this);
    /* access modifiers changed from: private */
    public volatile long d;

    az(z zVar) {
        ap.checkNotNull(zVar);
        this.f3078a = zVar;
    }

    private final Handler a() {
        Handler handler;
        if (f3077b != null) {
            return f3077b;
        }
        synchronized (az.class) {
            if (f3077b == null) {
                f3077b = new Handler(this.f3078a.getContext().getMainLooper());
            }
            handler = f3077b;
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
            this.d = this.f3078a.zzws().currentTimeMillis();
            if (!a().postDelayed(this.c, j)) {
                this.f3078a.zzwt().zze("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }

    public final void zzt(long j) {
        if (zzdx()) {
            if (j < 0) {
                cancel();
                return;
            }
            long abs = j - Math.abs(this.f3078a.zzws().currentTimeMillis() - this.d);
            if (abs < 0) {
                abs = 0;
            }
            a().removeCallbacks(this.c);
            if (!a().postDelayed(this.c, abs)) {
                this.f3078a.zzwt().zze("Failed to adjust delayed post. time", Long.valueOf(abs));
            }
        }
    }

    public final long zzzb() {
        if (this.d == 0) {
            return 0;
        }
        return Math.abs(this.f3078a.zzws().currentTimeMillis() - this.d);
    }
}
