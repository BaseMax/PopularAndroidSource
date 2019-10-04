package com.google.android.gms.c;

import com.google.android.gms.common.internal.ap;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class i {

    static final class a implements b {

        /* renamed from: a  reason: collision with root package name */
        private final CountDownLatch f2689a;

        private a() {
            this.f2689a = new CountDownLatch(1);
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        public final void await() throws InterruptedException {
            this.f2689a.await();
        }

        public final boolean await(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.f2689a.await(j, timeUnit);
        }

        public final void onFailure(Exception exc) {
            this.f2689a.countDown();
        }

        public final void onSuccess(Object obj) {
            this.f2689a.countDown();
        }
    }

    interface b extends c, d<Object> {
    }

    static final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        private final Object f2690a = new Object();

        /* renamed from: b  reason: collision with root package name */
        private final int f2691b;
        private final w<Void> c;
        private int d;
        private int e;
        private Exception f;

        public c(int i, w<Void> wVar) {
            this.f2691b = i;
            this.c = wVar;
        }

        private final void a() {
            int i = this.d;
            int i2 = this.e;
            int i3 = i + i2;
            int i4 = this.f2691b;
            if (i3 == i4) {
                if (this.f == null) {
                    this.c.setResult(null);
                    return;
                }
                w<Void> wVar = this.c;
                StringBuilder sb = new StringBuilder(54);
                sb.append(i2);
                sb.append(" out of ");
                sb.append(i4);
                sb.append(" underlying tasks failed");
                wVar.setException(new ExecutionException(sb.toString(), this.f));
            }
        }

        public final void onFailure(Exception exc) {
            synchronized (this.f2690a) {
                this.e++;
                this.f = exc;
                a();
            }
        }

        public final void onSuccess(Object obj) {
            synchronized (this.f2690a) {
                this.d++;
                a();
            }
        }
    }

    private i() {
    }

    private static <TResult> TResult a(f<TResult> fVar) throws ExecutionException {
        if (fVar.isSuccessful()) {
            return fVar.getResult();
        }
        throw new ExecutionException(fVar.getException());
    }

    private static void a(f<?> fVar, b bVar) {
        fVar.addOnSuccessListener(h.f2687a, (d<? super Object>) bVar);
        fVar.addOnFailureListener(h.f2687a, (c) bVar);
    }

    public static <TResult> TResult await(f<TResult> fVar) throws ExecutionException, InterruptedException {
        ap.zzgn("Must not be called on the main application thread");
        ap.checkNotNull(fVar, "Task must not be null");
        if (fVar.isComplete()) {
            return a(fVar);
        }
        a aVar = new a((byte) 0);
        a(fVar, aVar);
        aVar.await();
        return a(fVar);
    }

    public static <TResult> TResult await(f<TResult> fVar, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        ap.zzgn("Must not be called on the main application thread");
        ap.checkNotNull(fVar, "Task must not be null");
        ap.checkNotNull(timeUnit, "TimeUnit must not be null");
        if (fVar.isComplete()) {
            return a(fVar);
        }
        a aVar = new a((byte) 0);
        a(fVar, aVar);
        if (aVar.await(j, timeUnit)) {
            return a(fVar);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static <TResult> f<TResult> call(Callable<TResult> callable) {
        return call(h.MAIN_THREAD, callable);
    }

    public static <TResult> f<TResult> call(Executor executor, Callable<TResult> callable) {
        ap.checkNotNull(executor, "Executor must not be null");
        ap.checkNotNull(callable, "Callback must not be null");
        w wVar = new w();
        executor.execute(new x(wVar, callable));
        return wVar;
    }

    public static <TResult> f<TResult> forException(Exception exc) {
        w wVar = new w();
        wVar.setException(exc);
        return wVar;
    }

    public static <TResult> f<TResult> forResult(TResult tresult) {
        w wVar = new w();
        wVar.setResult(tresult);
        return wVar;
    }

    public static f<Void> whenAll(Collection<? extends f<?>> collection) {
        if (collection.isEmpty()) {
            return forResult(null);
        }
        for (f fVar : collection) {
            if (fVar == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        w wVar = new w();
        c cVar = new c(collection.size(), wVar);
        for (f a2 : collection) {
            a(a2, cVar);
        }
        return wVar;
    }

    public static f<Void> whenAll(f<?>... fVarArr) {
        return fVarArr.length == 0 ? forResult(null) : whenAll((Collection<? extends f<?>>) Arrays.asList(fVarArr));
    }

    public static f<List<f<?>>> whenAllComplete(Collection<? extends f<?>> collection) {
        return whenAll(collection).continueWith(new z(collection));
    }

    public static f<List<f<?>>> whenAllComplete(f<?>... fVarArr) {
        return whenAllComplete((Collection<? extends f<?>>) Arrays.asList(fVarArr));
    }

    public static <TResult> f<List<TResult>> whenAllSuccess(Collection<? extends f<?>> collection) {
        return whenAll(collection).continueWith(new y(collection));
    }

    public static <TResult> f<List<TResult>> whenAllSuccess(f<?>... fVarArr) {
        return whenAllSuccess((Collection<? extends f<?>>) Arrays.asList(fVarArr));
    }
}
