package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.b.e;
import io.reactivex.internal.b.i;
import io.reactivex.internal.b.j;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class aw<T, U> extends a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends ae<? extends U>> f7153b;
    final boolean c;
    final int d;
    final int e;

    static final class a<T, U> extends AtomicReference<c> implements ag<U> {

        /* renamed from: a  reason: collision with root package name */
        final long f7154a;

        /* renamed from: b  reason: collision with root package name */
        final b<T, U> f7155b;
        volatile boolean c;
        volatile j<U> d;
        int e;

        a(b<T, U> bVar, long j) {
            this.f7154a = j;
            this.f7155b = bVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar) && (cVar instanceof e)) {
                e eVar = (e) cVar;
                int requestFusion = eVar.requestFusion(7);
                if (requestFusion == 1) {
                    this.e = requestFusion;
                    this.d = eVar;
                    this.c = true;
                    this.f7155b.a();
                } else if (requestFusion == 2) {
                    this.e = requestFusion;
                    this.d = eVar;
                }
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:13:0x0034, code lost:
            if (r0.getAndIncrement() == 0) goto L_0x0036;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onNext(U r4) {
            /*
                r3 = this;
                int r0 = r3.e
                if (r0 != 0) goto L_0x003a
                io.reactivex.internal.operators.c.aw$b<T, U> r0 = r3.f7155b
                int r1 = r0.get()
                if (r1 != 0) goto L_0x0020
                r1 = 0
                r2 = 1
                boolean r1 = r0.compareAndSet(r1, r2)
                if (r1 == 0) goto L_0x0020
                io.reactivex.ag<? super U> r1 = r0.f7156a
                r1.onNext(r4)
                int r4 = r0.decrementAndGet()
                if (r4 != 0) goto L_0x0036
                return
            L_0x0020:
                io.reactivex.internal.b.j<U> r1 = r3.d
                if (r1 != 0) goto L_0x002d
                io.reactivex.internal.d.c r1 = new io.reactivex.internal.d.c
                int r2 = r0.e
                r1.<init>(r2)
                r3.d = r1
            L_0x002d:
                r1.offer(r4)
                int r4 = r0.getAndIncrement()
                if (r4 != 0) goto L_0x0039
            L_0x0036:
                r0.b()
            L_0x0039:
                return
            L_0x003a:
                io.reactivex.internal.operators.c.aw$b<T, U> r4 = r3.f7155b
                r4.a()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.aw.a.onNext(java.lang.Object):void");
        }

        public final void onError(Throwable th) {
            if (this.f7155b.h.addThrowable(th)) {
                if (!this.f7155b.c) {
                    this.f7155b.c();
                }
                this.c = true;
                this.f7155b.a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.c = true;
            this.f7155b.a();
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }
    }

    static final class b<T, U> extends AtomicInteger implements ag<T>, c {
        static final a<?, ?>[] k = new a[0];
        static final a<?, ?>[] l = new a[0];

        /* renamed from: a  reason: collision with root package name */
        final ag<? super U> f7156a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ae<? extends U>> f7157b;
        final boolean c;
        final int d;
        final int e;
        volatile i<U> f;
        volatile boolean g;
        final io.reactivex.internal.util.b h = new io.reactivex.internal.util.b();
        volatile boolean i;
        final AtomicReference<a<?, ?>[]> j;
        c m;
        long n;
        long o;
        int p;
        Queue<ae<? extends U>> q;
        int r;

        b(ag<? super U> agVar, h<? super T, ? extends ae<? extends U>> hVar, boolean z, int i2, int i3) {
            this.f7156a = agVar;
            this.f7157b = hVar;
            this.c = z;
            this.d = i2;
            this.e = i3;
            if (i2 != Integer.MAX_VALUE) {
                this.q = new ArrayDeque(i2);
            }
            this.j = new AtomicReference<>(k);
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.m, cVar)) {
                this.m = cVar;
                this.f7156a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.g) {
                try {
                    ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f7157b.apply(t), "The mapper returned a null ObservableSource");
                    if (this.d != Integer.MAX_VALUE) {
                        synchronized (this) {
                            if (this.r == this.d) {
                                this.q.offer(aeVar);
                                return;
                            }
                            this.r++;
                        }
                    }
                    a(aeVar);
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.m.dispose();
                    onError(th);
                }
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:24:0x0047, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void a(io.reactivex.ae<? extends U> r6) {
            /*
                r5 = this;
            L_0x0000:
                boolean r0 = r6 instanceof java.util.concurrent.Callable
                if (r0 == 0) goto L_0x0032
                java.util.concurrent.Callable r6 = (java.util.concurrent.Callable) r6
                boolean r6 = r5.a(r6)
                if (r6 == 0) goto L_0x0047
                int r6 = r5.d
                r0 = 2147483647(0x7fffffff, float:NaN)
                if (r6 == r0) goto L_0x0047
                r6 = 0
                monitor-enter(r5)
                java.util.Queue<io.reactivex.ae<? extends U>> r0 = r5.q     // Catch:{ all -> 0x002f }
                java.lang.Object r0 = r0.poll()     // Catch:{ all -> 0x002f }
                io.reactivex.ae r0 = (io.reactivex.ae) r0     // Catch:{ all -> 0x002f }
                r1 = 1
                if (r0 != 0) goto L_0x0026
                int r6 = r5.r     // Catch:{ all -> 0x002f }
                int r6 = r6 - r1
                r5.r = r6     // Catch:{ all -> 0x002f }
                r6 = 1
            L_0x0026:
                monitor-exit(r5)     // Catch:{ all -> 0x002f }
                if (r6 == 0) goto L_0x002d
                r5.a()
                return
            L_0x002d:
                r6 = r0
                goto L_0x0000
            L_0x002f:
                r6 = move-exception
                monitor-exit(r5)     // Catch:{ all -> 0x002f }
                throw r6
            L_0x0032:
                io.reactivex.internal.operators.c.aw$a r0 = new io.reactivex.internal.operators.c.aw$a
                long r1 = r5.n
                r3 = 1
                long r3 = r3 + r1
                r5.n = r3
                r0.<init>(r5, r1)
                boolean r1 = r5.a(r0)
                if (r1 == 0) goto L_0x0047
                r6.subscribe(r0)
            L_0x0047:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.aw.b.a(io.reactivex.ae):void");
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

        private boolean a(Callable<? extends U> callable) {
            try {
                Object call = callable.call();
                if (call == null) {
                    return true;
                }
                if (get() != 0 || !compareAndSet(0, 1)) {
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
                    if (!iVar.offer(call)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return true;
                    } else if (getAndIncrement() != 0) {
                        return false;
                    }
                } else {
                    this.f7156a.onNext(call);
                    if (decrementAndGet() == 0) {
                        return true;
                    }
                }
                b();
                return true;
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.h.addThrowable(th);
                a();
                return true;
            }
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

        public final void dispose() {
            if (!this.i) {
                this.i = true;
                if (c()) {
                    Throwable terminate = this.h.terminate();
                    if (terminate != null && terminate != io.reactivex.internal.util.h.TERMINATED) {
                        io.reactivex.g.a.onError(terminate);
                    }
                }
            }
        }

        public final boolean isDisposed() {
            return this.i;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            int i2;
            int i3;
            int i4;
            ag<? super U> agVar = this.f7156a;
            int i5 = 1;
            while (!d()) {
                i<U> iVar = this.f;
                if (iVar != null) {
                    while (!d()) {
                        U poll = iVar.poll();
                        if (poll != null) {
                            agVar.onNext(poll);
                        }
                    }
                    return;
                }
                boolean z = this.g;
                i<U> iVar2 = this.f;
                a[] aVarArr = (a[]) this.j.get();
                int length = aVarArr.length;
                if (this.d != Integer.MAX_VALUE) {
                    synchronized (this) {
                        i2 = this.q.size();
                    }
                } else {
                    i2 = 0;
                }
                if (!z || !((iVar2 == null || iVar2.isEmpty()) && length == 0 && i2 == 0)) {
                    if (length != 0) {
                        long j2 = this.o;
                        int i6 = this.p;
                        if (length <= i6 || aVarArr[i6].f7154a != j2) {
                            if (length <= i6) {
                                i6 = 0;
                            }
                            int i7 = i6;
                            for (int i8 = 0; i8 < length && aVarArr[i7].f7154a != j2; i8++) {
                                i7++;
                                if (i7 == length) {
                                    i7 = 0;
                                }
                            }
                            this.p = i7;
                            this.o = aVarArr[i7].f7154a;
                            i6 = i7;
                        }
                        int i9 = 0;
                        i3 = 0;
                        while (i9 < length) {
                            if (!d()) {
                                a aVar = aVarArr[i4];
                                j<U> jVar = aVar.d;
                                if (jVar != null) {
                                    while (true) {
                                        try {
                                            U poll2 = jVar.poll();
                                            if (poll2 == null) {
                                                break;
                                            }
                                            agVar.onNext(poll2);
                                            if (d()) {
                                                return;
                                            }
                                        } catch (Throwable th) {
                                            io.reactivex.c.b.throwIfFatal(th);
                                            aVar.dispose();
                                            this.h.addThrowable(th);
                                            if (!d()) {
                                                b(aVar);
                                                i3++;
                                                i4++;
                                                if (i4 != length) {
                                                }
                                            } else {
                                                return;
                                            }
                                        }
                                    }
                                }
                                boolean z2 = aVar.c;
                                j<U> jVar2 = aVar.d;
                                if (z2 && (jVar2 == null || jVar2.isEmpty())) {
                                    b(aVar);
                                    if (!d()) {
                                        i3++;
                                    } else {
                                        return;
                                    }
                                }
                                i4++;
                                if (i4 != length) {
                                    i9++;
                                }
                                i4 = 0;
                                i9++;
                            } else {
                                return;
                            }
                        }
                        this.p = i4;
                        this.o = aVarArr[i4].f7154a;
                    } else {
                        i3 = 0;
                    }
                    if (i3 == 0) {
                        i5 = addAndGet(-i5);
                        if (i5 == 0) {
                            return;
                        }
                    } else if (this.d != Integer.MAX_VALUE) {
                        while (true) {
                            int i10 = i3 - 1;
                            if (i3 == 0) {
                                continue;
                                break;
                            }
                            synchronized (this) {
                                ae poll3 = this.q.poll();
                                if (poll3 == null) {
                                    this.r--;
                                } else {
                                    a(poll3);
                                }
                            }
                            i3 = i10;
                        }
                        while (true) {
                        }
                    } else {
                        continue;
                    }
                } else {
                    Throwable terminate = this.h.terminate();
                    if (terminate != io.reactivex.internal.util.h.TERMINATED) {
                        if (terminate == null) {
                            agVar.onComplete();
                            return;
                        }
                        agVar.onError(terminate);
                    }
                    return;
                }
            }
        }

        private boolean d() {
            if (this.i) {
                return true;
            }
            Throwable th = (Throwable) this.h.get();
            if (this.c || th == null) {
                return false;
            }
            c();
            Throwable terminate = this.h.terminate();
            if (terminate != io.reactivex.internal.util.h.TERMINATED) {
                this.f7156a.onError(terminate);
            }
            return true;
        }

        /* access modifiers changed from: package-private */
        public final boolean c() {
            this.m.dispose();
            a<?, ?>[] aVarArr = (a[]) this.j.get();
            a<?, ?>[] aVarArr2 = l;
            if (aVarArr != aVarArr2) {
                a<?, ?>[] aVarArr3 = (a[]) this.j.getAndSet(aVarArr2);
                if (aVarArr3 != l) {
                    for (a<?, ?> dispose : aVarArr3) {
                        dispose.dispose();
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public aw(ae<T> aeVar, h<? super T, ? extends ae<? extends U>> hVar, boolean z, int i, int i2) {
        super(aeVar);
        this.f7153b = hVar;
        this.c = z;
        this.d = i;
        this.e = i2;
    }

    public final void subscribeActual(ag<? super U> agVar) {
        if (!cz.tryScalarXMapSubscribe(this.f7091a, agVar, this.f7153b)) {
            ae aeVar = this.f7091a;
            b bVar = new b(agVar, this.f7153b, this.c, this.d, this.e);
            aeVar.subscribe(bVar);
        }
    }
}
