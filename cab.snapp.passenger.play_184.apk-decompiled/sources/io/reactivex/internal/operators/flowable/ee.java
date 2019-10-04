package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.b.c;
import org.b.d;

public final class ee<T> extends a<T, T> {
    final long c;
    final long d;
    final TimeUnit e;
    final ah f;
    final int g;
    final boolean h;

    static final class a<T> extends AtomicInteger implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8242a;

        /* renamed from: b  reason: collision with root package name */
        final long f8243b;
        final long c;
        final TimeUnit d;
        final ah e;
        final io.reactivex.internal.d.c<Object> f;
        final boolean g;
        d h;
        final AtomicLong i = new AtomicLong();
        volatile boolean j;
        volatile boolean k;
        Throwable l;

        a(c<? super T> cVar, long j2, long j3, TimeUnit timeUnit, ah ahVar, int i2, boolean z) {
            this.f8242a = cVar;
            this.f8243b = j2;
            this.c = j3;
            this.d = timeUnit;
            this.e = ahVar;
            this.f = new io.reactivex.internal.d.c<>(i2);
            this.g = z;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.h, dVar)) {
                this.h = dVar;
                this.f8242a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            io.reactivex.internal.d.c<Object> cVar = this.f;
            long now = this.e.now(this.d);
            cVar.offer(Long.valueOf(now), t);
            a(now, cVar);
        }

        public final void onError(Throwable th) {
            if (this.g) {
                a(this.e.now(this.d), this.f);
            }
            this.l = th;
            this.k = true;
            a();
        }

        public final void onComplete() {
            a(this.e.now(this.d), this.f);
            this.k = true;
            a();
        }

        private void a(long j2, io.reactivex.internal.d.c<Object> cVar) {
            long j3 = this.c;
            long j4 = this.f8243b;
            boolean z = j4 == Long.MAX_VALUE;
            while (!cVar.isEmpty()) {
                if (((Long) cVar.peek()).longValue() < j2 - j3 || (!z && ((long) (cVar.size() >> 1)) > j4)) {
                    cVar.poll();
                    cVar.poll();
                } else {
                    return;
                }
            }
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.i, j2);
                a();
            }
        }

        public final void cancel() {
            if (!this.j) {
                this.j = true;
                this.h.cancel();
                if (getAndIncrement() == 0) {
                    this.f.clear();
                }
            }
        }

        private void a() {
            if (getAndIncrement() == 0) {
                c<? super T> cVar = this.f8242a;
                io.reactivex.internal.d.c<Object> cVar2 = this.f;
                boolean z = this.g;
                int i2 = 1;
                do {
                    if (this.k) {
                        if (!a(cVar2.isEmpty(), cVar, z)) {
                            long j2 = this.i.get();
                            long j3 = 0;
                            while (true) {
                                if (!a(cVar2.peek() == null, cVar, z)) {
                                    if (j2 != j3) {
                                        cVar2.poll();
                                        cVar.onNext(cVar2.poll());
                                        j3++;
                                    } else if (j3 != 0) {
                                        io.reactivex.internal.util.c.produced(this.i, j3);
                                    }
                                } else {
                                    return;
                                }
                            }
                        } else {
                            return;
                        }
                    }
                    i2 = addAndGet(-i2);
                } while (i2 != 0);
            }
        }

        private boolean a(boolean z, c<? super T> cVar, boolean z2) {
            if (this.j) {
                this.f.clear();
                return true;
            }
            if (!z2) {
                Throwable th = this.l;
                if (th != null) {
                    this.f.clear();
                    cVar.onError(th);
                    return true;
                } else if (z) {
                    cVar.onComplete();
                    return true;
                }
            } else if (z) {
                Throwable th2 = this.l;
                if (th2 != null) {
                    cVar.onError(th2);
                } else {
                    cVar.onComplete();
                }
                return true;
            }
            return false;
        }
    }

    public ee(j<T> jVar, long j, long j2, TimeUnit timeUnit, ah ahVar, int i, boolean z) {
        super(jVar);
        this.c = j;
        this.d = j2;
        this.e = timeUnit;
        this.f = ahVar;
        this.g = i;
        this.h = z;
    }

    public final void subscribeActual(c<? super T> cVar) {
        j jVar = this.f7923b;
        a aVar = new a(cVar, this.c, this.d, this.e, this.f, this.g, this.h);
        jVar.subscribe(aVar);
    }
}
