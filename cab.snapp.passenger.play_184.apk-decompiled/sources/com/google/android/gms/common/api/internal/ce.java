package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.o;
import com.google.android.gms.common.api.p;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.internal.ap;
import java.lang.ref.WeakReference;

public final class ce<R extends m> extends q<R> implements n<R> {

    /* renamed from: a  reason: collision with root package name */
    p<? super R, ? extends m> f2811a = null;

    /* renamed from: b  reason: collision with root package name */
    ce<? extends m> f2812b = null;
    volatile o<? super R> c = null;
    final Object d = new Object();
    final WeakReference<f> e;
    final cg f;
    private h<R> g = null;
    private Status h = null;
    private boolean i = false;

    public ce(WeakReference<f> weakReference) {
        ap.checkNotNull(weakReference, "GoogleApiClient reference must not be null");
        this.e = weakReference;
        f fVar = (f) this.e.get();
        this.f = new cg(this, fVar != null ? fVar.getLooper() : Looper.getMainLooper());
    }

    private final void a() {
        if (this.f2811a != null || this.c != null) {
            f fVar = (f) this.e.get();
            if (!(this.i || this.f2811a == null || fVar == null)) {
                fVar.zza(this);
                this.i = true;
            }
            Status status = this.h;
            if (status != null) {
                b(status);
                return;
            }
            h<R> hVar = this.g;
            if (hVar != null) {
                hVar.setResultCallback(this);
            }
        }
    }

    static void a(m mVar) {
        if (mVar instanceof j) {
            try {
                ((j) mVar).release();
            } catch (RuntimeException unused) {
                String valueOf = String.valueOf(mVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
            }
        }
    }

    private final void b(Status status) {
        synchronized (this.d) {
            if (this.f2811a != null) {
                Status onFailure = this.f2811a.onFailure(status);
                ap.checkNotNull(onFailure, "onFailure must not return null");
                this.f2812b.a(onFailure);
            } else if (b()) {
                this.c.onFailure(status);
            }
        }
    }

    private final boolean b() {
        return (this.c == null || ((f) this.e.get()) == null) ? false : true;
    }

    /* access modifiers changed from: package-private */
    public final void a(Status status) {
        synchronized (this.d) {
            this.h = status;
            b(this.h);
        }
    }

    public final void andFinally(o<? super R> oVar) {
        synchronized (this.d) {
            boolean z = true;
            ap.zza(this.c == null, (Object) "Cannot call andFinally() twice.");
            if (this.f2811a != null) {
                z = false;
            }
            ap.zza(z, (Object) "Cannot call then() and andFinally() on the same TransformedResult.");
            this.c = oVar;
            a();
        }
    }

    public final void onResult(R r) {
        synchronized (this.d) {
            if (!r.getStatus().isSuccess()) {
                a(r.getStatus());
                a((m) r);
            } else if (this.f2811a != null) {
                bq.zzaip().submit(new cf(this, r));
            } else if (b()) {
                this.c.onSuccess(r);
            }
        }
    }

    public final <S extends m> q<S> then(p<? super R, ? extends S> pVar) {
        ce<? extends m> ceVar;
        synchronized (this.d) {
            boolean z = true;
            ap.zza(this.f2811a == null, (Object) "Cannot call then() twice.");
            if (this.c != null) {
                z = false;
            }
            ap.zza(z, (Object) "Cannot call then() and andFinally() on the same TransformedResult.");
            this.f2811a = pVar;
            ceVar = new ce<>(this.e);
            this.f2812b = ceVar;
            a();
        }
        return ceVar;
    }

    public final void zza(h<?> hVar) {
        synchronized (this.d) {
            this.g = hVar;
            a();
        }
    }
}
