package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class cy<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final ae<?> f7373b;
    final boolean c;

    static final class a<T> extends c<T> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicInteger f7374a = new AtomicInteger();

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f7375b;

        a(ag<? super T> agVar, ae<?> aeVar) {
            super(agVar, aeVar);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.f7375b = true;
            if (this.f7374a.getAndIncrement() == 0) {
                c();
                this.c.onComplete();
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            if (this.f7374a.getAndIncrement() == 0) {
                do {
                    boolean z = this.f7375b;
                    c();
                    if (z) {
                        this.c.onComplete();
                        return;
                    }
                } while (this.f7374a.decrementAndGet() != 0);
            }
        }
    }

    static final class b<T> extends c<T> {
        b(ag<? super T> agVar, ae<?> aeVar) {
            super(agVar, aeVar);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.c.onComplete();
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            c();
        }
    }

    static abstract class c<T> extends AtomicReference<T> implements ag<T>, io.reactivex.b.c {
        final ag<? super T> c;
        final ae<?> d;
        final AtomicReference<io.reactivex.b.c> e = new AtomicReference<>();
        io.reactivex.b.c f;

        /* access modifiers changed from: package-private */
        public abstract void a();

        /* access modifiers changed from: package-private */
        public abstract void b();

        c(ag<? super T> agVar, ae<?> aeVar) {
            this.c = agVar;
            this.d = aeVar;
        }

        public void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.f, cVar)) {
                this.f = cVar;
                this.c.onSubscribe(this);
                if (this.e.get() == null) {
                    this.d.subscribe(new d(this));
                }
            }
        }

        public void onNext(T t) {
            lazySet(t);
        }

        public void onError(Throwable th) {
            DisposableHelper.dispose(this.e);
            this.c.onError(th);
        }

        public void onComplete() {
            DisposableHelper.dispose(this.e);
            a();
        }

        public void dispose() {
            DisposableHelper.dispose(this.e);
            this.f.dispose();
        }

        public boolean isDisposed() {
            return this.e.get() == DisposableHelper.DISPOSED;
        }

        public void error(Throwable th) {
            this.f.dispose();
            this.c.onError(th);
        }

        public void complete() {
            this.f.dispose();
            a();
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            Object andSet = getAndSet(null);
            if (andSet != null) {
                this.c.onNext(andSet);
            }
        }
    }

    static final class d<T> implements ag<Object> {

        /* renamed from: a  reason: collision with root package name */
        final c<T> f7376a;

        d(c<T> cVar) {
            this.f7376a = cVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this.f7376a.e, cVar);
        }

        public final void onNext(Object obj) {
            this.f7376a.b();
        }

        public final void onError(Throwable th) {
            this.f7376a.error(th);
        }

        public final void onComplete() {
            this.f7376a.complete();
        }
    }

    public cy(ae<T> aeVar, ae<?> aeVar2, boolean z) {
        super(aeVar);
        this.f7373b = aeVar2;
        this.c = z;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        io.reactivex.observers.d dVar = new io.reactivex.observers.d(agVar);
        if (this.c) {
            this.f7091a.subscribe(new a(dVar, this.f7373b));
        } else {
            this.f7091a.subscribe(new b(dVar, this.f7373b));
        }
    }
}
