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

public final class en<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final ae<? extends T>[] f7549a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends ae<? extends T>> f7550b;
    final h<? super Object[], ? extends R> c;
    final int d;
    final boolean e;

    static final class a<T, R> extends AtomicInteger implements c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7551a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Object[], ? extends R> f7552b;
        final b<T, R>[] c;
        final T[] d;
        final boolean e;
        volatile boolean f;

        a(ag<? super R> agVar, h<? super Object[], ? extends R> hVar, int i, boolean z) {
            this.f7551a = agVar;
            this.f7552b = hVar;
            this.c = new b[i];
            this.d = (Object[]) new Object[i];
            this.e = z;
        }

        public final void subscribe(ae<? extends T>[] aeVarArr, int i) {
            b<T, R>[] bVarArr = this.c;
            int length = bVarArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                bVarArr[i2] = new b<>(this, i);
            }
            lazySet(0);
            this.f7551a.onSubscribe(this);
            for (int i3 = 0; i3 < length && !this.f; i3++) {
                aeVarArr[i3].subscribe(bVarArr[i3]);
            }
        }

        public final void dispose() {
            if (!this.f) {
                this.f = true;
                b();
                if (getAndIncrement() == 0) {
                    c();
                }
            }
        }

        public final boolean isDisposed() {
            return this.f;
        }

        private void a() {
            c();
            b();
        }

        private void b() {
            for (b<T, R> dispose : this.c) {
                dispose.dispose();
            }
        }

        private void c() {
            for (b<T, R> bVar : this.c) {
                bVar.f7554b.clear();
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:31:0x0068  */
        /* JADX WARNING: Removed duplicated region for block: B:53:0x0067 A[SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void drain() {
            /*
                r16 = this;
                r1 = r16
                int r0 = r16.getAndIncrement()
                if (r0 == 0) goto L_0x0009
                return
            L_0x0009:
                io.reactivex.internal.operators.c.en$b<T, R>[] r0 = r1.c
                io.reactivex.ag<? super R> r2 = r1.f7551a
                T[] r3 = r1.d
                boolean r4 = r1.e
                r5 = 1
                r6 = 1
            L_0x0013:
                int r7 = r0.length
                r9 = 0
                r10 = 0
                r11 = 0
            L_0x0017:
                if (r9 >= r7) goto L_0x0088
                r12 = r0[r9]
                r13 = r3[r11]
                if (r13 != 0) goto L_0x0070
                boolean r13 = r12.c
                io.reactivex.internal.d.c<T> r14 = r12.f7554b
                java.lang.Object r14 = r14.poll()
                if (r14 != 0) goto L_0x002b
                r15 = 1
                goto L_0x002c
            L_0x002b:
                r15 = 0
            L_0x002c:
                boolean r8 = r1.f
                if (r8 == 0) goto L_0x0035
                r16.a()
            L_0x0033:
                r8 = 1
                goto L_0x0065
            L_0x0035:
                if (r13 == 0) goto L_0x0064
                if (r4 == 0) goto L_0x004c
                if (r15 == 0) goto L_0x0064
                java.lang.Throwable r8 = r12.d
                r1.f = r5
                r16.a()
                if (r8 == 0) goto L_0x0048
                r2.onError(r8)
                goto L_0x0033
            L_0x0048:
                r2.onComplete()
                goto L_0x0033
            L_0x004c:
                java.lang.Throwable r8 = r12.d
                if (r8 == 0) goto L_0x0059
                r1.f = r5
                r16.a()
                r2.onError(r8)
                goto L_0x0033
            L_0x0059:
                if (r15 == 0) goto L_0x0064
                r1.f = r5
                r16.a()
                r2.onComplete()
                goto L_0x0033
            L_0x0064:
                r8 = 0
            L_0x0065:
                if (r8 == 0) goto L_0x0068
                return
            L_0x0068:
                if (r15 != 0) goto L_0x006d
                r3[r11] = r14
                goto L_0x0083
            L_0x006d:
                int r10 = r10 + 1
                goto L_0x0083
            L_0x0070:
                boolean r8 = r12.c
                if (r8 == 0) goto L_0x0083
                if (r4 != 0) goto L_0x0083
                java.lang.Throwable r8 = r12.d
                if (r8 == 0) goto L_0x0083
                r1.f = r5
                r16.a()
                r2.onError(r8)
                return
            L_0x0083:
                int r11 = r11 + 1
                int r9 = r9 + 1
                goto L_0x0017
            L_0x0088:
                if (r10 != 0) goto L_0x00ae
                io.reactivex.e.h<? super java.lang.Object[], ? extends R> r7 = r1.f7552b     // Catch:{ all -> 0x00a3 }
                java.lang.Object r8 = r3.clone()     // Catch:{ all -> 0x00a3 }
                java.lang.Object r7 = r7.apply(r8)     // Catch:{ all -> 0x00a3 }
                java.lang.String r8 = "The zipper returned a null value"
                java.lang.Object r7 = io.reactivex.internal.a.b.requireNonNull(r7, (java.lang.String) r8)     // Catch:{ all -> 0x00a3 }
                r2.onNext(r7)
                r7 = 0
                java.util.Arrays.fill(r3, r7)
                goto L_0x0013
            L_0x00a3:
                r0 = move-exception
                io.reactivex.c.b.throwIfFatal(r0)
                r16.a()
                r2.onError(r0)
                return
            L_0x00ae:
                int r6 = -r6
                int r6 = r1.addAndGet(r6)
                if (r6 != 0) goto L_0x0013
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.en.a.drain():void");
        }
    }

    static final class b<T, R> implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T, R> f7553a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.d.c<T> f7554b;
        volatile boolean c;
        Throwable d;
        final AtomicReference<c> e = new AtomicReference<>();

        b(a<T, R> aVar, int i) {
            this.f7553a = aVar;
            this.f7554b = new io.reactivex.internal.d.c<>(i);
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this.e, cVar);
        }

        public final void onNext(T t) {
            this.f7554b.offer(t);
            this.f7553a.drain();
        }

        public final void onError(Throwable th) {
            this.d = th;
            this.c = true;
            this.f7553a.drain();
        }

        public final void onComplete() {
            this.c = true;
            this.f7553a.drain();
        }

        public final void dispose() {
            DisposableHelper.dispose(this.e);
        }
    }

    public en(ae<? extends T>[] aeVarArr, Iterable<? extends ae<? extends T>> iterable, h<? super Object[], ? extends R> hVar, int i, boolean z) {
        this.f7549a = aeVarArr;
        this.f7550b = iterable;
        this.c = hVar;
        this.d = i;
        this.e = z;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        int i;
        ae<? extends T>[] aeVarArr = this.f7549a;
        if (aeVarArr == null) {
            aeVarArr = new z[8];
            i = 0;
            for (ae<? extends T> aeVar : this.f7550b) {
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
        if (i == 0) {
            EmptyDisposable.complete((ag<?>) agVar);
        } else {
            new a(agVar, this.c, i, this.e).subscribe(aeVarArr, this.d);
        }
    }
}
