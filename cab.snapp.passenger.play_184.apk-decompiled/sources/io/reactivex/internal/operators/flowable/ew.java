package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class ew<T, B> extends a<T, j<T>> {
    final Callable<? extends org.b.b<B>> c;
    final int d;

    static final class a<T, B> extends io.reactivex.k.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, B> f8303a;

        /* renamed from: b  reason: collision with root package name */
        boolean f8304b;

        a(b<T, B> bVar) {
            this.f8303a = bVar;
        }

        public final void onNext(B b2) {
            if (!this.f8304b) {
                this.f8304b = true;
                dispose();
                b<T, B> bVar = this.f8303a;
                bVar.c.compareAndSet(this, null);
                bVar.f.offer(b.j);
                bVar.a();
            }
        }

        public final void onError(Throwable th) {
            if (this.f8304b) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.f8304b = true;
            b<T, B> bVar = this.f8303a;
            bVar.l.cancel();
            if (bVar.g.addThrowable(th)) {
                bVar.m = true;
                bVar.a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (!this.f8304b) {
                this.f8304b = true;
                b<T, B> bVar = this.f8303a;
                bVar.l.cancel();
                bVar.m = true;
                bVar.a();
            }
        }
    }

    static final class b<T, B> extends AtomicInteger implements o<T>, Runnable, d {
        static final a<Object, Object> d = new a<>(null);
        static final Object j = new Object();

        /* renamed from: a  reason: collision with root package name */
        final c<? super j<T>> f8305a;

        /* renamed from: b  reason: collision with root package name */
        final int f8306b;
        final AtomicReference<a<T, B>> c = new AtomicReference<>();
        final AtomicInteger e = new AtomicInteger(1);
        final io.reactivex.internal.d.a<Object> f = new io.reactivex.internal.d.a<>();
        final io.reactivex.internal.util.b g = new io.reactivex.internal.util.b();
        final AtomicBoolean h = new AtomicBoolean();
        final Callable<? extends org.b.b<B>> i;
        final AtomicLong k;
        d l;
        volatile boolean m;
        io.reactivex.h.c<T> n;
        long o;

        b(c<? super j<T>> cVar, int i2, Callable<? extends org.b.b<B>> callable) {
            this.f8305a = cVar;
            this.f8306b = i2;
            this.i = callable;
            this.k = new AtomicLong();
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.l, dVar)) {
                this.l = dVar;
                this.f8305a.onSubscribe(this);
                this.f.offer(j);
                a();
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            this.f.offer(t);
            a();
        }

        public final void onError(Throwable th) {
            b();
            if (this.g.addThrowable(th)) {
                this.m = true;
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            b();
            this.m = true;
            a();
        }

        public final void cancel() {
            if (this.h.compareAndSet(false, true)) {
                b();
                if (this.e.decrementAndGet() == 0) {
                    this.l.cancel();
                }
            }
        }

        public final void request(long j2) {
            io.reactivex.internal.util.c.add(this.k, j2);
        }

        private void b() {
            io.reactivex.b.c andSet = this.c.getAndSet(d);
            if (andSet != null && andSet != d) {
                andSet.dispose();
            }
        }

        public final void run() {
            if (this.e.decrementAndGet() == 0) {
                this.l.cancel();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                c<? super j<T>> cVar = this.f8305a;
                io.reactivex.internal.d.a<Object> aVar = this.f;
                io.reactivex.internal.util.b bVar = this.g;
                long j2 = this.o;
                int i2 = 1;
                while (this.e.get() != 0) {
                    io.reactivex.h.c<T> cVar2 = this.n;
                    boolean z = this.m;
                    if (!z || bVar.get() == null) {
                        Object poll = aVar.poll();
                        boolean z2 = poll == null;
                        if (z && z2) {
                            Throwable terminate = bVar.terminate();
                            if (terminate == null) {
                                if (cVar2 != null) {
                                    this.n = null;
                                    cVar2.onComplete();
                                }
                                cVar.onComplete();
                                return;
                            }
                            if (cVar2 != null) {
                                this.n = null;
                                cVar2.onError(terminate);
                            }
                            cVar.onError(terminate);
                            return;
                        } else if (z2) {
                            this.o = j2;
                            i2 = addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        } else if (poll != j) {
                            cVar2.onNext(poll);
                        } else {
                            if (cVar2 != null) {
                                this.n = null;
                                cVar2.onComplete();
                            }
                            if (!this.h.get()) {
                                if (j2 != this.k.get()) {
                                    io.reactivex.h.c<T> create = io.reactivex.h.c.create(this.f8306b, this);
                                    this.n = create;
                                    this.e.getAndIncrement();
                                    try {
                                        org.b.b bVar2 = (org.b.b) io.reactivex.internal.a.b.requireNonNull(this.i.call(), "The other Callable returned a null Publisher");
                                        a aVar2 = new a(this);
                                        if (this.c.compareAndSet(null, aVar2)) {
                                            bVar2.subscribe(aVar2);
                                            j2++;
                                            cVar.onNext(create);
                                        }
                                    } catch (Throwable th) {
                                        io.reactivex.c.b.throwIfFatal(th);
                                        bVar.addThrowable(th);
                                        this.m = true;
                                    }
                                } else {
                                    this.l.cancel();
                                    b();
                                    bVar.addThrowable(new io.reactivex.c.c("Could not deliver a window due to lack of requests"));
                                    this.m = true;
                                }
                            }
                        }
                    } else {
                        aVar.clear();
                        Throwable terminate2 = bVar.terminate();
                        if (cVar2 != null) {
                            this.n = null;
                            cVar2.onError(terminate2);
                        }
                        cVar.onError(terminate2);
                        return;
                    }
                }
                aVar.clear();
                this.n = null;
            }
        }
    }

    public ew(j<T> jVar, Callable<? extends org.b.b<B>> callable, int i) {
        super(jVar);
        this.c = callable;
        this.d = i;
    }

    public final void subscribeActual(c<? super j<T>> cVar) {
        this.f7923b.subscribe(new b(cVar, this.d, this.c));
    }
}
