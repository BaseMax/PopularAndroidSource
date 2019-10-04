package com.google.android.gms.c;

import android.app.Activity;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.api.internal.bd;
import com.google.android.gms.common.internal.ap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

final class w<TResult> extends f<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f2714a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final u<TResult> f2715b = new u<>();
    private boolean c;
    private TResult d;
    private Exception e;

    static class a extends LifecycleCallback {

        /* renamed from: b  reason: collision with root package name */
        private final List<WeakReference<t<?>>> f2716b = new ArrayList();

        private a(bd bdVar) {
            super(bdVar);
            this.f2748a.zza("TaskOnStopCallback", (LifecycleCallback) this);
        }

        public static a zzr(Activity activity) {
            bd zzn = zzn(activity);
            a aVar = (a) zzn.zza("TaskOnStopCallback", a.class);
            return aVar == null ? new a(zzn) : aVar;
        }

        public final void onStop() {
            synchronized (this.f2716b) {
                for (WeakReference<t<?>> weakReference : this.f2716b) {
                    t tVar = (t) weakReference.get();
                    if (tVar != null) {
                        tVar.cancel();
                    }
                }
                this.f2716b.clear();
            }
        }

        public final <T> void zzb(t<T> tVar) {
            synchronized (this.f2716b) {
                this.f2716b.add(new WeakReference(tVar));
            }
        }
    }

    w() {
    }

    private final void a() {
        ap.zza(this.c, (Object) "Task is not yet complete");
    }

    private final void b() {
        ap.zza(!this.c, (Object) "Task is already complete");
    }

    private final void c() {
        synchronized (this.f2714a) {
            if (this.c) {
                this.f2715b.zzb(this);
            }
        }
    }

    public final f<TResult> addOnCompleteListener(Activity activity, b<TResult> bVar) {
        n nVar = new n(h.MAIN_THREAD, bVar);
        this.f2715b.zza(nVar);
        a.zzr(activity).zzb(nVar);
        c();
        return this;
    }

    public final f<TResult> addOnCompleteListener(b<TResult> bVar) {
        return addOnCompleteListener(h.MAIN_THREAD, bVar);
    }

    public final f<TResult> addOnCompleteListener(Executor executor, b<TResult> bVar) {
        this.f2715b.zza(new n(executor, bVar));
        c();
        return this;
    }

    public final f<TResult> addOnFailureListener(Activity activity, c cVar) {
        p pVar = new p(h.MAIN_THREAD, cVar);
        this.f2715b.zza(pVar);
        a.zzr(activity).zzb(pVar);
        c();
        return this;
    }

    public final f<TResult> addOnFailureListener(c cVar) {
        return addOnFailureListener(h.MAIN_THREAD, cVar);
    }

    public final f<TResult> addOnFailureListener(Executor executor, c cVar) {
        this.f2715b.zza(new p(executor, cVar));
        c();
        return this;
    }

    public final f<TResult> addOnSuccessListener(Activity activity, d<? super TResult> dVar) {
        r rVar = new r(h.MAIN_THREAD, dVar);
        this.f2715b.zza(rVar);
        a.zzr(activity).zzb(rVar);
        c();
        return this;
    }

    public final f<TResult> addOnSuccessListener(d<? super TResult> dVar) {
        return addOnSuccessListener(h.MAIN_THREAD, dVar);
    }

    public final f<TResult> addOnSuccessListener(Executor executor, d<? super TResult> dVar) {
        this.f2715b.zza(new r(executor, dVar));
        c();
        return this;
    }

    public final <TContinuationResult> f<TContinuationResult> continueWith(a<TResult, TContinuationResult> aVar) {
        return continueWith(h.MAIN_THREAD, aVar);
    }

    public final <TContinuationResult> f<TContinuationResult> continueWith(Executor executor, a<TResult, TContinuationResult> aVar) {
        w wVar = new w();
        this.f2715b.zza(new j(executor, aVar, wVar));
        c();
        return wVar;
    }

    public final <TContinuationResult> f<TContinuationResult> continueWithTask(a<TResult, f<TContinuationResult>> aVar) {
        return continueWithTask(h.MAIN_THREAD, aVar);
    }

    public final <TContinuationResult> f<TContinuationResult> continueWithTask(Executor executor, a<TResult, f<TContinuationResult>> aVar) {
        w wVar = new w();
        this.f2715b.zza(new l(executor, aVar, wVar));
        c();
        return wVar;
    }

    public final Exception getException() {
        Exception exc;
        synchronized (this.f2714a) {
            exc = this.e;
        }
        return exc;
    }

    public final TResult getResult() {
        TResult tresult;
        synchronized (this.f2714a) {
            a();
            if (this.e == null) {
                tresult = this.d;
            } else {
                throw new e(this.e);
            }
        }
        return tresult;
    }

    public final <X extends Throwable> TResult getResult(Class<X> cls) throws Throwable {
        TResult tresult;
        synchronized (this.f2714a) {
            a();
            if (cls.isInstance(this.e)) {
                throw ((Throwable) cls.cast(this.e));
            } else if (this.e == null) {
                tresult = this.d;
            } else {
                throw new e(this.e);
            }
        }
        return tresult;
    }

    public final boolean isComplete() {
        boolean z;
        synchronized (this.f2714a) {
            z = this.c;
        }
        return z;
    }

    public final boolean isSuccessful() {
        boolean z;
        synchronized (this.f2714a) {
            z = this.c && this.e == null;
        }
        return z;
    }

    public final void setException(Exception exc) {
        ap.checkNotNull(exc, "Exception must not be null");
        synchronized (this.f2714a) {
            b();
            this.c = true;
            this.e = exc;
        }
        this.f2715b.zzb(this);
    }

    public final void setResult(TResult tresult) {
        synchronized (this.f2714a) {
            b();
            this.c = true;
            this.d = tresult;
        }
        this.f2715b.zzb(this);
    }

    public final boolean trySetException(Exception exc) {
        ap.checkNotNull(exc, "Exception must not be null");
        synchronized (this.f2714a) {
            if (this.c) {
                return false;
            }
            this.c = true;
            this.e = exc;
            this.f2715b.zzb(this);
            return true;
        }
    }

    public final boolean trySetResult(TResult tresult) {
        synchronized (this.f2714a) {
            if (this.c) {
                return false;
            }
            this.c = true;
            this.d = tresult;
            this.f2715b.zzb(this);
            return true;
        }
    }
}
