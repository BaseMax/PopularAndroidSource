package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.z;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class dx<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f7465b;
    final TimeUnit c;
    final ah d;
    final boolean e;

    static final class a<T> extends AtomicInteger implements ag<T>, c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7466a;

        /* renamed from: b  reason: collision with root package name */
        final long f7467b;
        final TimeUnit c;
        final ah.c d;
        final boolean e;
        final AtomicReference<T> f = new AtomicReference<>();
        c g;
        volatile boolean h;
        Throwable i;
        volatile boolean j;
        volatile boolean k;
        boolean l;

        a(ag<? super T> agVar, long j2, TimeUnit timeUnit, ah.c cVar, boolean z) {
            this.f7466a = agVar;
            this.f7467b = j2;
            this.c = timeUnit;
            this.d = cVar;
            this.e = z;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.g, cVar)) {
                this.g = cVar;
                this.f7466a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.f.set(t);
            a();
        }

        public final void onError(Throwable th) {
            this.i = th;
            this.h = true;
            a();
        }

        public final void onComplete() {
            this.h = true;
            a();
        }

        public final void dispose() {
            this.j = true;
            this.g.dispose();
            this.d.dispose();
            if (getAndIncrement() == 0) {
                this.f.lazySet(null);
            }
        }

        public final boolean isDisposed() {
            return this.j;
        }

        public final void run() {
            this.k = true;
            a();
        }

        private void a() {
            if (getAndIncrement() == 0) {
                AtomicReference<T> atomicReference = this.f;
                ag<? super T> agVar = this.f7466a;
                int i2 = 1;
                while (!this.j) {
                    boolean z = this.h;
                    if (!z || this.i == null) {
                        boolean z2 = atomicReference.get() == null;
                        if (z) {
                            T andSet = atomicReference.getAndSet(null);
                            if (!z2 && this.e) {
                                agVar.onNext(andSet);
                            }
                            agVar.onComplete();
                            this.d.dispose();
                            return;
                        }
                        if (z2) {
                            if (this.k) {
                                this.l = false;
                                this.k = false;
                            }
                        } else if (!this.l || this.k) {
                            agVar.onNext(atomicReference.getAndSet(null));
                            this.k = false;
                            this.l = true;
                            this.d.schedule(this, this.f7467b, this.c);
                        }
                        i2 = addAndGet(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    } else {
                        atomicReference.lazySet(null);
                        agVar.onError(this.i);
                        this.d.dispose();
                        return;
                    }
                }
                atomicReference.lazySet(null);
            }
        }
    }

    public dx(z<T> zVar, long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        super(zVar);
        this.f7465b = j;
        this.c = timeUnit;
        this.d = ahVar;
        this.e = z;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        ae aeVar = this.f7091a;
        a aVar = new a(agVar, this.f7465b, this.c, this.d.createWorker(), this.e);
        aeVar.subscribe(aVar);
    }
}
