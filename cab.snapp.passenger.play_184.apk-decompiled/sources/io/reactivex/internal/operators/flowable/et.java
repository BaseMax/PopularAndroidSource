package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.b.d;

public final class et<T> extends a<T, j<T>> {
    final long c;
    final long d;
    final int e;

    static final class a<T> extends AtomicInteger implements o<T>, Runnable, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super j<T>> f8286a;

        /* renamed from: b  reason: collision with root package name */
        final long f8287b;
        final AtomicBoolean c = new AtomicBoolean();
        final int d;
        long e;
        d f;
        io.reactivex.h.c<T> g;

        a(org.b.c<? super j<T>> cVar, long j, int i) {
            super(1);
            this.f8286a = cVar;
            this.f8287b = j;
            this.d = i;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f, dVar)) {
                this.f = dVar;
                this.f8286a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            long j = this.e;
            io.reactivex.h.c<T> cVar = this.g;
            if (j == 0) {
                getAndIncrement();
                cVar = io.reactivex.h.c.create(this.d, this);
                this.g = cVar;
                this.f8286a.onNext(cVar);
            }
            long j2 = j + 1;
            cVar.onNext(t);
            if (j2 == this.f8287b) {
                this.e = 0;
                this.g = null;
                cVar.onComplete();
                return;
            }
            this.e = j2;
        }

        public final void onError(Throwable th) {
            io.reactivex.h.c<T> cVar = this.g;
            if (cVar != null) {
                this.g = null;
                cVar.onError(th);
            }
            this.f8286a.onError(th);
        }

        public final void onComplete() {
            io.reactivex.h.c<T> cVar = this.g;
            if (cVar != null) {
                this.g = null;
                cVar.onComplete();
            }
            this.f8286a.onComplete();
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                this.f.request(io.reactivex.internal.util.c.multiplyCap(this.f8287b, j));
            }
        }

        public final void cancel() {
            if (this.c.compareAndSet(false, true)) {
                run();
            }
        }

        public final void run() {
            if (decrementAndGet() == 0) {
                this.f.cancel();
            }
        }
    }

    static final class b<T> extends AtomicInteger implements o<T>, Runnable, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super j<T>> f8288a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.d.c<io.reactivex.h.c<T>> f8289b;
        final long c;
        final long d;
        final ArrayDeque<io.reactivex.h.c<T>> e = new ArrayDeque<>();
        final AtomicBoolean f = new AtomicBoolean();
        final AtomicBoolean g = new AtomicBoolean();
        final AtomicLong h = new AtomicLong();
        final AtomicInteger i = new AtomicInteger();
        final int j;
        long k;
        long l;
        d m;
        volatile boolean n;
        Throwable o;
        volatile boolean p;

        b(org.b.c<? super j<T>> cVar, long j2, long j3, int i2) {
            super(1);
            this.f8288a = cVar;
            this.c = j2;
            this.d = j3;
            this.f8289b = new io.reactivex.internal.d.c<>(i2);
            this.j = i2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.m, dVar)) {
                this.m = dVar;
                this.f8288a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.n) {
                long j2 = this.k;
                if (j2 == 0 && !this.p) {
                    getAndIncrement();
                    io.reactivex.h.c create = io.reactivex.h.c.create(this.j, this);
                    this.e.offer(create);
                    this.f8289b.offer(create);
                    a();
                }
                long j3 = j2 + 1;
                Iterator<io.reactivex.h.c<T>> it = this.e.iterator();
                while (it.hasNext()) {
                    it.next().onNext(t);
                }
                long j4 = this.l + 1;
                if (j4 == this.c) {
                    this.l = j4 - this.d;
                    org.b.a poll = this.e.poll();
                    if (poll != null) {
                        poll.onComplete();
                    }
                } else {
                    this.l = j4;
                }
                if (j3 == this.d) {
                    this.k = 0;
                } else {
                    this.k = j3;
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.n) {
                io.reactivex.g.a.onError(th);
                return;
            }
            Iterator<io.reactivex.h.c<T>> it = this.e.iterator();
            while (it.hasNext()) {
                it.next().onError(th);
            }
            this.e.clear();
            this.o = th;
            this.n = true;
            a();
        }

        public final void onComplete() {
            if (!this.n) {
                Iterator<io.reactivex.h.c<T>> it = this.e.iterator();
                while (it.hasNext()) {
                    it.next().onComplete();
                }
                this.e.clear();
                this.n = true;
                a();
            }
        }

        private void a() {
            if (this.i.getAndIncrement() == 0) {
                org.b.c<? super j<T>> cVar = this.f8288a;
                io.reactivex.internal.d.c<io.reactivex.h.c<T>> cVar2 = this.f8289b;
                int i2 = 1;
                do {
                    long j2 = this.h.get();
                    long j3 = 0;
                    while (j3 != j2) {
                        boolean z = this.n;
                        io.reactivex.h.c poll = cVar2.poll();
                        boolean z2 = poll == null;
                        if (!a(z, z2, cVar, cVar2)) {
                            if (z2) {
                                break;
                            }
                            cVar.onNext(poll);
                            j3++;
                        } else {
                            return;
                        }
                    }
                    if (j3 != j2 || !a(this.n, cVar2.isEmpty(), cVar, cVar2)) {
                        if (!(j3 == 0 || j2 == Long.MAX_VALUE)) {
                            this.h.addAndGet(-j3);
                        }
                        i2 = this.i.addAndGet(-i2);
                    } else {
                        return;
                    }
                } while (i2 != 0);
            }
        }

        private boolean a(boolean z, boolean z2, org.b.c<?> cVar, io.reactivex.internal.d.c<?> cVar2) {
            if (this.p) {
                cVar2.clear();
                return true;
            }
            if (z) {
                Throwable th = this.o;
                if (th != null) {
                    cVar2.clear();
                    cVar.onError(th);
                    return true;
                } else if (z2) {
                    cVar.onComplete();
                    return true;
                }
            }
            return false;
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.h, j2);
                if (this.g.get() || !this.g.compareAndSet(false, true)) {
                    this.m.request(io.reactivex.internal.util.c.multiplyCap(this.d, j2));
                } else {
                    this.m.request(io.reactivex.internal.util.c.addCap(this.c, io.reactivex.internal.util.c.multiplyCap(this.d, j2 - 1)));
                }
                a();
            }
        }

        public final void cancel() {
            this.p = true;
            if (this.f.compareAndSet(false, true)) {
                run();
            }
        }

        public final void run() {
            if (decrementAndGet() == 0) {
                this.m.cancel();
            }
        }
    }

    static final class c<T> extends AtomicInteger implements o<T>, Runnable, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super j<T>> f8290a;

        /* renamed from: b  reason: collision with root package name */
        final long f8291b;
        final long c;
        final AtomicBoolean d = new AtomicBoolean();
        final AtomicBoolean e = new AtomicBoolean();
        final int f;
        long g;
        d h;
        io.reactivex.h.c<T> i;

        c(org.b.c<? super j<T>> cVar, long j, long j2, int i2) {
            super(1);
            this.f8290a = cVar;
            this.f8291b = j;
            this.c = j2;
            this.f = i2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.h, dVar)) {
                this.h = dVar;
                this.f8290a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            long j = this.g;
            io.reactivex.h.c<T> cVar = this.i;
            if (j == 0) {
                getAndIncrement();
                cVar = io.reactivex.h.c.create(this.f, this);
                this.i = cVar;
                this.f8290a.onNext(cVar);
            }
            long j2 = j + 1;
            if (cVar != null) {
                cVar.onNext(t);
            }
            if (j2 == this.f8291b) {
                this.i = null;
                cVar.onComplete();
            }
            if (j2 == this.c) {
                this.g = 0;
            } else {
                this.g = j2;
            }
        }

        public final void onError(Throwable th) {
            io.reactivex.h.c<T> cVar = this.i;
            if (cVar != null) {
                this.i = null;
                cVar.onError(th);
            }
            this.f8290a.onError(th);
        }

        public final void onComplete() {
            io.reactivex.h.c<T> cVar = this.i;
            if (cVar != null) {
                this.i = null;
                cVar.onComplete();
            }
            this.f8290a.onComplete();
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                if (this.e.get() || !this.e.compareAndSet(false, true)) {
                    this.h.request(io.reactivex.internal.util.c.multiplyCap(this.c, j));
                } else {
                    this.h.request(io.reactivex.internal.util.c.addCap(io.reactivex.internal.util.c.multiplyCap(this.f8291b, j), io.reactivex.internal.util.c.multiplyCap(this.c - this.f8291b, j - 1)));
                }
            }
        }

        public final void cancel() {
            if (this.d.compareAndSet(false, true)) {
                run();
            }
        }

        public final void run() {
            if (decrementAndGet() == 0) {
                this.h.cancel();
            }
        }
    }

    public et(j<T> jVar, long j, long j2, int i) {
        super(jVar);
        this.c = j;
        this.d = j2;
        this.e = i;
    }

    public final void subscribeActual(org.b.c<? super j<T>> cVar) {
        long j = this.d;
        long j2 = this.c;
        if (j == j2) {
            this.f7923b.subscribe(new a(cVar, this.c, this.e));
        } else if (j > j2) {
            j jVar = this.f7923b;
            c cVar2 = new c(cVar, this.c, this.d, this.e);
            jVar.subscribe(cVar2);
        } else {
            j jVar2 = this.f7923b;
            b bVar = new b(cVar, this.c, this.d, this.e);
            jVar2.subscribe(bVar);
        }
    }
}
