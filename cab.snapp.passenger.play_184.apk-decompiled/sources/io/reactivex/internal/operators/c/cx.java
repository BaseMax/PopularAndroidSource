package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.d;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class cx<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f7370b;
    final TimeUnit c;
    final ah d;
    final boolean e;

    static final class a<T> extends c<T> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicInteger f7371a = new AtomicInteger(1);

        a(ag<? super T> agVar, long j, TimeUnit timeUnit, ah ahVar) {
            super(agVar, j, timeUnit, ahVar);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            b();
            if (this.f7371a.decrementAndGet() == 0) {
                this.f7372b.onComplete();
            }
        }

        public final void run() {
            if (this.f7371a.incrementAndGet() == 2) {
                b();
                if (this.f7371a.decrementAndGet() == 0) {
                    this.f7372b.onComplete();
                }
            }
        }
    }

    static final class b<T> extends c<T> {
        b(ag<? super T> agVar, long j, TimeUnit timeUnit, ah ahVar) {
            super(agVar, j, timeUnit, ahVar);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.f7372b.onComplete();
        }

        public final void run() {
            b();
        }
    }

    static abstract class c<T> extends AtomicReference<T> implements ag<T>, io.reactivex.b.c, Runnable {

        /* renamed from: b  reason: collision with root package name */
        final ag<? super T> f7372b;
        final long c;
        final TimeUnit d;
        final ah e;
        final AtomicReference<io.reactivex.b.c> f = new AtomicReference<>();
        io.reactivex.b.c g;

        /* access modifiers changed from: package-private */
        public abstract void a();

        c(ag<? super T> agVar, long j, TimeUnit timeUnit, ah ahVar) {
            this.f7372b = agVar;
            this.c = j;
            this.d = timeUnit;
            this.e = ahVar;
        }

        public void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.g, cVar)) {
                this.g = cVar;
                this.f7372b.onSubscribe(this);
                ah ahVar = this.e;
                long j = this.c;
                DisposableHelper.replace(this.f, ahVar.schedulePeriodicallyDirect(this, j, j, this.d));
            }
        }

        public void onNext(T t) {
            lazySet(t);
        }

        public void onError(Throwable th) {
            c();
            this.f7372b.onError(th);
        }

        public void onComplete() {
            c();
            a();
        }

        private void c() {
            DisposableHelper.dispose(this.f);
        }

        public void dispose() {
            c();
            this.g.dispose();
        }

        public boolean isDisposed() {
            return this.g.isDisposed();
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            Object andSet = getAndSet(null);
            if (andSet != null) {
                this.f7372b.onNext(andSet);
            }
        }
    }

    public cx(ae<T> aeVar, long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        super(aeVar);
        this.f7370b = j;
        this.c = timeUnit;
        this.d = ahVar;
        this.e = z;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        d dVar = new d(agVar);
        if (this.e) {
            ae aeVar = this.f7091a;
            a aVar = new a(dVar, this.f7370b, this.c, this.d);
            aeVar.subscribe(aVar);
            return;
        }
        ae aeVar2 = this.f7091a;
        b bVar = new b(dVar, this.f7370b, this.c, this.d);
        aeVar2.subscribe(bVar);
    }
}
