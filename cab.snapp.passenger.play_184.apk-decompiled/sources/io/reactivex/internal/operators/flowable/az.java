package io.reactivex.internal.operators.flowable;

import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.b.g;
import io.reactivex.internal.b.i;
import io.reactivex.internal.b.j;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class az<T, U> extends a<T, U> {
    final h<? super T, ? extends org.b.b<? extends U>> c;
    final boolean d;
    final int e;
    final int f;

    static final class a<T, U> extends AtomicReference<d> implements c, o<U> {

        /* renamed from: a  reason: collision with root package name */
        final long f7996a;

        /* renamed from: b  reason: collision with root package name */
        final b<T, U> f7997b;
        final int c = (this.d >> 2);
        final int d;
        volatile boolean e;
        volatile j<U> f;
        long g;
        int h;

        a(b<T, U> bVar, long j) {
            this.f7996a = j;
            this.f7997b = bVar;
            this.d = bVar.e;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.setOnce(this, dVar)) {
                if (dVar instanceof g) {
                    g gVar = (g) dVar;
                    int requestFusion = gVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.h = requestFusion;
                        this.f = gVar;
                        this.e = true;
                        this.f7997b.a();
                        return;
                    } else if (requestFusion == 2) {
                        this.h = requestFusion;
                        this.f = gVar;
                    }
                }
                dVar.request((long) this.d);
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:24:0x0068, code lost:
            if (r0.decrementAndGet() != 0) goto L_0x008d;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:33:0x008b, code lost:
            if (r0.getAndIncrement() == 0) goto L_0x008d;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onNext(U r9) {
            /*
                r8 = this;
                int r0 = r8.h
                r1 = 2
                if (r0 == r1) goto L_0x0091
                io.reactivex.internal.operators.flowable.az$b<T, U> r0 = r8.f7997b
                int r1 = r0.get()
                java.lang.String r2 = "Inner queue full?!"
                if (r1 != 0) goto L_0x006b
                r1 = 0
                r3 = 1
                boolean r1 = r0.compareAndSet(r1, r3)
                if (r1 == 0) goto L_0x006b
                java.util.concurrent.atomic.AtomicLong r1 = r0.m
                long r3 = r1.get()
                io.reactivex.internal.b.j<U> r1 = r8.f
                r5 = 0
                int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r7 == 0) goto L_0x0046
                if (r1 == 0) goto L_0x002d
                boolean r5 = r1.isEmpty()
                if (r5 == 0) goto L_0x0046
            L_0x002d:
                org.b.c<? super U> r1 = r0.f7998a
                r1.onNext(r9)
                r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r9 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
                if (r9 == 0) goto L_0x0040
                java.util.concurrent.atomic.AtomicLong r9 = r0.m
                r9.decrementAndGet()
            L_0x0040:
                r1 = 1
                r8.a(r1)
                goto L_0x0064
            L_0x0046:
                if (r1 != 0) goto L_0x0055
                io.reactivex.internal.b.j<U> r1 = r8.f
                if (r1 != 0) goto L_0x0055
                io.reactivex.internal.d.b r1 = new io.reactivex.internal.d.b
                int r3 = r0.e
                r1.<init>(r3)
                r8.f = r1
            L_0x0055:
                boolean r9 = r1.offer(r9)
                if (r9 != 0) goto L_0x0064
                io.reactivex.c.c r9 = new io.reactivex.c.c
                r9.<init>(r2)
                r0.onError(r9)
                return
            L_0x0064:
                int r9 = r0.decrementAndGet()
                if (r9 == 0) goto L_0x0090
                goto L_0x008d
            L_0x006b:
                io.reactivex.internal.b.j<U> r1 = r8.f
                if (r1 != 0) goto L_0x0078
                io.reactivex.internal.d.b r1 = new io.reactivex.internal.d.b
                int r3 = r0.e
                r1.<init>(r3)
                r8.f = r1
            L_0x0078:
                boolean r9 = r1.offer(r9)
                if (r9 != 0) goto L_0x0087
                io.reactivex.c.c r9 = new io.reactivex.c.c
                r9.<init>(r2)
                r0.onError(r9)
                return
            L_0x0087:
                int r9 = r0.getAndIncrement()
                if (r9 != 0) goto L_0x0090
            L_0x008d:
                r0.b()
            L_0x0090:
                return
            L_0x0091:
                io.reactivex.internal.operators.flowable.az$b<T, U> r9 = r8.f7997b
                r9.a()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.az.a.onNext(java.lang.Object):void");
        }

        public final void onError(Throwable th) {
            lazySet(SubscriptionHelper.CANCELLED);
            b<T, U> bVar = this.f7997b;
            if (bVar.h.addThrowable(th)) {
                this.e = true;
                if (!bVar.c) {
                    bVar.n.cancel();
                    for (a dispose : (a[]) bVar.j.getAndSet(b.l)) {
                        dispose.dispose();
                    }
                }
                bVar.a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.e = true;
            this.f7997b.a();
        }

        /* access modifiers changed from: package-private */
        public final void a(long j) {
            if (this.h != 1) {
                long j2 = this.g + j;
                if (j2 >= ((long) this.c)) {
                    this.g = 0;
                    ((d) get()).request(j2);
                    return;
                }
                this.g = j2;
            }
        }

        public final void dispose() {
            SubscriptionHelper.cancel(this);
        }

        public final boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }
    }

    static final class b<T, U> extends AtomicInteger implements o<T>, d {
        static final a<?, ?>[] k = new a[0];
        static final a<?, ?>[] l = new a[0];

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super U> f7998a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends org.b.b<? extends U>> f7999b;
        final boolean c;
        final int d;
        final int e;
        volatile i<U> f;
        volatile boolean g;
        final io.reactivex.internal.util.b h = new io.reactivex.internal.util.b();
        volatile boolean i;
        final AtomicReference<a<?, ?>[]> j = new AtomicReference<>();
        final AtomicLong m = new AtomicLong();
        d n;
        long o;
        long p;
        int q;
        int r;
        final int s;

        b(org.b.c<? super U> cVar, h<? super T, ? extends org.b.b<? extends U>> hVar, boolean z, int i2, int i3) {
            this.f7998a = cVar;
            this.f7999b = hVar;
            this.c = z;
            this.d = i2;
            this.e = i3;
            this.s = Math.max(1, i2 >> 1);
            this.j.lazySet(k);
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.n, dVar)) {
                this.n = dVar;
                this.f7998a.onSubscribe(this);
                if (!this.i) {
                    int i2 = this.d;
                    if (i2 == Integer.MAX_VALUE) {
                        dVar.request(Long.MAX_VALUE);
                        return;
                    }
                    dVar.request((long) i2);
                }
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:37:0x008e, code lost:
            if (decrementAndGet() != 0) goto L_0x00aa;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:43:0x00a8, code lost:
            if (getAndIncrement() == 0) goto L_0x00aa;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onNext(T r11) {
            /*
                r10 = this;
                boolean r0 = r10.g
                if (r0 == 0) goto L_0x0005
                return
            L_0x0005:
                io.reactivex.e.h<? super T, ? extends org.b.b<? extends U>> r0 = r10.f7999b     // Catch:{ all -> 0x00eb }
                java.lang.Object r11 = r0.apply(r11)     // Catch:{ all -> 0x00eb }
                java.lang.String r0 = "The mapper returned a null Publisher"
                java.lang.Object r11 = io.reactivex.internal.a.b.requireNonNull(r11, (java.lang.String) r0)     // Catch:{ all -> 0x00eb }
                org.b.b r11 = (org.b.b) r11     // Catch:{ all -> 0x00eb }
                boolean r0 = r11 instanceof java.util.concurrent.Callable
                if (r0 == 0) goto L_0x00d5
                java.util.concurrent.Callable r11 = (java.util.concurrent.Callable) r11     // Catch:{ all -> 0x00c8 }
                java.lang.Object r11 = r11.call()     // Catch:{ all -> 0x00c8 }
                r0 = 2147483647(0x7fffffff, float:NaN)
                r1 = 1
                r2 = 0
                if (r11 == 0) goto L_0x00ae
                int r3 = r10.get()
                java.lang.String r4 = "Scalar queue full?!"
                if (r3 != 0) goto L_0x0091
                boolean r3 = r10.compareAndSet(r2, r1)
                if (r3 == 0) goto L_0x0091
                java.util.concurrent.atomic.AtomicLong r3 = r10.m
                long r5 = r3.get()
                io.reactivex.internal.b.i<U> r3 = r10.f
                r7 = 0
                int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                if (r9 == 0) goto L_0x0075
                if (r3 == 0) goto L_0x0048
                boolean r7 = r3.isEmpty()
                if (r7 == 0) goto L_0x0075
            L_0x0048:
                org.b.c<? super U> r3 = r10.f7998a
                r3.onNext(r11)
                r3 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r11 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
                if (r11 == 0) goto L_0x005b
                java.util.concurrent.atomic.AtomicLong r11 = r10.m
                r11.decrementAndGet()
            L_0x005b:
                int r11 = r10.d
                if (r11 == r0) goto L_0x008a
                boolean r11 = r10.i
                if (r11 != 0) goto L_0x008a
                int r11 = r10.r
                int r11 = r11 + r1
                r10.r = r11
                int r0 = r10.s
                if (r11 != r0) goto L_0x008a
                r10.r = r2
                org.b.d r11 = r10.n
                long r0 = (long) r0
                r11.request(r0)
                goto L_0x008a
            L_0x0075:
                if (r3 != 0) goto L_0x007b
                io.reactivex.internal.b.j r3 = r10.c()
            L_0x007b:
                boolean r11 = r3.offer(r11)
                if (r11 != 0) goto L_0x008a
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                r11.<init>(r4)
                r10.onError(r11)
                return
            L_0x008a:
                int r11 = r10.decrementAndGet()
                if (r11 == 0) goto L_0x00ad
                goto L_0x00aa
            L_0x0091:
                io.reactivex.internal.b.j r0 = r10.c()
                boolean r11 = r0.offer(r11)
                if (r11 != 0) goto L_0x00a4
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                r11.<init>(r4)
                r10.onError(r11)
                return
            L_0x00a4:
                int r11 = r10.getAndIncrement()
                if (r11 != 0) goto L_0x00ad
            L_0x00aa:
                r10.b()
            L_0x00ad:
                return
            L_0x00ae:
                int r11 = r10.d
                if (r11 == r0) goto L_0x00c7
                boolean r11 = r10.i
                if (r11 != 0) goto L_0x00c7
                int r11 = r10.r
                int r11 = r11 + r1
                r10.r = r11
                int r0 = r10.s
                if (r11 != r0) goto L_0x00c7
                r10.r = r2
                org.b.d r11 = r10.n
                long r0 = (long) r0
                r11.request(r0)
            L_0x00c7:
                return
            L_0x00c8:
                r11 = move-exception
                io.reactivex.c.b.throwIfFatal(r11)
                io.reactivex.internal.util.b r0 = r10.h
                r0.addThrowable(r11)
                r10.a()
                return
            L_0x00d5:
                io.reactivex.internal.operators.flowable.az$a r0 = new io.reactivex.internal.operators.flowable.az$a
                long r1 = r10.o
                r3 = 1
                long r3 = r3 + r1
                r10.o = r3
                r0.<init>(r10, r1)
                boolean r1 = r10.a(r0)
                if (r1 == 0) goto L_0x00ea
                r11.subscribe(r0)
            L_0x00ea:
                return
            L_0x00eb:
                r11 = move-exception
                io.reactivex.c.b.throwIfFatal(r11)
                org.b.d r0 = r10.n
                r0.cancel()
                r10.onError(r11)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.az.b.onNext(java.lang.Object):void");
        }

        private boolean a(a<T, U> aVar) {
            a<?, ?>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = (a[]) this.j.get();
                if (aVarArr == l) {
                    aVar.dispose();
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[(length + 1)];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
            } while (!this.j.compareAndSet(aVarArr, aVarArr2));
            return true;
        }

        private void b(a<T, U> aVar) {
            a<T, U>[] aVarArr;
            a<?, ?>[] aVarArr2;
            do {
                aVarArr = (a[]) this.j.get();
                int length = aVarArr.length;
                if (length != 0) {
                    int i2 = -1;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= length) {
                            break;
                        } else if (aVarArr[i3] == aVar) {
                            i2 = i3;
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (i2 >= 0) {
                        if (length == 1) {
                            aVarArr2 = k;
                        } else {
                            a<?, ?>[] aVarArr3 = new a[(length - 1)];
                            System.arraycopy(aVarArr, 0, aVarArr3, 0, i2);
                            System.arraycopy(aVarArr, i2 + 1, aVarArr3, i2, (length - i2) - 1);
                            aVarArr2 = aVarArr3;
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.j.compareAndSet(aVarArr, aVarArr2));
        }

        private j<U> c() {
            i<U> iVar = this.f;
            if (iVar == null) {
                int i2 = this.d;
                if (i2 == Integer.MAX_VALUE) {
                    iVar = new io.reactivex.internal.d.c<>(this.e);
                } else {
                    iVar = new io.reactivex.internal.d.b<>(i2);
                }
                this.f = iVar;
            }
            return iVar;
        }

        public final void onError(Throwable th) {
            if (this.g) {
                io.reactivex.g.a.onError(th);
            } else if (this.h.addThrowable(th)) {
                this.g = true;
                a();
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onComplete() {
            if (!this.g) {
                this.g = true;
                a();
            }
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.m, j2);
                a();
            }
        }

        public final void cancel() {
            if (!this.i) {
                this.i = true;
                this.n.cancel();
                a<?, ?>[] aVarArr = (a[]) this.j.get();
                a<?, ?>[] aVarArr2 = l;
                if (aVarArr != aVarArr2) {
                    a<?, ?>[] aVarArr3 = (a[]) this.j.getAndSet(aVarArr2);
                    if (aVarArr3 != l) {
                        for (a<?, ?> dispose : aVarArr3) {
                            dispose.dispose();
                        }
                        Throwable terminate = this.h.terminate();
                        if (!(terminate == null || terminate == io.reactivex.internal.util.h.TERMINATED)) {
                            io.reactivex.g.a.onError(terminate);
                        }
                    }
                }
                if (getAndIncrement() == 0) {
                    i<U> iVar = this.f;
                    if (iVar != null) {
                        iVar.clear();
                    }
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            long j2;
            long j3;
            long j4;
            long j5;
            boolean z;
            a[] aVarArr;
            int i2;
            long j6;
            org.b.c<? super U> cVar = this.f7998a;
            int i3 = 1;
            while (!d()) {
                i<U> iVar = this.f;
                long j7 = this.m.get();
                boolean z2 = j7 == Long.MAX_VALUE;
                long j8 = 0;
                if (iVar != null) {
                    long j9 = 0;
                    while (true) {
                        long j10 = 0;
                        j2 = j9;
                        U u = null;
                        while (true) {
                            if (j7 == 0) {
                                break;
                            }
                            U poll = iVar.poll();
                            if (!d()) {
                                if (poll == null) {
                                    u = poll;
                                    break;
                                }
                                cVar.onNext(poll);
                                j2++;
                                j10++;
                                j7--;
                                u = poll;
                            } else {
                                return;
                            }
                        }
                        if (j10 != 0) {
                            if (z2) {
                                j7 = Long.MAX_VALUE;
                            } else {
                                j7 = this.m.addAndGet(-j10);
                            }
                        }
                        if (j7 == 0 || u == null) {
                            break;
                        }
                        j9 = j2;
                    }
                } else {
                    j2 = 0;
                }
                boolean z3 = this.g;
                i<U> iVar2 = this.f;
                a[] aVarArr2 = (a[]) this.j.get();
                int length = aVarArr2.length;
                if (!z3 || ((iVar2 != null && !iVar2.isEmpty()) || length != 0)) {
                    int i4 = i3;
                    if (length != 0) {
                        long j11 = this.p;
                        int i5 = this.q;
                        if (length <= i5 || aVarArr2[i5].f7996a != j11) {
                            if (length <= i5) {
                                i5 = 0;
                            }
                            int i6 = i5;
                            for (int i7 = 0; i7 < length && aVarArr2[i6].f7996a != j11; i7++) {
                                i6++;
                                if (i6 == length) {
                                    i6 = 0;
                                }
                            }
                            this.q = i6;
                            this.p = aVarArr2[i6].f7996a;
                            i5 = i6;
                        }
                        int i8 = i5;
                        z = false;
                        int i9 = 0;
                        while (true) {
                            if (i9 >= length) {
                                aVarArr = aVarArr2;
                                break;
                            } else if (!d()) {
                                a aVar = aVarArr2[i8];
                                U u2 = null;
                                while (!d()) {
                                    j<U> jVar = aVar.f;
                                    aVarArr = aVarArr2;
                                    int i10 = length;
                                    if (jVar != null) {
                                        long j12 = j8;
                                        while (j3 != j8) {
                                            try {
                                                u2 = jVar.poll();
                                                if (u2 == null) {
                                                    break;
                                                }
                                                cVar.onNext(u2);
                                                if (!d()) {
                                                    j3--;
                                                    j12++;
                                                } else {
                                                    return;
                                                }
                                            } catch (Throwable th) {
                                                Throwable th2 = th;
                                                io.reactivex.c.b.throwIfFatal(th2);
                                                aVar.dispose();
                                                this.h.addThrowable(th2);
                                                if (!this.c) {
                                                    this.n.cancel();
                                                }
                                                if (!d()) {
                                                    b(aVar);
                                                    i9++;
                                                    i2 = i10;
                                                    z = true;
                                                } else {
                                                    return;
                                                }
                                            }
                                        }
                                        if (j12 != j8) {
                                            j3 = !z2 ? this.m.addAndGet(-j12) : Long.MAX_VALUE;
                                            aVar.a(j12);
                                            j6 = 0;
                                        } else {
                                            j6 = j8;
                                        }
                                        if (!(j3 == j6 || u2 == null)) {
                                            aVarArr2 = aVarArr;
                                            length = i10;
                                            j8 = 0;
                                        }
                                    }
                                    boolean z4 = aVar.e;
                                    j<U> jVar2 = aVar.f;
                                    if (z4 && (jVar2 == null || jVar2.isEmpty())) {
                                        b(aVar);
                                        if (!d()) {
                                            j2++;
                                            z = true;
                                        } else {
                                            return;
                                        }
                                    }
                                    if (j3 == 0) {
                                        break;
                                    }
                                    int i11 = i8 + 1;
                                    i2 = i10;
                                    i8 = i11 == i2 ? 0 : i11;
                                    i9++;
                                    length = i2;
                                    aVarArr2 = aVarArr;
                                    j8 = 0;
                                }
                                return;
                            } else {
                                return;
                            }
                        }
                        this.q = i8;
                        this.p = aVarArr[i8].f7996a;
                        j5 = j2;
                        j4 = 0;
                    } else {
                        j4 = 0;
                        j5 = j2;
                        z = false;
                    }
                    if (j5 != j4 && !this.i) {
                        this.n.request(j5);
                    }
                    int i12 = i4;
                    if (!z) {
                        i3 = addAndGet(-i12);
                        if (i3 == 0) {
                            return;
                        }
                    } else {
                        i3 = i12;
                    }
                } else {
                    Throwable terminate = this.h.terminate();
                    if (terminate != io.reactivex.internal.util.h.TERMINATED) {
                        if (terminate == null) {
                            cVar.onComplete();
                            return;
                        }
                        cVar.onError(terminate);
                    }
                    return;
                }
            }
        }

        private boolean d() {
            if (this.i) {
                e();
                return true;
            } else if (this.c || this.h.get() == null) {
                return false;
            } else {
                e();
                Throwable terminate = this.h.terminate();
                if (terminate != io.reactivex.internal.util.h.TERMINATED) {
                    this.f7998a.onError(terminate);
                }
                return true;
            }
        }

        private void e() {
            i<U> iVar = this.f;
            if (iVar != null) {
                iVar.clear();
            }
        }
    }

    public az(io.reactivex.j<T> jVar, h<? super T, ? extends org.b.b<? extends U>> hVar, boolean z, int i, int i2) {
        super(jVar);
        this.c = hVar;
        this.d = z;
        this.e = i;
        this.f = i2;
    }

    public final void subscribeActual(org.b.c<? super U> cVar) {
        if (!dk.tryScalarXMapSubscribe(this.f7923b, cVar, this.c)) {
            this.f7923b.subscribe(subscribe(cVar, this.c, this.d, this.e, this.f));
        }
    }

    public static <T, U> o<T> subscribe(org.b.c<? super U> cVar, h<? super T, ? extends org.b.b<? extends U>> hVar, boolean z, int i, int i2) {
        b bVar = new b(cVar, hVar, z, i, i2);
        return bVar;
    }
}
