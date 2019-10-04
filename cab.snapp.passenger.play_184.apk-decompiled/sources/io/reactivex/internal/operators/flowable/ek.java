package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class ek<T> extends a<T, T> {
    final long c;
    final TimeUnit d;
    final ah e;
    final boolean f;

    static final class a<T> extends AtomicInteger implements o<T>, Runnable, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8254a;

        /* renamed from: b  reason: collision with root package name */
        final long f8255b;
        final TimeUnit c;
        final ah.c d;
        final boolean e;
        final AtomicReference<T> f = new AtomicReference<>();
        final AtomicLong g = new AtomicLong();
        d h;
        volatile boolean i;
        Throwable j;
        volatile boolean k;
        volatile boolean l;
        long m;
        boolean n;

        a(c<? super T> cVar, long j2, TimeUnit timeUnit, ah.c cVar2, boolean z) {
            this.f8254a = cVar;
            this.f8255b = j2;
            this.c = timeUnit;
            this.d = cVar2;
            this.e = z;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.h, dVar)) {
                this.h = dVar;
                this.f8254a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            this.f.set(t);
            a();
        }

        public final void onError(Throwable th) {
            this.j = th;
            this.i = true;
            a();
        }

        public final void onComplete() {
            this.i = true;
            a();
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.g, j2);
            }
        }

        public final void cancel() {
            this.k = true;
            this.h.cancel();
            this.d.dispose();
            if (getAndIncrement() == 0) {
                this.f.lazySet(null);
            }
        }

        public final void run() {
            this.l = true;
            a();
        }

        private void a() {
            if (getAndIncrement() == 0) {
                AtomicReference<T> atomicReference = this.f;
                AtomicLong atomicLong = this.g;
                c<? super T> cVar = this.f8254a;
                int i2 = 1;
                while (!this.k) {
                    boolean z = this.i;
                    if (!z || this.j == null) {
                        boolean z2 = atomicReference.get() == null;
                        if (z) {
                            if (z2 || !this.e) {
                                atomicReference.lazySet(null);
                                cVar.onComplete();
                            } else {
                                T andSet = atomicReference.getAndSet(null);
                                long j2 = this.m;
                                if (j2 != atomicLong.get()) {
                                    this.m = j2 + 1;
                                    cVar.onNext(andSet);
                                    cVar.onComplete();
                                } else {
                                    cVar.onError(new io.reactivex.c.c("Could not emit final value due to lack of requests"));
                                }
                            }
                            this.d.dispose();
                            return;
                        }
                        if (z2) {
                            if (this.l) {
                                this.n = false;
                                this.l = false;
                            }
                        } else if (!this.n || this.l) {
                            T andSet2 = atomicReference.getAndSet(null);
                            long j3 = this.m;
                            if (j3 != atomicLong.get()) {
                                cVar.onNext(andSet2);
                                this.m = j3 + 1;
                                this.l = false;
                                this.n = true;
                                this.d.schedule(this, this.f8255b, this.c);
                            } else {
                                this.h.cancel();
                                cVar.onError(new io.reactivex.c.c("Could not emit value due to lack of requests"));
                                this.d.dispose();
                                return;
                            }
                        }
                        i2 = addAndGet(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    } else {
                        atomicReference.lazySet(null);
                        cVar.onError(this.j);
                        this.d.dispose();
                        return;
                    }
                }
                atomicReference.lazySet(null);
            }
        }
    }

    public ek(j<T> jVar, long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        super(jVar);
        this.c = j;
        this.d = timeUnit;
        this.e = ahVar;
        this.f = z;
    }

    public final void subscribeActual(c<? super T> cVar) {
        j jVar = this.f7923b;
        a aVar = new a(cVar, this.c, this.d, this.e.createWorker(), this.f);
        jVar.subscribe(aVar);
    }
}
