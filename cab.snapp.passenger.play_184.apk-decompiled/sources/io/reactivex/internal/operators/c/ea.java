package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.f;
import io.reactivex.internal.util.h;
import io.reactivex.z;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class ea<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f7483b;
    final TimeUnit c;
    final ah d;
    final ae<? extends T> e;

    static final class a<T> implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7484a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.b.c> f7485b;

        a(ag<? super T> agVar, AtomicReference<io.reactivex.b.c> atomicReference) {
            this.f7484a = agVar;
            this.f7485b = atomicReference;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.replace(this.f7485b, cVar);
        }

        public final void onNext(T t) {
            this.f7484a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f7484a.onError(th);
        }

        public final void onComplete() {
            this.f7484a.onComplete();
        }
    }

    static final class b<T> extends AtomicReference<io.reactivex.b.c> implements ag<T>, io.reactivex.b.c, d {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7486a;

        /* renamed from: b  reason: collision with root package name */
        final long f7487b;
        final TimeUnit c;
        final ah.c d;
        final f e = new f();
        final AtomicLong f = new AtomicLong();
        final AtomicReference<io.reactivex.b.c> g = new AtomicReference<>();
        ae<? extends T> h;

        b(ag<? super T> agVar, long j, TimeUnit timeUnit, ah.c cVar, ae<? extends T> aeVar) {
            this.f7486a = agVar;
            this.f7487b = j;
            this.c = timeUnit;
            this.d = cVar;
            this.h = aeVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this.g, cVar);
        }

        public final void onNext(T t) {
            long j = this.f.get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (this.f.compareAndSet(j, j2)) {
                    ((io.reactivex.b.c) this.e.get()).dispose();
                    this.f7486a.onNext(t);
                    a(j2);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(long j) {
            this.e.replace(this.d.schedule(new e(j, this), this.f7487b, this.c));
        }

        public final void onError(Throwable th) {
            if (this.f.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.e.dispose();
                this.f7486a.onError(th);
                this.d.dispose();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (this.f.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.e.dispose();
                this.f7486a.onComplete();
                this.d.dispose();
            }
        }

        public final void onTimeout(long j) {
            if (this.f.compareAndSet(j, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.g);
                ae<? extends T> aeVar = this.h;
                this.h = null;
                aeVar.subscribe(new a(this.f7486a, this));
                this.d.dispose();
            }
        }

        public final void dispose() {
            DisposableHelper.dispose(this.g);
            DisposableHelper.dispose(this);
            this.d.dispose();
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((io.reactivex.b.c) get());
        }
    }

    static final class c<T> extends AtomicLong implements ag<T>, io.reactivex.b.c, d {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7488a;

        /* renamed from: b  reason: collision with root package name */
        final long f7489b;
        final TimeUnit c;
        final ah.c d;
        final f e = new f();
        final AtomicReference<io.reactivex.b.c> f = new AtomicReference<>();

        c(ag<? super T> agVar, long j, TimeUnit timeUnit, ah.c cVar) {
            this.f7488a = agVar;
            this.f7489b = j;
            this.c = timeUnit;
            this.d = cVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this.f, cVar);
        }

        public final void onNext(T t) {
            long j = get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (compareAndSet(j, j2)) {
                    ((io.reactivex.b.c) this.e.get()).dispose();
                    this.f7488a.onNext(t);
                    a(j2);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(long j) {
            this.e.replace(this.d.schedule(new e(j, this), this.f7489b, this.c));
        }

        public final void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.e.dispose();
                this.f7488a.onError(th);
                this.d.dispose();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.e.dispose();
                this.f7488a.onComplete();
                this.d.dispose();
            }
        }

        public final void onTimeout(long j) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f);
                this.f7488a.onError(new TimeoutException(h.timeoutMessage(this.f7489b, this.c)));
                this.d.dispose();
            }
        }

        public final void dispose() {
            DisposableHelper.dispose(this.f);
            this.d.dispose();
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f.get());
        }
    }

    interface d {
        void onTimeout(long j);
    }

    static final class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final d f7490a;

        /* renamed from: b  reason: collision with root package name */
        final long f7491b;

        e(long j, d dVar) {
            this.f7491b = j;
            this.f7490a = dVar;
        }

        public final void run() {
            this.f7490a.onTimeout(this.f7491b);
        }
    }

    public ea(z<T> zVar, long j, TimeUnit timeUnit, ah ahVar, ae<? extends T> aeVar) {
        super(zVar);
        this.f7483b = j;
        this.c = timeUnit;
        this.d = ahVar;
        this.e = aeVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        if (this.e == null) {
            c cVar = new c(agVar, this.f7483b, this.c, this.d.createWorker());
            agVar.onSubscribe(cVar);
            cVar.a(0);
            this.f7091a.subscribe(cVar);
            return;
        }
        b bVar = new b(agVar, this.f7483b, this.c, this.d.createWorker(), this.e);
        agVar.onSubscribe(bVar);
        bVar.a(0);
        this.f7091a.subscribe(bVar);
    }
}
