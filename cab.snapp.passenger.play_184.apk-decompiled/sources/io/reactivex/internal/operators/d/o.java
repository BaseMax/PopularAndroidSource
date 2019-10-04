package io.reactivex.internal.operators.d;

import io.reactivex.ah;
import io.reactivex.internal.e.o;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class o<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f7707a;

    /* renamed from: b  reason: collision with root package name */
    final ah f7708b;
    final int c;

    static abstract class a<T> extends AtomicInteger implements io.reactivex.o<T>, Runnable, org.b.d {

        /* renamed from: a  reason: collision with root package name */
        final int f7709a;

        /* renamed from: b  reason: collision with root package name */
        final int f7710b;
        final io.reactivex.internal.d.b<T> c;
        final ah.c d;
        org.b.d e;
        volatile boolean f;
        Throwable g;
        final AtomicLong h = new AtomicLong();
        volatile boolean i;
        int j;

        a(int i2, io.reactivex.internal.d.b<T> bVar, ah.c cVar) {
            this.f7709a = i2;
            this.c = bVar;
            this.f7710b = i2 - (i2 >> 2);
            this.d = cVar;
        }

        public final void onNext(T t) {
            if (!this.f) {
                if (!this.c.offer(t)) {
                    this.e.cancel();
                    onError(new io.reactivex.c.c("Queue is full?!"));
                    return;
                }
                a();
            }
        }

        public final void onError(Throwable th) {
            if (this.f) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.g = th;
            this.f = true;
            a();
        }

        public final void onComplete() {
            if (!this.f) {
                this.f = true;
                a();
            }
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
                this.e.cancel();
                this.d.dispose();
                if (getAndIncrement() == 0) {
                    this.c.clear();
                }
            }
        }

        private void a() {
            if (getAndIncrement() == 0) {
                this.d.schedule(this);
            }
        }
    }

    final class b implements o.a {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T>[] f7711a;

        /* renamed from: b  reason: collision with root package name */
        final org.b.c<T>[] f7712b;

        b(org.b.c<? super T>[] cVarArr, org.b.c<T>[] cVarArr2) {
            this.f7711a = cVarArr;
            this.f7712b = cVarArr2;
        }

        public final void onWorker(int i, ah.c cVar) {
            o.this.a(i, this.f7711a, this.f7712b, cVar);
        }
    }

    static final class c<T> extends a<T> {
        final io.reactivex.internal.b.a<? super T> k;

        c(io.reactivex.internal.b.a<? super T> aVar, int i, io.reactivex.internal.d.b<T> bVar, ah.c cVar) {
            super(i, bVar, cVar);
            this.k = aVar;
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.e, dVar)) {
                this.e = dVar;
                this.k.onSubscribe(this);
                dVar.request((long) this.f7709a);
            }
        }

        public final void run() {
            int i = this.j;
            io.reactivex.internal.d.b bVar = this.c;
            io.reactivex.internal.b.a<? super T> aVar = this.k;
            int i2 = this.f7710b;
            int i3 = i;
            int i4 = 1;
            while (true) {
                long j = this.h.get();
                long j2 = 0;
                while (j2 != j) {
                    if (this.i) {
                        bVar.clear();
                        return;
                    }
                    boolean z = this.f;
                    if (z) {
                        Throwable th = this.g;
                        if (th != null) {
                            bVar.clear();
                            aVar.onError(th);
                            this.d.dispose();
                            return;
                        }
                    }
                    Object poll = bVar.poll();
                    boolean z2 = poll == null;
                    if (!z || !z2) {
                        if (z2) {
                            break;
                        }
                        if (aVar.tryOnNext(poll)) {
                            j2++;
                        }
                        i3++;
                        if (i3 == i2) {
                            this.e.request((long) i3);
                            i3 = 0;
                        }
                    } else {
                        aVar.onComplete();
                        this.d.dispose();
                        return;
                    }
                }
                if (j2 == j) {
                    if (this.i) {
                        bVar.clear();
                        return;
                    } else if (this.f) {
                        Throwable th2 = this.g;
                        if (th2 != null) {
                            bVar.clear();
                            aVar.onError(th2);
                            this.d.dispose();
                            return;
                        } else if (bVar.isEmpty()) {
                            aVar.onComplete();
                            this.d.dispose();
                            return;
                        }
                    }
                }
                if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                    this.h.addAndGet(-j2);
                }
                int i5 = get();
                if (i5 == i4) {
                    this.j = i3;
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    i4 = i5;
                }
            }
        }
    }

    static final class d<T> extends a<T> {
        final org.b.c<? super T> k;

        d(org.b.c<? super T> cVar, int i, io.reactivex.internal.d.b<T> bVar, ah.c cVar2) {
            super(i, bVar, cVar2);
            this.k = cVar;
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.e, dVar)) {
                this.e = dVar;
                this.k.onSubscribe(this);
                dVar.request((long) this.f7709a);
            }
        }

        public final void run() {
            int i = this.j;
            io.reactivex.internal.d.b bVar = this.c;
            org.b.c<? super T> cVar = this.k;
            int i2 = this.f7710b;
            int i3 = i;
            int i4 = 1;
            while (true) {
                long j = this.h.get();
                long j2 = 0;
                while (j2 != j) {
                    if (this.i) {
                        bVar.clear();
                        return;
                    }
                    boolean z = this.f;
                    if (z) {
                        Throwable th = this.g;
                        if (th != null) {
                            bVar.clear();
                            cVar.onError(th);
                            this.d.dispose();
                            return;
                        }
                    }
                    Object poll = bVar.poll();
                    boolean z2 = poll == null;
                    if (!z || !z2) {
                        if (z2) {
                            break;
                        }
                        cVar.onNext(poll);
                        j2++;
                        i3++;
                        if (i3 == i2) {
                            this.e.request((long) i3);
                            i3 = 0;
                        }
                    } else {
                        cVar.onComplete();
                        this.d.dispose();
                        return;
                    }
                }
                if (j2 == j) {
                    if (this.i) {
                        bVar.clear();
                        return;
                    } else if (this.f) {
                        Throwable th2 = this.g;
                        if (th2 != null) {
                            bVar.clear();
                            cVar.onError(th2);
                            this.d.dispose();
                            return;
                        } else if (bVar.isEmpty()) {
                            cVar.onComplete();
                            this.d.dispose();
                            return;
                        }
                    }
                }
                if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                    this.h.addAndGet(-j2);
                }
                int i5 = get();
                if (i5 == i4) {
                    this.j = i3;
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    i4 = i5;
                }
            }
        }
    }

    public o(io.reactivex.parallel.a<? extends T> aVar, ah ahVar, int i) {
        this.f7707a = aVar;
        this.f7708b = ahVar;
        this.c = i;
    }

    public final void subscribe(org.b.c<? super T>[] cVarArr) {
        if (a(cVarArr)) {
            int length = cVarArr.length;
            org.b.c[] cVarArr2 = new org.b.c[length];
            ah ahVar = this.f7708b;
            if (ahVar instanceof io.reactivex.internal.e.o) {
                ((io.reactivex.internal.e.o) ahVar).createWorkers(length, new b(cVarArr, cVarArr2));
            } else {
                for (int i = 0; i < length; i++) {
                    a(i, cVarArr, cVarArr2, this.f7708b.createWorker());
                }
            }
            this.f7707a.subscribe(cVarArr2);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(int i, org.b.c<? super T>[] cVarArr, org.b.c<T>[] cVarArr2, ah.c cVar) {
        io.reactivex.internal.b.a aVar = cVarArr[i];
        io.reactivex.internal.d.b bVar = new io.reactivex.internal.d.b(this.c);
        if (aVar instanceof io.reactivex.internal.b.a) {
            cVarArr2[i] = new c(aVar, this.c, bVar, cVar);
        } else {
            cVarArr2[i] = new d(aVar, this.c, bVar, cVar);
        }
    }

    public final int parallelism() {
        return this.f7707a.parallelism();
    }
}
