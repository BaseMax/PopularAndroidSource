package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.f;
import io.reactivex.internal.operators.c.ea;
import io.reactivex.z;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class dz<T, U, V> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final ae<U> f7471b;
    final h<? super T, ? extends ae<V>> c;
    final ae<? extends T> d;

    static final class a extends AtomicReference<io.reactivex.b.c> implements ag<Object>, io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final d f7472a;

        /* renamed from: b  reason: collision with root package name */
        final long f7473b;

        a(long j, d dVar) {
            this.f7473b = j;
            this.f7472a = dVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onNext(Object obj) {
            io.reactivex.b.c cVar = (io.reactivex.b.c) get();
            if (cVar != DisposableHelper.DISPOSED) {
                cVar.dispose();
                lazySet(DisposableHelper.DISPOSED);
                this.f7472a.onTimeout(this.f7473b);
            }
        }

        public final void onError(Throwable th) {
            if (get() != DisposableHelper.DISPOSED) {
                lazySet(DisposableHelper.DISPOSED);
                this.f7472a.onTimeoutError(this.f7473b, th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (get() != DisposableHelper.DISPOSED) {
                lazySet(DisposableHelper.DISPOSED);
                this.f7472a.onTimeout(this.f7473b);
            }
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((io.reactivex.b.c) get());
        }
    }

    static final class b<T> extends AtomicReference<io.reactivex.b.c> implements ag<T>, io.reactivex.b.c, d {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7474a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ae<?>> f7475b;
        final f c = new f();
        final AtomicLong d;
        final AtomicReference<io.reactivex.b.c> e;
        ae<? extends T> f;

        b(ag<? super T> agVar, h<? super T, ? extends ae<?>> hVar, ae<? extends T> aeVar) {
            this.f7474a = agVar;
            this.f7475b = hVar;
            this.f = aeVar;
            this.d = new AtomicLong();
            this.e = new AtomicReference<>();
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this.e, cVar);
        }

        public final void onNext(T t) {
            long j = this.d.get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (this.d.compareAndSet(j, j2)) {
                    io.reactivex.b.c cVar = (io.reactivex.b.c) this.c.get();
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    this.f7474a.onNext(t);
                    try {
                        ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f7475b.apply(t), "The itemTimeoutIndicator returned a null ObservableSource.");
                        a aVar = new a(j2, this);
                        if (this.c.replace(aVar)) {
                            aeVar.subscribe(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        this.e.get().dispose();
                        this.d.getAndSet(Long.MAX_VALUE);
                        this.f7474a.onError(th);
                    }
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.d.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.c.dispose();
                this.f7474a.onError(th);
                this.c.dispose();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (this.d.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.c.dispose();
                this.f7474a.onComplete();
                this.c.dispose();
            }
        }

        public final void onTimeout(long j) {
            if (this.d.compareAndSet(j, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.e);
                ae<? extends T> aeVar = this.f;
                this.f = null;
                aeVar.subscribe(new ea.a(this.f7474a, this));
            }
        }

        public final void onTimeoutError(long j, Throwable th) {
            if (this.d.compareAndSet(j, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this);
                this.f7474a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void dispose() {
            DisposableHelper.dispose(this.e);
            DisposableHelper.dispose(this);
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((io.reactivex.b.c) get());
        }
    }

    static final class c<T> extends AtomicLong implements ag<T>, io.reactivex.b.c, d {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7476a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ae<?>> f7477b;
        final f c = new f();
        final AtomicReference<io.reactivex.b.c> d = new AtomicReference<>();

        c(ag<? super T> agVar, h<? super T, ? extends ae<?>> hVar) {
            this.f7476a = agVar;
            this.f7477b = hVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this.d, cVar);
        }

        public final void onNext(T t) {
            long j = get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (compareAndSet(j, j2)) {
                    io.reactivex.b.c cVar = (io.reactivex.b.c) this.c.get();
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    this.f7476a.onNext(t);
                    try {
                        ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f7477b.apply(t), "The itemTimeoutIndicator returned a null ObservableSource.");
                        a aVar = new a(j2, this);
                        if (this.c.replace(aVar)) {
                            aeVar.subscribe(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        this.d.get().dispose();
                        getAndSet(Long.MAX_VALUE);
                        this.f7476a.onError(th);
                    }
                }
            }
        }

        public final void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.c.dispose();
                this.f7476a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.c.dispose();
                this.f7476a.onComplete();
            }
        }

        public final void onTimeout(long j) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.d);
                this.f7476a.onError(new TimeoutException());
            }
        }

        public final void onTimeoutError(long j, Throwable th) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.d);
                this.f7476a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void dispose() {
            DisposableHelper.dispose(this.d);
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed(this.d.get());
        }
    }

    interface d extends ea.d {
        void onTimeoutError(long j, Throwable th);
    }

    public dz(z<T> zVar, ae<U> aeVar, h<? super T, ? extends ae<V>> hVar, ae<? extends T> aeVar2) {
        super(zVar);
        this.f7471b = aeVar;
        this.c = hVar;
        this.d = aeVar2;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        ae<? extends T> aeVar = this.d;
        if (aeVar == null) {
            c cVar = new c(agVar, this.c);
            agVar.onSubscribe(cVar);
            ae<U> aeVar2 = this.f7471b;
            if (aeVar2 != null) {
                a aVar = new a(0, cVar);
                if (cVar.c.replace(aVar)) {
                    aeVar2.subscribe(aVar);
                }
            }
            this.f7091a.subscribe(cVar);
            return;
        }
        b bVar = new b(agVar, this.c, aeVar);
        agVar.onSubscribe(bVar);
        ae<U> aeVar3 = this.f7471b;
        if (aeVar3 != null) {
            a aVar2 = new a(0, bVar);
            if (bVar.c.replace(aVar2)) {
                aeVar3.subscribe(aVar2);
            }
        }
        this.f7091a.subscribe(bVar);
    }
}
