package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.d;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class dw<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f7462b;
    final TimeUnit c;
    final ah d;

    static final class a<T> extends AtomicReference<c> implements ag<T>, c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7463a;

        /* renamed from: b  reason: collision with root package name */
        final long f7464b;
        final TimeUnit c;
        final ah.c d;
        c e;
        volatile boolean f;
        boolean g;

        a(ag<? super T> agVar, long j, TimeUnit timeUnit, ah.c cVar) {
            this.f7463a = agVar;
            this.f7464b = j;
            this.c = timeUnit;
            this.d = cVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.e, cVar)) {
                this.e = cVar;
                this.f7463a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.f && !this.g) {
                this.f = true;
                this.f7463a.onNext(t);
                c cVar = (c) get();
                if (cVar != null) {
                    cVar.dispose();
                }
                DisposableHelper.replace(this, this.d.schedule(this, this.f7464b, this.c));
            }
        }

        public final void run() {
            this.f = false;
        }

        public final void onError(Throwable th) {
            if (this.g) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.g = true;
            this.f7463a.onError(th);
            this.d.dispose();
        }

        public final void onComplete() {
            if (!this.g) {
                this.g = true;
                this.f7463a.onComplete();
                this.d.dispose();
            }
        }

        public final void dispose() {
            this.e.dispose();
            this.d.dispose();
        }

        public final boolean isDisposed() {
            return this.d.isDisposed();
        }
    }

    public dw(ae<T> aeVar, long j, TimeUnit timeUnit, ah ahVar) {
        super(aeVar);
        this.f7462b = j;
        this.c = timeUnit;
        this.d = ahVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        ae aeVar = this.f7091a;
        a aVar = new a(new d(agVar), this.f7462b, this.c, this.d.createWorker());
        aeVar.subscribe(aVar);
    }
}
