package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.d;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class ae<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f7106b;
    final TimeUnit c;
    final ah d;

    static final class a<T> extends AtomicReference<c> implements c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final T f7107a;

        /* renamed from: b  reason: collision with root package name */
        final long f7108b;
        final b<T> c;
        final AtomicBoolean d = new AtomicBoolean();

        a(T t, long j, b<T> bVar) {
            this.f7107a = t;
            this.f7108b = j;
            this.c = bVar;
        }

        public final void run() {
            if (this.d.compareAndSet(false, true)) {
                b<T> bVar = this.c;
                long j = this.f7108b;
                T t = this.f7107a;
                if (j == bVar.g) {
                    bVar.f7109a.onNext(t);
                    dispose();
                }
            }
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        public final void setResource(c cVar) {
            DisposableHelper.replace(this, cVar);
        }
    }

    static final class b<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7109a;

        /* renamed from: b  reason: collision with root package name */
        final long f7110b;
        final TimeUnit c;
        final ah.c d;
        c e;
        c f;
        volatile long g;
        boolean h;

        b(ag<? super T> agVar, long j, TimeUnit timeUnit, ah.c cVar) {
            this.f7109a = agVar;
            this.f7110b = j;
            this.c = timeUnit;
            this.d = cVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.e, cVar)) {
                this.e = cVar;
                this.f7109a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.h) {
                long j = this.g + 1;
                this.g = j;
                c cVar = this.f;
                if (cVar != null) {
                    cVar.dispose();
                }
                a aVar = new a(t, j, this);
                this.f = aVar;
                aVar.setResource(this.d.schedule(aVar, this.f7110b, this.c));
            }
        }

        public final void onError(Throwable th) {
            if (this.h) {
                io.reactivex.g.a.onError(th);
                return;
            }
            c cVar = this.f;
            if (cVar != null) {
                cVar.dispose();
            }
            this.h = true;
            this.f7109a.onError(th);
            this.d.dispose();
        }

        public final void onComplete() {
            if (!this.h) {
                this.h = true;
                c cVar = this.f;
                if (cVar != null) {
                    cVar.dispose();
                }
                a aVar = (a) cVar;
                if (aVar != null) {
                    aVar.run();
                }
                this.f7109a.onComplete();
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

    public ae(io.reactivex.ae<T> aeVar, long j, TimeUnit timeUnit, ah ahVar) {
        super(aeVar);
        this.f7106b = j;
        this.c = timeUnit;
        this.d = ahVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        io.reactivex.ae aeVar = this.f7091a;
        b bVar = new b(new d(agVar), this.f7106b, this.c, this.d.createWorker());
        aeVar.subscribe(bVar);
    }
}
