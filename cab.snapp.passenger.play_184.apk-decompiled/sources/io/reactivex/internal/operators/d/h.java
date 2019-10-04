package io.reactivex.internal.operators.d;

import io.reactivex.internal.b.g;
import io.reactivex.internal.b.j;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLongArray;
import org.b.b;
import org.b.c;
import org.b.d;

public final class h<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final b<? extends T> f7668a;

    /* renamed from: b  reason: collision with root package name */
    final int f7669b;
    final int c;

    static final class a<T> extends AtomicInteger implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T>[] f7670a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLongArray f7671b;
        final long[] c;
        final int d;
        final int e;
        d f;
        j<T> g;
        Throwable h;
        volatile boolean i;
        int j;
        volatile boolean k;
        final AtomicInteger l = new AtomicInteger();
        int m;
        int n;

        /* renamed from: io.reactivex.internal.operators.d.h$a$a  reason: collision with other inner class name */
        final class C0174a implements d {

            /* renamed from: a  reason: collision with root package name */
            final int f7672a;

            /* renamed from: b  reason: collision with root package name */
            final int f7673b;

            C0174a(int i, int i2) {
                this.f7672a = i;
                this.f7673b = i2;
            }

            public final void request(long j) {
                long j2;
                if (SubscriptionHelper.validate(j)) {
                    AtomicLongArray atomicLongArray = a.this.f7671b;
                    do {
                        j2 = atomicLongArray.get(this.f7672a);
                        if (j2 != Long.MAX_VALUE) {
                        } else {
                            return;
                        }
                    } while (!atomicLongArray.compareAndSet(this.f7672a, j2, io.reactivex.internal.util.c.addCap(j2, j)));
                    if (a.this.l.get() == this.f7673b) {
                        a.this.a();
                    }
                }
            }

            public final void cancel() {
                if (a.this.f7671b.compareAndSet(this.f7672a + this.f7673b, 0, 1)) {
                    a aVar = a.this;
                    int i = this.f7673b;
                    if (aVar.f7671b.decrementAndGet(i + i) == 0) {
                        aVar.k = true;
                        aVar.f.cancel();
                        if (aVar.getAndIncrement() == 0) {
                            aVar.g.clear();
                        }
                    }
                }
            }
        }

        a(c<? super T>[] cVarArr, int i2) {
            this.f7670a = cVarArr;
            this.d = i2;
            this.e = i2 - (i2 >> 2);
            int length = cVarArr.length;
            int i3 = length + length;
            this.f7671b = new AtomicLongArray(i3 + 1);
            this.f7671b.lazySet(i3, (long) length);
            this.c = new long[length];
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f, dVar)) {
                this.f = dVar;
                if (dVar instanceof g) {
                    g gVar = (g) dVar;
                    int requestFusion = gVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.n = requestFusion;
                        this.g = gVar;
                        this.i = true;
                        b();
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.n = requestFusion;
                        this.g = gVar;
                        b();
                        dVar.request((long) this.d);
                        return;
                    }
                }
                this.g = new io.reactivex.internal.d.b(this.d);
                b();
                dVar.request((long) this.d);
            }
        }

        private void b() {
            c<? super T>[] cVarArr = this.f7670a;
            int length = cVarArr.length;
            int i2 = 0;
            while (i2 < length && !this.k) {
                int i3 = i2 + 1;
                this.l.lazySet(i3);
                cVarArr[i2].onSubscribe(new C0174a(i2, length));
                i2 = i3;
            }
        }

        public final void onNext(T t) {
            if (this.n != 0 || this.g.offer(t)) {
                a();
                return;
            }
            this.f.cancel();
            onError(new io.reactivex.c.c("Queue is full?"));
        }

        public final void onError(Throwable th) {
            this.h = th;
            this.i = true;
            a();
        }

        public final void onComplete() {
            this.i = true;
            a();
        }

        private void c() {
            j<T> jVar = this.g;
            c<? super T>[] cVarArr = this.f7670a;
            AtomicLongArray atomicLongArray = this.f7671b;
            long[] jArr = this.c;
            int length = jArr.length;
            int i2 = this.j;
            int i3 = this.m;
            int i4 = 1;
            while (true) {
                int i5 = 0;
                int i6 = i3;
                int i7 = 0;
                while (!this.k) {
                    boolean z = this.i;
                    if (z) {
                        Throwable th = this.h;
                        if (th != null) {
                            jVar.clear();
                            int length2 = cVarArr.length;
                            while (i5 < length2) {
                                cVarArr[i5].onError(th);
                                i5++;
                            }
                            return;
                        }
                    }
                    boolean isEmpty = jVar.isEmpty();
                    if (!z || !isEmpty) {
                        if (!isEmpty) {
                            long j2 = atomicLongArray.get(i2);
                            long j3 = jArr[i2];
                            if (j2 == j3 || atomicLongArray.get(length + i2) != 0) {
                                i7++;
                            } else {
                                try {
                                    T poll = jVar.poll();
                                    if (poll != null) {
                                        cVarArr[i2].onNext(poll);
                                        jArr[i2] = j3 + 1;
                                        int i8 = i6 + 1;
                                        if (i8 == this.e) {
                                            this.f.request((long) i8);
                                            i8 = 0;
                                        }
                                        i6 = i8;
                                        i7 = 0;
                                    }
                                } catch (Throwable th2) {
                                    Throwable th3 = th2;
                                    io.reactivex.c.b.throwIfFatal(th3);
                                    this.f.cancel();
                                    int length3 = cVarArr.length;
                                    while (i5 < length3) {
                                        cVarArr[i5].onError(th3);
                                        i5++;
                                    }
                                    return;
                                }
                            }
                            i2++;
                            if (i2 == length) {
                                i2 = 0;
                                continue;
                            }
                            if (i7 == length) {
                            }
                        }
                        i3 = i6;
                        int i9 = get();
                        if (i9 == i4) {
                            this.j = i2;
                            this.m = i3;
                            i4 = addAndGet(-i4);
                            if (i4 == 0) {
                                return;
                            }
                        } else {
                            i4 = i9;
                        }
                    } else {
                        int length4 = cVarArr.length;
                        while (i5 < length4) {
                            cVarArr[i5].onComplete();
                            i5++;
                        }
                        return;
                    }
                }
                jVar.clear();
                return;
            }
        }

        private void d() {
            j<T> jVar = this.g;
            c<? super T>[] cVarArr = this.f7670a;
            AtomicLongArray atomicLongArray = this.f7671b;
            long[] jArr = this.c;
            int length = jArr.length;
            int i2 = this.j;
            int i3 = 1;
            while (true) {
                int i4 = 0;
                int i5 = 0;
                while (!this.k) {
                    if (jVar.isEmpty()) {
                        int length2 = cVarArr.length;
                        while (i4 < length2) {
                            cVarArr[i4].onComplete();
                            i4++;
                        }
                        return;
                    }
                    long j2 = atomicLongArray.get(i2);
                    long j3 = jArr[i2];
                    if (j2 == j3 || atomicLongArray.get(length + i2) != 0) {
                        i5++;
                    } else {
                        try {
                            T poll = jVar.poll();
                            if (poll == null) {
                                int length3 = cVarArr.length;
                                while (i4 < length3) {
                                    cVarArr[i4].onComplete();
                                    i4++;
                                }
                                return;
                            }
                            cVarArr[i2].onNext(poll);
                            jArr[i2] = j3 + 1;
                            i5 = 0;
                        } catch (Throwable th) {
                            Throwable th2 = th;
                            io.reactivex.c.b.throwIfFatal(th2);
                            this.f.cancel();
                            int length4 = cVarArr.length;
                            while (i4 < length4) {
                                cVarArr[i4].onError(th2);
                                i4++;
                            }
                            return;
                        }
                    }
                    i2++;
                    if (i2 == length) {
                        i2 = 0;
                        continue;
                    }
                    if (i5 == length) {
                        int i6 = get();
                        if (i6 == i3) {
                            this.j = i2;
                            i3 = addAndGet(-i3);
                            if (i3 == 0) {
                                return;
                            }
                        } else {
                            i3 = i6;
                        }
                    }
                }
                jVar.clear();
                return;
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                if (this.n == 1) {
                    d();
                } else {
                    c();
                }
            }
        }
    }

    public h(b<? extends T> bVar, int i, int i2) {
        this.f7668a = bVar;
        this.f7669b = i;
        this.c = i2;
    }

    public final int parallelism() {
        return this.f7669b;
    }

    public final void subscribe(c<? super T>[] cVarArr) {
        if (a(cVarArr)) {
            this.f7668a.subscribe(new a(cVarArr, this.c));
        }
    }
}
