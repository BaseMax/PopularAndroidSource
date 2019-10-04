package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.b.g;
import io.reactivex.internal.b.j;
import io.reactivex.internal.disposables.e;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class cr<T> extends io.reactivex.d.a<T> implements e {

    /* renamed from: b  reason: collision with root package name */
    final org.b.b<T> f8113b;
    final int c;
    final AtomicReference<b<T>> d = new AtomicReference<>();

    static final class a<T> extends AtomicLong implements d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8114a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f8115b;
        long c;

        a(c<? super T> cVar, b<T> bVar) {
            this.f8114a = cVar;
            this.f8115b = bVar;
        }

        public final void request(long j) {
            io.reactivex.internal.util.c.addCancel(this, j);
            this.f8115b.a();
        }

        public final void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f8115b.a(this);
                this.f8115b.a();
            }
        }

        public final boolean isCancelled() {
            return get() == Long.MIN_VALUE;
        }
    }

    static final class b<T> extends AtomicInteger implements io.reactivex.b.c, o<T> {
        static final a[] k = new a[0];
        static final a[] l = new a[0];

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<b<T>> f8116a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<d> f8117b = new AtomicReference<>();
        final AtomicBoolean c = new AtomicBoolean();
        final AtomicReference<a<T>[]> d;
        final int e;
        volatile j<T> f;
        int g;
        volatile boolean h;
        Throwable i;
        int j;

        b(AtomicReference<b<T>> atomicReference, int i2) {
            this.f8116a = atomicReference;
            this.e = i2;
            this.d = new AtomicReference<>(k);
        }

        public final void dispose() {
            this.d.getAndSet(l);
            this.f8116a.compareAndSet(this, null);
            SubscriptionHelper.cancel(this.f8117b);
        }

        public final boolean isDisposed() {
            return this.d.get() == l;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.setOnce(this.f8117b, dVar)) {
                if (dVar instanceof g) {
                    g gVar = (g) dVar;
                    int requestFusion = gVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.g = requestFusion;
                        this.f = gVar;
                        this.h = true;
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.g = requestFusion;
                        this.f = gVar;
                        dVar.request((long) this.e);
                        return;
                    }
                }
                this.f = new io.reactivex.internal.d.b(this.e);
                dVar.request((long) this.e);
            }
        }

        public final void onNext(T t) {
            if (this.g != 0 || this.f.offer(t)) {
                a();
            } else {
                onError(new io.reactivex.c.c("Prefetch queue is full?!"));
            }
        }

        public final void onError(Throwable th) {
            if (this.h) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.i = th;
            this.h = true;
            a();
        }

        public final void onComplete() {
            this.h = true;
            a();
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Code restructure failed: missing block: B:49:0x00d4, code lost:
            if (a(r1.h, r2.isEmpty()) == false) goto L_0x00d8;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:50:0x00d6, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a() {
            /*
                r20 = this;
                r1 = r20
                int r0 = r20.getAndIncrement()
                if (r0 == 0) goto L_0x0009
                return
            L_0x0009:
                io.reactivex.internal.b.j<T> r0 = r1.f
                int r2 = r1.j
                int r3 = r1.e
                int r4 = r3 >> 2
                int r3 = r3 - r4
                int r4 = r1.g
                r6 = 1
                if (r4 == r6) goto L_0x0019
                r4 = 1
                goto L_0x001a
            L_0x0019:
                r4 = 0
            L_0x001a:
                r7 = r2
                r2 = r0
                r0 = 1
            L_0x001d:
                if (r2 == 0) goto L_0x00d7
                r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.cr$a<T>[]> r10 = r1.d
                java.lang.Object r10 = r10.get()
                io.reactivex.internal.operators.flowable.cr$a[] r10 = (io.reactivex.internal.operators.flowable.cr.a[]) r10
                int r11 = r10.length
                r12 = r8
                r8 = 0
                r9 = 0
            L_0x0030:
                if (r8 >= r11) goto L_0x004c
                r14 = r10[r8]
                long r15 = r14.get()
                r17 = -9223372036854775808
                int r19 = (r15 > r17 ? 1 : (r15 == r17 ? 0 : -1))
                if (r19 == 0) goto L_0x0048
                long r5 = r14.c
                long r5 = r15 - r5
                long r5 = java.lang.Math.min(r5, r12)
                r12 = r5
                r9 = 1
            L_0x0048:
                int r8 = r8 + 1
                r6 = 1
                goto L_0x0030
            L_0x004c:
                r5 = 0
                if (r9 != 0) goto L_0x0051
                r12 = r5
            L_0x0051:
                int r8 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
                if (r8 == 0) goto L_0x00c9
                boolean r8 = r1.h
                java.lang.Object r9 = r2.poll()     // Catch:{ all -> 0x00af }
                if (r9 != 0) goto L_0x005f
                r11 = 1
                goto L_0x0060
            L_0x005f:
                r11 = 0
            L_0x0060:
                boolean r8 = r1.a(r8, r11)
                if (r8 == 0) goto L_0x0067
                return
            L_0x0067:
                if (r11 != 0) goto L_0x00c9
                int r8 = r10.length
                r11 = 0
            L_0x006b:
                r14 = 1
                if (r11 >= r8) goto L_0x0090
                r5 = r10[r11]
                boolean r6 = r5.isCancelled()
                if (r6 != 0) goto L_0x0085
                org.b.c<? super T> r6 = r5.f8114a
                r6.onNext(r9)
                r16 = r8
                r6 = r9
                long r8 = r5.c
                long r8 = r8 + r14
                r5.c = r8
                goto L_0x0088
            L_0x0085:
                r16 = r8
                r6 = r9
            L_0x0088:
                int r11 = r11 + 1
                r9 = r6
                r8 = r16
                r5 = 0
                goto L_0x006b
            L_0x0090:
                if (r4 == 0) goto L_0x00a3
                int r7 = r7 + 1
                if (r7 != r3) goto L_0x00a3
                java.util.concurrent.atomic.AtomicReference<org.b.d> r5 = r1.f8117b
                java.lang.Object r5 = r5.get()
                org.b.d r5 = (org.b.d) r5
                long r6 = (long) r3
                r5.request(r6)
                r7 = 0
            L_0x00a3:
                long r12 = r12 - r14
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.cr$a<T>[]> r5 = r1.d
                java.lang.Object r5 = r5.get()
                if (r10 != r5) goto L_0x00e5
                r5 = 0
                goto L_0x0051
            L_0x00af:
                r0 = move-exception
                r3 = r0
                io.reactivex.c.b.throwIfFatal(r3)
                java.util.concurrent.atomic.AtomicReference<org.b.d> r0 = r1.f8117b
                java.lang.Object r0 = r0.get()
                org.b.d r0 = (org.b.d) r0
                r0.cancel()
                r2.clear()
                r5 = 1
                r1.h = r5
                r1.a((java.lang.Throwable) r3)
                return
            L_0x00c9:
                r5 = 1
                boolean r6 = r1.h
                boolean r8 = r2.isEmpty()
                boolean r6 = r1.a(r6, r8)
                if (r6 == 0) goto L_0x00d8
                return
            L_0x00d7:
                r5 = 1
            L_0x00d8:
                r1.j = r7
                int r0 = -r0
                int r0 = r1.addAndGet(r0)
                if (r0 == 0) goto L_0x00e8
                if (r2 != 0) goto L_0x00e5
                io.reactivex.internal.b.j<T> r2 = r1.f
            L_0x00e5:
                r6 = 1
                goto L_0x001d
            L_0x00e8:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.cr.b.a():void");
        }

        private boolean a(boolean z, boolean z2) {
            if (!z || !z2) {
                return false;
            }
            Throwable th = this.i;
            if (th != null) {
                a(th);
            } else {
                for (a aVar : (a[]) this.d.getAndSet(l)) {
                    if (!aVar.isCancelled()) {
                        aVar.f8114a.onComplete();
                    }
                }
            }
            return true;
        }

        private void a(Throwable th) {
            for (a aVar : (a[]) this.d.getAndSet(l)) {
                if (!aVar.isCancelled()) {
                    aVar.f8114a.onError(th);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(a<T> aVar) {
            a<T>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = (a[]) this.d.get();
                int length = aVarArr.length;
                if (length == 0) {
                    break;
                }
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
                        a[] aVarArr3 = new a[(length - 1)];
                        System.arraycopy(aVarArr, 0, aVarArr3, 0, i2);
                        System.arraycopy(aVarArr, i2 + 1, aVarArr3, i2, (length - i2) - 1);
                        aVarArr2 = aVarArr3;
                    }
                } else {
                    return;
                }
            } while (!this.d.compareAndSet(aVarArr, aVarArr2));
        }
    }

    public cr(org.b.b<T> bVar, int i) {
        this.f8113b = bVar;
        this.c = i;
    }

    public final org.b.b<T> source() {
        return this.f8113b;
    }

    public final int publishBufferSize() {
        return this.c;
    }

    /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP_START, MTH_ENTER_BLOCK] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void connect(io.reactivex.e.g<? super io.reactivex.b.c> r5) {
        /*
            r4 = this;
        L_0x0000:
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.cr$b<T>> r0 = r4.d
            java.lang.Object r0 = r0.get()
            io.reactivex.internal.operators.flowable.cr$b r0 = (io.reactivex.internal.operators.flowable.cr.b) r0
            if (r0 == 0) goto L_0x0010
            boolean r1 = r0.isDisposed()
            if (r1 == 0) goto L_0x0022
        L_0x0010:
            io.reactivex.internal.operators.flowable.cr$b r1 = new io.reactivex.internal.operators.flowable.cr$b
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.cr$b<T>> r2 = r4.d
            int r3 = r4.c
            r1.<init>(r2, r3)
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.cr$b<T>> r2 = r4.d
            boolean r0 = r2.compareAndSet(r0, r1)
            if (r0 == 0) goto L_0x0000
            r0 = r1
        L_0x0022:
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.c
            boolean r1 = r1.get()
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L_0x0035
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.c
            boolean r1 = r1.compareAndSet(r3, r2)
            if (r1 == 0) goto L_0x0035
            goto L_0x0036
        L_0x0035:
            r2 = 0
        L_0x0036:
            r5.accept(r0)     // Catch:{ all -> 0x0041 }
            if (r2 == 0) goto L_0x0040
            org.b.b<T> r5 = r4.f8113b
            r5.subscribe(r0)
        L_0x0040:
            return
        L_0x0041:
            r5 = move-exception
            io.reactivex.c.b.throwIfFatal(r5)
            java.lang.RuntimeException r5 = io.reactivex.internal.util.h.wrapOrThrow(r5)
            goto L_0x004b
        L_0x004a:
            throw r5
        L_0x004b:
            goto L_0x004a
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.cr.connect(io.reactivex.e.g):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP_START, MTH_ENTER_BLOCK] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void subscribeActual(org.b.c<? super T> r7) {
        /*
            r6 = this;
        L_0x0000:
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.cr$b<T>> r0 = r6.d
            java.lang.Object r0 = r0.get()
            io.reactivex.internal.operators.flowable.cr$b r0 = (io.reactivex.internal.operators.flowable.cr.b) r0
            if (r0 != 0) goto L_0x001c
            io.reactivex.internal.operators.flowable.cr$b r1 = new io.reactivex.internal.operators.flowable.cr$b
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.cr$b<T>> r2 = r6.d
            int r3 = r6.c
            r1.<init>(r2, r3)
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.cr$b<T>> r2 = r6.d
            boolean r0 = r2.compareAndSet(r0, r1)
            if (r0 == 0) goto L_0x0000
            r0 = r1
        L_0x001c:
            io.reactivex.internal.operators.flowable.cr$a r1 = new io.reactivex.internal.operators.flowable.cr$a
            r1.<init>(r7, r0)
            r7.onSubscribe(r1)
        L_0x0024:
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.cr$a<T>[]> r2 = r0.d
            java.lang.Object r2 = r2.get()
            io.reactivex.internal.operators.flowable.cr$a[] r2 = (io.reactivex.internal.operators.flowable.cr.a[]) r2
            io.reactivex.internal.operators.flowable.cr$a[] r3 = io.reactivex.internal.operators.flowable.cr.b.l
            r4 = 0
            if (r2 != r3) goto L_0x0032
            goto L_0x0045
        L_0x0032:
            int r3 = r2.length
            int r5 = r3 + 1
            io.reactivex.internal.operators.flowable.cr$a[] r5 = new io.reactivex.internal.operators.flowable.cr.a[r5]
            java.lang.System.arraycopy(r2, r4, r5, r4, r3)
            r5[r3] = r1
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.cr$a<T>[]> r3 = r0.d
            boolean r2 = r3.compareAndSet(r2, r5)
            if (r2 == 0) goto L_0x0024
            r4 = 1
        L_0x0045:
            if (r4 == 0) goto L_0x0055
            boolean r7 = r1.isCancelled()
            if (r7 == 0) goto L_0x0051
            r0.a(r1)
            return
        L_0x0051:
            r0.a()
            return
        L_0x0055:
            java.lang.Throwable r0 = r0.i
            if (r0 == 0) goto L_0x005d
            r7.onError(r0)
            return
        L_0x005d:
            r7.onComplete()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.cr.subscribeActual(org.b.c):void");
    }

    public final void resetIf(io.reactivex.b.c cVar) {
        this.d.compareAndSet((b) cVar, null);
    }
}
