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

public final class dv<T> extends a<T, T> {
    final long c;
    final TimeUnit d;
    final ah e;
    final int f;
    final boolean g;

    static final class a<T> extends AtomicInteger implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8215a;

        /* renamed from: b  reason: collision with root package name */
        final long f8216b;
        final TimeUnit c;
        final ah d;
        final io.reactivex.internal.d.c<Object> e;
        final boolean f;
        d g;
        final AtomicLong h = new AtomicLong();
        volatile boolean i;
        volatile boolean j;
        Throwable k;

        a(c<? super T> cVar, long j2, TimeUnit timeUnit, ah ahVar, int i2, boolean z) {
            this.f8215a = cVar;
            this.f8216b = j2;
            this.c = timeUnit;
            this.d = ahVar;
            this.e = new io.reactivex.internal.d.c<>(i2);
            this.f = z;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.g, dVar)) {
                this.g = dVar;
                this.f8215a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            this.e.offer(Long.valueOf(this.d.now(this.c)), t);
            a();
        }

        public final void onError(Throwable th) {
            this.k = th;
            this.j = true;
            a();
        }

        public final void onComplete() {
            this.j = true;
            a();
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.h, j2);
                a();
            }
        }

        public final void cancel() {
            if (!this.i) {
                this.i = true;
                this.g.cancel();
                if (getAndIncrement() == 0) {
                    this.e.clear();
                }
            }
        }

        private void a() {
            if (getAndIncrement() == 0) {
                c<? super T> cVar = this.f8215a;
                io.reactivex.internal.d.c<Object> cVar2 = this.e;
                boolean z = this.f;
                TimeUnit timeUnit = this.c;
                ah ahVar = this.d;
                long j2 = this.f8216b;
                int i2 = 1;
                do {
                    long j3 = this.h.get();
                    long j4 = 0;
                    while (j4 != j3) {
                        boolean z2 = this.j;
                        Long l = (Long) cVar2.peek();
                        boolean z3 = l == null;
                        boolean z4 = (z3 || l.longValue() <= ahVar.now(timeUnit) - j2) ? z3 : true;
                        if (!a(z2, z4, cVar, z)) {
                            if (z4) {
                                break;
                            }
                            cVar2.poll();
                            cVar.onNext(cVar2.poll());
                            j4++;
                        } else {
                            return;
                        }
                    }
                    if (j4 != 0) {
                        io.reactivex.internal.util.c.produced(this.h, j4);
                    }
                    i2 = addAndGet(-i2);
                } while (i2 != 0);
            }
        }

        private boolean a(boolean z, boolean z2, c<? super T> cVar, boolean z3) {
            if (this.i) {
                this.e.clear();
                return true;
            }
            if (z) {
                if (!z3) {
                    Throwable th = this.k;
                    if (th != null) {
                        this.e.clear();
                        cVar.onError(th);
                        return true;
                    } else if (z2) {
                        cVar.onComplete();
                        return true;
                    }
                } else if (z2) {
                    Throwable th2 = this.k;
                    if (th2 != null) {
                        cVar.onError(th2);
                    } else {
                        cVar.onComplete();
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public dv(j<T> jVar, long j, TimeUnit timeUnit, ah ahVar, int i, boolean z) {
        super(jVar);
        this.c = j;
        this.d = timeUnit;
        this.e = ahVar;
        this.f = i;
        this.g = z;
    }

    public final void subscribeActual(c<? super T> cVar) {
        j jVar = this.f7923b;
        a aVar = new a(cVar, this.c, this.d, this.e, this.f, this.g);
        jVar.subscribe(aVar);
    }
}
