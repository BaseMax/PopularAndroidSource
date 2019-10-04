package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.operators.flowable.ca;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class u<T, R> extends j<R> {

    /* renamed from: b  reason: collision with root package name */
    final org.b.b<? extends T>[] f8389b;
    final Iterable<? extends org.b.b<? extends T>> c;
    final h<? super Object[], ? extends R> d;
    final int e;
    final boolean f;

    static final class a<T, R> extends io.reactivex.internal.subscriptions.a<R> {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super R> f8390a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Object[], ? extends R> f8391b;
        final b<T>[] c;
        final io.reactivex.internal.d.c<Object> d;
        final Object[] e;
        final boolean f;
        boolean g;
        int h;
        int i;
        volatile boolean j;
        final AtomicLong k;
        volatile boolean l;
        final AtomicReference<Throwable> m;

        a(org.b.c<? super R> cVar, h<? super Object[], ? extends R> hVar, int i2, int i3, boolean z) {
            this.f8390a = cVar;
            this.f8391b = hVar;
            b<T>[] bVarArr = new b[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                bVarArr[i4] = new b<>(this, i4, i3);
            }
            this.c = bVarArr;
            this.e = new Object[i2];
            this.d = new io.reactivex.internal.d.c<>(i3);
            this.k = new AtomicLong();
            this.m = new AtomicReference<>();
            this.f = z;
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.k, j2);
                a();
            }
        }

        public final void cancel() {
            this.j = true;
            b();
        }

        /* access modifiers changed from: package-private */
        public final void a(int i2, T t) {
            boolean z;
            synchronized (this) {
                Object[] objArr = this.e;
                int i3 = this.h;
                if (objArr[i2] == null) {
                    i3++;
                    this.h = i3;
                }
                objArr[i2] = t;
                if (objArr.length == i3) {
                    this.d.offer(this.c[i2], objArr.clone());
                    z = false;
                } else {
                    z = true;
                }
            }
            if (z) {
                this.c[i2].requestOne();
            } else {
                a();
            }
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Code restructure failed: missing block: B:12:0x0018, code lost:
            a();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x001b, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a(int r3) {
            /*
                r2 = this;
                monitor-enter(r2)
                java.lang.Object[] r0 = r2.e     // Catch:{ all -> 0x001c }
                r3 = r0[r3]     // Catch:{ all -> 0x001c }
                r1 = 1
                if (r3 == 0) goto L_0x0015
                int r3 = r2.i     // Catch:{ all -> 0x001c }
                int r3 = r3 + r1
                int r0 = r0.length     // Catch:{ all -> 0x001c }
                if (r3 != r0) goto L_0x0011
                r2.l = r1     // Catch:{ all -> 0x001c }
                goto L_0x0017
            L_0x0011:
                r2.i = r3     // Catch:{ all -> 0x001c }
                monitor-exit(r2)     // Catch:{ all -> 0x001c }
                return
            L_0x0015:
                r2.l = r1     // Catch:{ all -> 0x001c }
            L_0x0017:
                monitor-exit(r2)     // Catch:{ all -> 0x001c }
                r2.a()
                return
            L_0x001c:
                r3 = move-exception
                monitor-exit(r2)     // Catch:{ all -> 0x001c }
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.u.a.a(int):void");
        }

        private void c() {
            org.b.c<? super R> cVar = this.f8390a;
            io.reactivex.internal.d.c<Object> cVar2 = this.d;
            int i2 = 1;
            while (!this.j) {
                Throwable th = this.m.get();
                if (th != null) {
                    cVar2.clear();
                    cVar.onError(th);
                    return;
                }
                boolean z = this.l;
                boolean isEmpty = cVar2.isEmpty();
                if (!isEmpty) {
                    cVar.onNext(null);
                }
                if (!z || !isEmpty) {
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                } else {
                    cVar.onComplete();
                    return;
                }
            }
            cVar2.clear();
        }

        private void d() {
            org.b.c<? super R> cVar = this.f8390a;
            io.reactivex.internal.d.c<Object> cVar2 = this.d;
            int i2 = 1;
            do {
                long j2 = this.k.get();
                long j3 = 0;
                while (j3 != j2) {
                    boolean z = this.l;
                    Object poll = cVar2.poll();
                    boolean z2 = poll == null;
                    if (!a(z, z2, cVar, cVar2)) {
                        if (z2) {
                            break;
                        }
                        try {
                            cVar.onNext(io.reactivex.internal.a.b.requireNonNull(this.f8391b.apply((Object[]) cVar2.poll()), "The combiner returned a null value"));
                            ((b) poll).requestOne();
                            j3++;
                        } catch (Throwable th) {
                            io.reactivex.c.b.throwIfFatal(th);
                            b();
                            io.reactivex.internal.util.h.addThrowable(this.m, th);
                            cVar.onError(io.reactivex.internal.util.h.terminate(this.m));
                            return;
                        }
                    } else {
                        return;
                    }
                }
                if (j3 != j2 || !a(this.l, cVar2.isEmpty(), cVar, cVar2)) {
                    if (!(j3 == 0 || j2 == Long.MAX_VALUE)) {
                        this.k.addAndGet(-j3);
                    }
                    i2 = addAndGet(-i2);
                } else {
                    return;
                }
            } while (i2 != 0);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                if (this.g) {
                    c();
                } else {
                    d();
                }
            }
        }

        private boolean a(boolean z, boolean z2, org.b.c<?> cVar, io.reactivex.internal.d.c<?> cVar2) {
            if (this.j) {
                b();
                cVar2.clear();
                return true;
            }
            if (z) {
                if (!this.f) {
                    Throwable terminate = io.reactivex.internal.util.h.terminate(this.m);
                    if (terminate != null && terminate != io.reactivex.internal.util.h.TERMINATED) {
                        b();
                        cVar2.clear();
                        cVar.onError(terminate);
                        return true;
                    } else if (z2) {
                        b();
                        cVar.onComplete();
                        return true;
                    }
                } else if (z2) {
                    b();
                    Throwable terminate2 = io.reactivex.internal.util.h.terminate(this.m);
                    if (terminate2 == null || terminate2 == io.reactivex.internal.util.h.TERMINATED) {
                        cVar.onComplete();
                    } else {
                        cVar.onError(terminate2);
                    }
                    return true;
                }
            }
            return false;
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            for (b<T> cancel : this.c) {
                cancel.cancel();
            }
        }

        public final int requestFusion(int i2) {
            boolean z = false;
            if ((i2 & 4) != 0) {
                return 0;
            }
            int i3 = i2 & 2;
            if (i3 != 0) {
                z = true;
            }
            this.g = z;
            return i3;
        }

        public final R poll() throws Exception {
            Object poll = this.d.poll();
            if (poll == null) {
                return null;
            }
            R requireNonNull = io.reactivex.internal.a.b.requireNonNull(this.f8391b.apply((Object[]) this.d.poll()), "The combiner returned a null value");
            ((b) poll).requestOne();
            return requireNonNull;
        }

        public final void clear() {
            this.d.clear();
        }

        public final boolean isEmpty() {
            return this.d.isEmpty();
        }
    }

    static final class b<T> extends AtomicReference<d> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T, ?> f8392a;

        /* renamed from: b  reason: collision with root package name */
        final int f8393b;
        final int c;
        final int d;
        int e;

        b(a<T, ?> aVar, int i, int i2) {
            this.f8392a = aVar;
            this.f8393b = i;
            this.c = i2;
            this.d = i2 - (i2 >> 2);
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.setOnce(this, dVar, (long) this.c);
        }

        public final void onNext(T t) {
            this.f8392a.a(this.f8393b, t);
        }

        public final void onError(Throwable th) {
            a<T, ?> aVar = this.f8392a;
            int i = this.f8393b;
            if (!io.reactivex.internal.util.h.addThrowable(aVar.m, th)) {
                io.reactivex.g.a.onError(th);
            } else if (!aVar.f) {
                aVar.b();
                aVar.l = true;
                aVar.a();
            } else {
                aVar.a(i);
            }
        }

        public final void onComplete() {
            this.f8392a.a(this.f8393b);
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this);
        }

        public final void requestOne() {
            int i = this.e + 1;
            if (i == this.d) {
                this.e = 0;
                ((d) get()).request((long) i);
                return;
            }
            this.e = i;
        }
    }

    final class c implements h<T, R> {
        c() {
        }

        public final R apply(T t) throws Exception {
            return u.this.d.apply(new Object[]{t});
        }
    }

    public u(org.b.b<? extends T>[] bVarArr, h<? super Object[], ? extends R> hVar, int i, boolean z) {
        this.f8389b = bVarArr;
        this.c = null;
        this.d = hVar;
        this.e = i;
        this.f = z;
    }

    public u(Iterable<? extends org.b.b<? extends T>> iterable, h<? super Object[], ? extends R> hVar, int i, boolean z) {
        this.f8389b = null;
        this.c = iterable;
        this.d = hVar;
        this.e = i;
        this.f = z;
    }

    public final void subscribeActual(org.b.c<? super R> cVar) {
        int i;
        org.b.b<? extends T>[] bVarArr = this.f8389b;
        if (bVarArr == null) {
            bVarArr = new org.b.b[8];
            try {
                Iterator it = (Iterator) io.reactivex.internal.a.b.requireNonNull(this.c.iterator(), "The iterator returned is null");
                i = 0;
                while (it.hasNext()) {
                    try {
                        try {
                            org.b.b<? extends T> bVar = (org.b.b) io.reactivex.internal.a.b.requireNonNull(it.next(), "The publisher returned by the iterator is null");
                            if (i == bVarArr.length) {
                                org.b.b<? extends T>[] bVarArr2 = new org.b.b[((i >> 2) + i)];
                                System.arraycopy(bVarArr, 0, bVarArr2, 0, i);
                                bVarArr = bVarArr2;
                            }
                            bVarArr[i] = bVar;
                            i++;
                        } catch (Throwable th) {
                            io.reactivex.c.b.throwIfFatal(th);
                            EmptySubscription.error(th, cVar);
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.c.b.throwIfFatal(th2);
                        EmptySubscription.error(th2, cVar);
                        return;
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.c.b.throwIfFatal(th3);
                EmptySubscription.error(th3, cVar);
                return;
            }
        } else {
            i = bVarArr.length;
        }
        if (i == 0) {
            EmptySubscription.complete(cVar);
        } else if (i == 1) {
            bVarArr[0].subscribe(new ca.b(cVar, new c()));
        } else {
            a aVar = new a(cVar, this.d, i, this.e, this.f);
            cVar.onSubscribe(aVar);
            b<T>[] bVarArr3 = aVar.c;
            for (int i2 = 0; i2 < i && !aVar.l && !aVar.j; i2++) {
                bVarArr[i2].subscribe(bVarArr3[i2]);
            }
        }
    }
}
