package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class eu<T, B> extends a<T, j<T>> {
    final org.b.b<B> c;
    final int d;

    static final class a<T, B> extends io.reactivex.k.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, B> f8292a;

        /* renamed from: b  reason: collision with root package name */
        boolean f8293b;

        a(b<T, B> bVar) {
            this.f8292a = bVar;
        }

        public final void onNext(B b2) {
            if (!this.f8293b) {
                this.f8292a.a();
            }
        }

        public final void onError(Throwable th) {
            if (this.f8293b) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.f8293b = true;
            b<T, B> bVar = this.f8292a;
            SubscriptionHelper.cancel(bVar.d);
            if (bVar.g.addThrowable(th)) {
                bVar.k = true;
                bVar.b();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (!this.f8293b) {
                this.f8293b = true;
                b<T, B> bVar = this.f8292a;
                SubscriptionHelper.cancel(bVar.d);
                bVar.k = true;
                bVar.b();
            }
        }
    }

    static final class b<T, B> extends AtomicInteger implements o<T>, Runnable, d {
        static final Object j = new Object();

        /* renamed from: a  reason: collision with root package name */
        final c<? super j<T>> f8294a;

        /* renamed from: b  reason: collision with root package name */
        final int f8295b;
        final a<T, B> c = new a<>(this);
        final AtomicReference<d> d = new AtomicReference<>();
        final AtomicInteger e = new AtomicInteger(1);
        final io.reactivex.internal.d.a<Object> f = new io.reactivex.internal.d.a<>();
        final io.reactivex.internal.util.b g = new io.reactivex.internal.util.b();
        final AtomicBoolean h = new AtomicBoolean();
        final AtomicLong i = new AtomicLong();
        volatile boolean k;
        io.reactivex.h.c<T> l;
        long m;

        b(c<? super j<T>> cVar, int i2) {
            this.f8294a = cVar;
            this.f8295b = i2;
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.setOnce(this.d, dVar, Long.MAX_VALUE);
        }

        public final void onNext(T t) {
            this.f.offer(t);
            b();
        }

        public final void onError(Throwable th) {
            this.c.dispose();
            if (this.g.addThrowable(th)) {
                this.k = true;
                b();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.c.dispose();
            this.k = true;
            b();
        }

        public final void cancel() {
            if (this.h.compareAndSet(false, true)) {
                this.c.dispose();
                if (this.e.decrementAndGet() == 0) {
                    SubscriptionHelper.cancel(this.d);
                }
            }
        }

        public final void request(long j2) {
            io.reactivex.internal.util.c.add(this.i, j2);
        }

        public final void run() {
            if (this.e.decrementAndGet() == 0) {
                SubscriptionHelper.cancel(this.d);
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.f.offer(j);
            b();
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            if (getAndIncrement() == 0) {
                c<? super j<T>> cVar = this.f8294a;
                io.reactivex.internal.d.a<Object> aVar = this.f;
                io.reactivex.internal.util.b bVar = this.g;
                long j2 = this.m;
                int i2 = 1;
                while (this.e.get() != 0) {
                    io.reactivex.h.c<T> cVar2 = this.l;
                    boolean z = this.k;
                    if (!z || bVar.get() == null) {
                        Object poll = aVar.poll();
                        boolean z2 = poll == null;
                        if (z && z2) {
                            Throwable terminate = bVar.terminate();
                            if (terminate == null) {
                                if (cVar2 != null) {
                                    this.l = null;
                                    cVar2.onComplete();
                                }
                                cVar.onComplete();
                                return;
                            }
                            if (cVar2 != null) {
                                this.l = null;
                                cVar2.onError(terminate);
                            }
                            cVar.onError(terminate);
                            return;
                        } else if (z2) {
                            this.m = j2;
                            i2 = addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        } else if (poll != j) {
                            cVar2.onNext(poll);
                        } else {
                            if (cVar2 != null) {
                                this.l = null;
                                cVar2.onComplete();
                            }
                            if (!this.h.get()) {
                                io.reactivex.h.c<T> create = io.reactivex.h.c.create(this.f8295b, this);
                                this.l = create;
                                this.e.getAndIncrement();
                                if (j2 != this.i.get()) {
                                    j2++;
                                    cVar.onNext(create);
                                } else {
                                    SubscriptionHelper.cancel(this.d);
                                    this.c.dispose();
                                    bVar.addThrowable(new io.reactivex.c.c("Could not deliver a window due to lack of requests"));
                                    this.k = true;
                                }
                            }
                        }
                    } else {
                        aVar.clear();
                        Throwable terminate2 = bVar.terminate();
                        if (cVar2 != null) {
                            this.l = null;
                            cVar2.onError(terminate2);
                        }
                        cVar.onError(terminate2);
                        return;
                    }
                }
                aVar.clear();
                this.l = null;
            }
        }
    }

    public eu(j<T> jVar, org.b.b<B> bVar, int i) {
        super(jVar);
        this.c = bVar;
        this.d = i;
    }

    public final void subscribeActual(c<? super j<T>> cVar) {
        b bVar = new b(cVar, this.d);
        cVar.onSubscribe(bVar);
        bVar.a();
        this.c.subscribe(bVar.c);
        this.f7923b.subscribe(bVar);
    }
}
