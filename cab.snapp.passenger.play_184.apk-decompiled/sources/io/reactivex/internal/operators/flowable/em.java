package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.disposables.f;
import io.reactivex.internal.operators.flowable.en;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.subscriptions.e;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class em<T, U, V> extends a<T, T> {
    final org.b.b<U> c;
    final h<? super T, ? extends org.b.b<V>> d;
    final org.b.b<? extends T> e;

    static final class a extends AtomicReference<org.b.d> implements io.reactivex.b.c, o<Object> {

        /* renamed from: a  reason: collision with root package name */
        final c f8258a;

        /* renamed from: b  reason: collision with root package name */
        final long f8259b;

        a(long j, c cVar) {
            this.f8259b = j;
            this.f8258a = cVar;
        }

        public final void onSubscribe(org.b.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }

        public final void onNext(Object obj) {
            org.b.d dVar = (org.b.d) get();
            if (dVar != SubscriptionHelper.CANCELLED) {
                dVar.cancel();
                lazySet(SubscriptionHelper.CANCELLED);
                this.f8258a.onTimeout(this.f8259b);
            }
        }

        public final void onError(Throwable th) {
            if (get() != SubscriptionHelper.CANCELLED) {
                lazySet(SubscriptionHelper.CANCELLED);
                this.f8258a.onTimeoutError(this.f8259b, th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (get() != SubscriptionHelper.CANCELLED) {
                lazySet(SubscriptionHelper.CANCELLED);
                this.f8258a.onTimeout(this.f8259b);
            }
        }

        public final void dispose() {
            SubscriptionHelper.cancel(this);
        }

        public final boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }
    }

    static final class b<T> extends e implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f8260a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends org.b.b<?>> f8261b;
        final f c = new f();
        final AtomicReference<org.b.d> d = new AtomicReference<>();
        final AtomicLong e;
        org.b.b<? extends T> f;
        long g;

        b(org.b.c<? super T> cVar, h<? super T, ? extends org.b.b<?>> hVar, org.b.b<? extends T> bVar) {
            super(true);
            this.f8260a = cVar;
            this.f8261b = hVar;
            this.f = bVar;
            this.e = new AtomicLong();
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.setOnce(this.d, dVar)) {
                setSubscription(dVar);
            }
        }

        public final void onNext(T t) {
            long j = this.e.get();
            if (j != Long.MAX_VALUE) {
                long j2 = j + 1;
                if (this.e.compareAndSet(j, j2)) {
                    io.reactivex.b.c cVar = (io.reactivex.b.c) this.c.get();
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    this.g++;
                    this.f8260a.onNext(t);
                    try {
                        org.b.b bVar = (org.b.b) io.reactivex.internal.a.b.requireNonNull(this.f8261b.apply(t), "The itemTimeoutIndicator returned a null Publisher.");
                        a aVar = new a(j2, this);
                        if (this.c.replace(aVar)) {
                            bVar.subscribe(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        this.d.get().cancel();
                        this.e.getAndSet(Long.MAX_VALUE);
                        this.f8260a.onError(th);
                    }
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.e.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.c.dispose();
                this.f8260a.onError(th);
                this.c.dispose();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (this.e.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.c.dispose();
                this.f8260a.onComplete();
                this.c.dispose();
            }
        }

        public final void onTimeout(long j) {
            if (this.e.compareAndSet(j, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.d);
                org.b.b<? extends T> bVar = this.f;
                this.f = null;
                long j2 = this.g;
                if (j2 != 0) {
                    produced(j2);
                }
                bVar.subscribe(new en.a(this.f8260a, this));
            }
        }

        public final void onTimeoutError(long j, Throwable th) {
            if (this.e.compareAndSet(j, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.d);
                this.f8260a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void cancel() {
            super.cancel();
            this.c.dispose();
        }
    }

    interface c extends en.d {
        void onTimeoutError(long j, Throwable th);
    }

    static final class d<T> extends AtomicLong implements c, o<T>, org.b.d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f8262a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends org.b.b<?>> f8263b;
        final f c = new f();
        final AtomicReference<org.b.d> d = new AtomicReference<>();
        final AtomicLong e = new AtomicLong();

        d(org.b.c<? super T> cVar, h<? super T, ? extends org.b.b<?>> hVar) {
            this.f8262a = cVar;
            this.f8263b = hVar;
        }

        public final void onSubscribe(org.b.d dVar) {
            SubscriptionHelper.deferredSetOnce(this.d, this.e, dVar);
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
                    this.f8262a.onNext(t);
                    try {
                        org.b.b bVar = (org.b.b) io.reactivex.internal.a.b.requireNonNull(this.f8263b.apply(t), "The itemTimeoutIndicator returned a null Publisher.");
                        a aVar = new a(j2, this);
                        if (this.c.replace(aVar)) {
                            bVar.subscribe(aVar);
                        }
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        this.d.get().cancel();
                        getAndSet(Long.MAX_VALUE);
                        this.f8262a.onError(th);
                    }
                }
            }
        }

        public final void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.c.dispose();
                this.f8262a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.c.dispose();
                this.f8262a.onComplete();
            }
        }

        public final void onTimeout(long j) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.d);
                this.f8262a.onError(new TimeoutException());
            }
        }

        public final void onTimeoutError(long j, Throwable th) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.d);
                this.f8262a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void request(long j) {
            SubscriptionHelper.deferredRequest(this.d, this.e, j);
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this.d);
            this.c.dispose();
        }
    }

    public em(j<T> jVar, org.b.b<U> bVar, h<? super T, ? extends org.b.b<V>> hVar, org.b.b<? extends T> bVar2) {
        super(jVar);
        this.c = bVar;
        this.d = hVar;
        this.e = bVar2;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        org.b.b<? extends T> bVar = this.e;
        if (bVar == null) {
            d dVar = new d(cVar, this.d);
            cVar.onSubscribe(dVar);
            org.b.b<U> bVar2 = this.c;
            if (bVar2 != null) {
                a aVar = new a(0, dVar);
                if (dVar.c.replace(aVar)) {
                    bVar2.subscribe(aVar);
                }
            }
            this.f7923b.subscribe(dVar);
            return;
        }
        b bVar3 = new b(cVar, this.d, bVar);
        cVar.onSubscribe(bVar3);
        org.b.b<U> bVar4 = this.c;
        if (bVar4 != null) {
            a aVar2 = new a(0, bVar3);
            if (bVar3.c.replace(aVar2)) {
                bVar4.subscribe(aVar2);
            }
        }
        this.f7923b.subscribe(bVar3);
    }
}
