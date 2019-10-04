package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class u<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final ae<? extends T>[] f7616a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends ae<? extends T>> f7617b;
    final h<? super Object[], ? extends R> c;
    final int d;
    final boolean e;

    static final class a<T, R> extends AtomicReference<c> implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, R> f7618a;

        /* renamed from: b  reason: collision with root package name */
        final int f7619b;

        a(b<T, R> bVar, int i) {
            this.f7618a = bVar;
            this.f7619b = i;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onNext(T t) {
            this.f7618a.a(this.f7619b, t);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:16:0x0027, code lost:
            if (r3 == r5.length) goto L_0x0029;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onError(java.lang.Throwable r5) {
            /*
                r4 = this;
                io.reactivex.internal.operators.c.u$b<T, R> r0 = r4.f7618a
                int r1 = r4.f7619b
                io.reactivex.internal.util.b r2 = r0.i
                boolean r2 = r2.addThrowable(r5)
                if (r2 == 0) goto L_0x003a
                boolean r5 = r0.f
                r2 = 1
                if (r5 == 0) goto L_0x0030
                monitor-enter(r0)
                java.lang.Object[] r5 = r0.d     // Catch:{ all -> 0x002d }
                if (r5 != 0) goto L_0x0018
                monitor-exit(r0)     // Catch:{ all -> 0x002d }
                return
            L_0x0018:
                r1 = r5[r1]     // Catch:{ all -> 0x002d }
                if (r1 != 0) goto L_0x001e
                r1 = 1
                goto L_0x001f
            L_0x001e:
                r1 = 0
            L_0x001f:
                if (r1 != 0) goto L_0x0029
                int r3 = r0.k     // Catch:{ all -> 0x002d }
                int r3 = r3 + r2
                r0.k = r3     // Catch:{ all -> 0x002d }
                int r5 = r5.length     // Catch:{ all -> 0x002d }
                if (r3 != r5) goto L_0x002b
            L_0x0029:
                r0.h = r2     // Catch:{ all -> 0x002d }
            L_0x002b:
                monitor-exit(r0)     // Catch:{ all -> 0x002d }
                goto L_0x0031
            L_0x002d:
                r5 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x002d }
                throw r5
            L_0x0030:
                r1 = 1
            L_0x0031:
                if (r1 == 0) goto L_0x0036
                r0.a()
            L_0x0036:
                r0.b()
                return
            L_0x003a:
                io.reactivex.g.a.onError(r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.u.a.onError(java.lang.Throwable):void");
        }

        /* JADX WARNING: Code restructure failed: missing block: B:13:0x001b, code lost:
            if (r4 == r2.length) goto L_0x001d;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:16:0x0020, code lost:
            if (r1 == false) goto L_0x0025;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:17:0x0022, code lost:
            r0.a();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:18:0x0025, code lost:
            r0.b();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:19:0x0028, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onComplete() {
            /*
                r5 = this;
                io.reactivex.internal.operators.c.u$b<T, R> r0 = r5.f7618a
                int r1 = r5.f7619b
                monitor-enter(r0)
                java.lang.Object[] r2 = r0.d     // Catch:{ all -> 0x0029 }
                if (r2 != 0) goto L_0x000b
                monitor-exit(r0)     // Catch:{ all -> 0x0029 }
                return
            L_0x000b:
                r1 = r2[r1]     // Catch:{ all -> 0x0029 }
                r3 = 1
                if (r1 != 0) goto L_0x0012
                r1 = 1
                goto L_0x0013
            L_0x0012:
                r1 = 0
            L_0x0013:
                if (r1 != 0) goto L_0x001d
                int r4 = r0.k     // Catch:{ all -> 0x0029 }
                int r4 = r4 + r3
                r0.k = r4     // Catch:{ all -> 0x0029 }
                int r2 = r2.length     // Catch:{ all -> 0x0029 }
                if (r4 != r2) goto L_0x001f
            L_0x001d:
                r0.h = r3     // Catch:{ all -> 0x0029 }
            L_0x001f:
                monitor-exit(r0)     // Catch:{ all -> 0x0029 }
                if (r1 == 0) goto L_0x0025
                r0.a()
            L_0x0025:
                r0.b()
                return
            L_0x0029:
                r1 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x0029 }
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.u.a.onComplete():void");
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }
    }

    static final class b<T, R> extends AtomicInteger implements c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7620a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Object[], ? extends R> f7621b;
        final a<T, R>[] c;
        Object[] d;
        final io.reactivex.internal.d.c<Object[]> e;
        final boolean f;
        volatile boolean g;
        volatile boolean h;
        final io.reactivex.internal.util.b i = new io.reactivex.internal.util.b();
        int j;
        int k;

        b(ag<? super R> agVar, h<? super Object[], ? extends R> hVar, int i2, int i3, boolean z) {
            this.f7620a = agVar;
            this.f7621b = hVar;
            this.f = z;
            this.d = new Object[i2];
            a<T, R>[] aVarArr = new a[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                aVarArr[i4] = new a<>(this, i4);
            }
            this.c = aVarArr;
            this.e = new io.reactivex.internal.d.c<>(i3);
        }

        public final void subscribe(ae<? extends T>[] aeVarArr) {
            a<T, R>[] aVarArr = this.c;
            int length = aVarArr.length;
            this.f7620a.onSubscribe(this);
            for (int i2 = 0; i2 < length && !this.h && !this.g; i2++) {
                aeVarArr[i2].subscribe(aVarArr[i2]);
            }
        }

        public final void dispose() {
            if (!this.g) {
                this.g = true;
                a();
                if (getAndIncrement() == 0) {
                    a(this.e);
                }
            }
        }

        public final boolean isDisposed() {
            return this.g;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            for (a<T, R> dispose : this.c) {
                dispose.dispose();
            }
        }

        private void a(io.reactivex.internal.d.c<?> cVar) {
            synchronized (this) {
                this.d = null;
            }
            cVar.clear();
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            if (getAndIncrement() == 0) {
                io.reactivex.internal.d.c<Object[]> cVar = this.e;
                ag<? super R> agVar = this.f7620a;
                boolean z = this.f;
                int i2 = 1;
                while (!this.g) {
                    if (z || this.i.get() == null) {
                        boolean z2 = this.h;
                        Object[] poll = cVar.poll();
                        boolean z3 = poll == null;
                        if (z2 && z3) {
                            a(cVar);
                            Throwable terminate = this.i.terminate();
                            if (terminate == null) {
                                agVar.onComplete();
                                return;
                            } else {
                                agVar.onError(terminate);
                                return;
                            }
                        } else if (!z3) {
                            try {
                                agVar.onNext(io.reactivex.internal.a.b.requireNonNull(this.f7621b.apply(poll), "The combiner returned a null value"));
                            } catch (Throwable th) {
                                io.reactivex.c.b.throwIfFatal(th);
                                this.i.addThrowable(th);
                                a();
                                a(cVar);
                                agVar.onError(this.i.terminate());
                                return;
                            }
                        } else {
                            i2 = addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        }
                    } else {
                        a();
                        a(cVar);
                        agVar.onError(this.i.terminate());
                        return;
                    }
                }
                a(cVar);
            }
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0023, code lost:
            if (r4 == false) goto L_0x0028;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x0025, code lost:
            b();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:16:0x0028, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a(int r4, T r5) {
            /*
                r3 = this;
                monitor-enter(r3)
                java.lang.Object[] r0 = r3.d     // Catch:{ all -> 0x0029 }
                if (r0 != 0) goto L_0x0007
                monitor-exit(r3)     // Catch:{ all -> 0x0029 }
                return
            L_0x0007:
                r1 = r0[r4]     // Catch:{ all -> 0x0029 }
                int r2 = r3.j     // Catch:{ all -> 0x0029 }
                if (r1 != 0) goto L_0x0011
                int r2 = r2 + 1
                r3.j = r2     // Catch:{ all -> 0x0029 }
            L_0x0011:
                r0[r4] = r5     // Catch:{ all -> 0x0029 }
                int r4 = r0.length     // Catch:{ all -> 0x0029 }
                if (r2 != r4) goto L_0x0021
                io.reactivex.internal.d.c<java.lang.Object[]> r4 = r3.e     // Catch:{ all -> 0x0029 }
                java.lang.Object r5 = r0.clone()     // Catch:{ all -> 0x0029 }
                r4.offer(r5)     // Catch:{ all -> 0x0029 }
                r4 = 1
                goto L_0x0022
            L_0x0021:
                r4 = 0
            L_0x0022:
                monitor-exit(r3)     // Catch:{ all -> 0x0029 }
                if (r4 == 0) goto L_0x0028
                r3.b()
            L_0x0028:
                return
            L_0x0029:
                r4 = move-exception
                monitor-exit(r3)     // Catch:{ all -> 0x0029 }
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.u.b.a(int, java.lang.Object):void");
        }
    }

    public u(ae<? extends T>[] aeVarArr, Iterable<? extends ae<? extends T>> iterable, h<? super Object[], ? extends R> hVar, int i, boolean z) {
        this.f7616a = aeVarArr;
        this.f7617b = iterable;
        this.c = hVar;
        this.d = i;
        this.e = z;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        int i;
        ae<? extends T>[] aeVarArr = this.f7616a;
        if (aeVarArr == null) {
            aeVarArr = new z[8];
            i = 0;
            for (ae<? extends T> aeVar : this.f7617b) {
                if (i == aeVarArr.length) {
                    ae<? extends T>[] aeVarArr2 = new ae[((i >> 2) + i)];
                    System.arraycopy(aeVarArr, 0, aeVarArr2, 0, i);
                    aeVarArr = aeVarArr2;
                }
                aeVarArr[i] = aeVar;
                i++;
            }
        } else {
            i = aeVarArr.length;
        }
        int i2 = i;
        if (i2 == 0) {
            EmptyDisposable.complete((ag<?>) agVar);
            return;
        }
        b bVar = new b(agVar, this.c, i2, this.d, this.e);
        bVar.subscribe(aeVarArr);
    }
}
