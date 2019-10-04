package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.b.g;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class cq<T> extends io.reactivex.d.a<T> implements cs<T> {

    /* renamed from: b  reason: collision with root package name */
    final j<T> f8106b;
    final AtomicReference<c<T>> c;
    final int d;
    final org.b.b<T> e;

    static final class a<T> implements org.b.b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<c<T>> f8107a;

        /* renamed from: b  reason: collision with root package name */
        private final int f8108b;

        a(AtomicReference<c<T>> atomicReference, int i) {
            this.f8107a = atomicReference;
            this.f8108b = i;
        }

        public final void subscribe(org.b.c<? super T> cVar) {
            c<T> cVar2;
            boolean z;
            b bVar = new b(cVar);
            cVar.onSubscribe(bVar);
            while (true) {
                cVar2 = this.f8107a.get();
                if (cVar2 == null || cVar2.isDisposed()) {
                    c<T> cVar3 = new c<>(this.f8107a, this.f8108b);
                    if (this.f8107a.compareAndSet(cVar2, cVar3)) {
                        cVar2 = cVar3;
                    } else {
                        continue;
                    }
                }
                while (true) {
                    b[] bVarArr = (b[]) cVar2.e.get();
                    z = false;
                    if (bVarArr != c.f8112b) {
                        int length = bVarArr.length;
                        b[] bVarArr2 = new b[(length + 1)];
                        System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                        bVarArr2[length] = bVar;
                        if (cVar2.e.compareAndSet(bVarArr, bVarArr2)) {
                            z = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (z) {
                    break;
                }
            }
            if (bVar.get() == Long.MIN_VALUE) {
                cVar2.a(bVar);
            } else {
                bVar.f8110b = cVar2;
            }
            cVar2.a();
        }
    }

    static final class b<T> extends AtomicLong implements d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f8109a;

        /* renamed from: b  reason: collision with root package name */
        volatile c<T> f8110b;
        long c;

        b(org.b.c<? super T> cVar) {
            this.f8109a = cVar;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.addCancel(this, j);
                c<T> cVar = this.f8110b;
                if (cVar != null) {
                    cVar.a();
                }
            }
        }

        public final void cancel() {
            if (get() != Long.MIN_VALUE && getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                c<T> cVar = this.f8110b;
                if (cVar != null) {
                    cVar.a(this);
                    cVar.a();
                }
            }
        }
    }

    static final class c<T> extends AtomicInteger implements io.reactivex.b.c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        static final b[] f8111a = new b[0];

        /* renamed from: b  reason: collision with root package name */
        static final b[] f8112b = new b[0];
        final AtomicReference<c<T>> c;
        final int d;
        final AtomicReference<b<T>[]> e = new AtomicReference<>(f8111a);
        final AtomicBoolean f;
        final AtomicReference<d> g = new AtomicReference<>();
        volatile Object h;
        int i;
        volatile io.reactivex.internal.b.j<T> j;

        c(AtomicReference<c<T>> atomicReference, int i2) {
            this.c = atomicReference;
            this.f = new AtomicBoolean();
            this.d = i2;
        }

        public final void dispose() {
            b<T>[] bVarArr = this.e.get();
            b<T>[] bVarArr2 = f8112b;
            if (bVarArr != bVarArr2 && ((b[]) this.e.getAndSet(bVarArr2)) != f8112b) {
                this.c.compareAndSet(this, null);
                SubscriptionHelper.cancel(this.g);
            }
        }

        public final boolean isDisposed() {
            return this.e.get() == f8112b;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.setOnce(this.g, dVar)) {
                if (dVar instanceof g) {
                    g gVar = (g) dVar;
                    int requestFusion = gVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.i = requestFusion;
                        this.j = gVar;
                        this.h = NotificationLite.complete();
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.i = requestFusion;
                        this.j = gVar;
                        dVar.request((long) this.d);
                        return;
                    }
                }
                this.j = new io.reactivex.internal.d.b(this.d);
                dVar.request((long) this.d);
            }
        }

        public final void onNext(T t) {
            if (this.i != 0 || this.j.offer(t)) {
                a();
            } else {
                onError(new io.reactivex.c.c("Prefetch queue is full?!"));
            }
        }

        public final void onError(Throwable th) {
            if (this.h == null) {
                this.h = NotificationLite.error(th);
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (this.h == null) {
                this.h = NotificationLite.complete();
                a();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(b<T> bVar) {
            b[] bVarArr;
            b[] bVarArr2;
            do {
                bVarArr = (b[]) this.e.get();
                int length = bVarArr.length;
                if (length == 0) {
                    break;
                }
                int i2 = -1;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        break;
                    } else if (bVarArr[i3].equals(bVar)) {
                        i2 = i3;
                        break;
                    } else {
                        i3++;
                    }
                }
                if (i2 >= 0) {
                    if (length == 1) {
                        bVarArr2 = f8111a;
                    } else {
                        b[] bVarArr3 = new b[(length - 1)];
                        System.arraycopy(bVarArr, 0, bVarArr3, 0, i2);
                        System.arraycopy(bVarArr, i2 + 1, bVarArr3, i2, (length - i2) - 1);
                        bVarArr2 = bVarArr3;
                    }
                } else {
                    return;
                }
            } while (!this.e.compareAndSet(bVarArr, bVarArr2));
        }

        private boolean a(Object obj, boolean z) {
            int i2 = 0;
            if (obj != null) {
                if (!NotificationLite.isComplete(obj)) {
                    Throwable error = NotificationLite.getError(obj);
                    this.c.compareAndSet(this, null);
                    b[] bVarArr = (b[]) this.e.getAndSet(f8112b);
                    if (bVarArr.length != 0) {
                        int length = bVarArr.length;
                        while (i2 < length) {
                            bVarArr[i2].f8109a.onError(error);
                            i2++;
                        }
                    } else {
                        io.reactivex.g.a.onError(error);
                    }
                    return true;
                } else if (z) {
                    this.c.compareAndSet(this, null);
                    b[] bVarArr2 = (b[]) this.e.getAndSet(f8112b);
                    int length2 = bVarArr2.length;
                    while (i2 < length2) {
                        bVarArr2[i2].f8109a.onComplete();
                        i2++;
                    }
                    return true;
                }
            }
            return false;
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Code restructure failed: missing block: B:72:0x0133, code lost:
            r4 = r0;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a() {
            /*
                r25 = this;
                r1 = r25
                int r0 = r25.getAndIncrement()
                if (r0 == 0) goto L_0x0009
                return
            L_0x0009:
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.cq$b<T>[]> r2 = r1.e
                java.lang.Object r0 = r2.get()
                io.reactivex.internal.operators.flowable.cq$b[] r0 = (io.reactivex.internal.operators.flowable.cq.b[]) r0
                r3 = 1
                r4 = r0
                r5 = 1
            L_0x0014:
                java.lang.Object r0 = r1.h
                io.reactivex.internal.b.j<T> r6 = r1.j
                if (r6 == 0) goto L_0x0023
                boolean r8 = r6.isEmpty()
                if (r8 == 0) goto L_0x0021
                goto L_0x0023
            L_0x0021:
                r8 = 0
                goto L_0x0024
            L_0x0023:
                r8 = 1
            L_0x0024:
                boolean r0 = r1.a(r0, r8)
                if (r0 == 0) goto L_0x002b
                return
            L_0x002b:
                if (r8 != 0) goto L_0x0156
                int r0 = r4.length
                int r9 = r4.length
                r12 = 0
                r13 = 0
                r14 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            L_0x0036:
                r16 = -9223372036854775808
                if (r12 >= r9) goto L_0x0053
                r7 = r4[r12]
                long r18 = r7.get()
                int r20 = (r18 > r16 ? 1 : (r18 == r16 ? 0 : -1))
                if (r20 == 0) goto L_0x004e
                long r10 = r7.c
                long r10 = r18 - r10
                long r10 = java.lang.Math.min(r14, r10)
                r14 = r10
                goto L_0x0050
            L_0x004e:
                int r13 = r13 + 1
            L_0x0050:
                int r12 = r12 + 1
                goto L_0x0036
            L_0x0053:
                r9 = 1
                if (r0 != r13) goto L_0x0093
                java.lang.Object r0 = r1.h
                java.lang.Object r7 = r6.poll()     // Catch:{ all -> 0x005e }
                goto L_0x0075
            L_0x005e:
                r0 = move-exception
                r6 = r0
                io.reactivex.c.b.throwIfFatal(r6)
                java.util.concurrent.atomic.AtomicReference<org.b.d> r0 = r1.g
                java.lang.Object r0 = r0.get()
                org.b.d r0 = (org.b.d) r0
                r0.cancel()
                java.lang.Object r0 = io.reactivex.internal.util.NotificationLite.error(r6)
                r1.h = r0
                r7 = 0
            L_0x0075:
                if (r7 != 0) goto L_0x0079
                r6 = 1
                goto L_0x007a
            L_0x0079:
                r6 = 0
            L_0x007a:
                boolean r0 = r1.a(r0, r6)
                if (r0 == 0) goto L_0x0081
                return
            L_0x0081:
                int r0 = r1.i
                if (r0 == r3) goto L_0x0090
                java.util.concurrent.atomic.AtomicReference<org.b.d> r0 = r1.g
                java.lang.Object r0 = r0.get()
                org.b.d r0 = (org.b.d) r0
                r0.request(r9)
            L_0x0090:
                r6 = 1
                goto L_0x0165
            L_0x0093:
                r0 = r8
                r8 = 0
            L_0x0095:
                long r11 = (long) r8
                int r13 = (r11 > r14 ? 1 : (r11 == r14 ? 0 : -1))
                if (r13 >= 0) goto L_0x0139
                java.lang.Object r0 = r1.h
                java.lang.Object r13 = r6.poll()     // Catch:{ all -> 0x00a1 }
                goto L_0x00b8
            L_0x00a1:
                r0 = move-exception
                r13 = r0
                io.reactivex.c.b.throwIfFatal(r13)
                java.util.concurrent.atomic.AtomicReference<org.b.d> r0 = r1.g
                java.lang.Object r0 = r0.get()
                org.b.d r0 = (org.b.d) r0
                r0.cancel()
                java.lang.Object r0 = io.reactivex.internal.util.NotificationLite.error(r13)
                r1.h = r0
                r13 = 0
            L_0x00b8:
                if (r13 != 0) goto L_0x00bc
                r7 = 1
                goto L_0x00bd
            L_0x00bc:
                r7 = 0
            L_0x00bd:
                boolean r0 = r1.a(r0, r7)
                if (r0 == 0) goto L_0x00c4
                return
            L_0x00c4:
                if (r7 != 0) goto L_0x0135
                java.lang.Object r0 = io.reactivex.internal.util.NotificationLite.getValue(r13)
                int r11 = r4.length
                r12 = 0
                r13 = 0
            L_0x00cd:
                if (r12 >= r11) goto L_0x0103
                r3 = r4[r12]
                long r22 = r3.get()
                int r24 = (r22 > r16 ? 1 : (r22 == r16 ? 0 : -1))
                if (r24 == 0) goto L_0x00f1
                r20 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r24 = (r22 > r20 ? 1 : (r22 == r20 ? 0 : -1))
                r22 = r6
                r23 = r7
                if (r24 == 0) goto L_0x00eb
                long r6 = r3.c
                long r6 = r6 + r9
                r3.c = r6
            L_0x00eb:
                org.b.c<? super T> r3 = r3.f8109a
                r3.onNext(r0)
                goto L_0x00fb
            L_0x00f1:
                r22 = r6
                r23 = r7
                r20 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r13 = 1
            L_0x00fb:
                int r12 = r12 + 1
                r6 = r22
                r7 = r23
                r3 = 1
                goto L_0x00cd
            L_0x0103:
                r22 = r6
                r23 = r7
                r20 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r8 = r8 + 1
                java.lang.Object r0 = r2.get()
                io.reactivex.internal.operators.flowable.cq$b[] r0 = (io.reactivex.internal.operators.flowable.cq.b[]) r0
                if (r13 != 0) goto L_0x0120
                if (r0 == r4) goto L_0x0119
                goto L_0x0120
            L_0x0119:
                r6 = r22
                r0 = r23
                r3 = 1
                goto L_0x0095
            L_0x0120:
                if (r8 == 0) goto L_0x0133
                int r3 = r1.i
                r4 = 1
                if (r3 == r4) goto L_0x0133
                java.util.concurrent.atomic.AtomicReference<org.b.d> r3 = r1.g
                java.lang.Object r3 = r3.get()
                org.b.d r3 = (org.b.d) r3
                long r6 = (long) r8
                r3.request(r6)
            L_0x0133:
                r4 = r0
                goto L_0x0165
            L_0x0135:
                r23 = r7
                r0 = r23
            L_0x0139:
                if (r8 == 0) goto L_0x014c
                int r3 = r1.i
                r6 = 1
                if (r3 == r6) goto L_0x014d
                java.util.concurrent.atomic.AtomicReference<org.b.d> r3 = r1.g
                java.lang.Object r3 = r3.get()
                org.b.d r3 = (org.b.d) r3
                r3.request(r11)
                goto L_0x014d
            L_0x014c:
                r6 = 1
            L_0x014d:
                r7 = 0
                int r3 = (r14 > r7 ? 1 : (r14 == r7 ? 0 : -1))
                if (r3 == 0) goto L_0x0157
                if (r0 == 0) goto L_0x0165
                goto L_0x0157
            L_0x0156:
                r6 = 1
            L_0x0157:
                int r0 = -r5
                int r5 = r1.addAndGet(r0)
                if (r5 == 0) goto L_0x0168
                java.lang.Object r0 = r2.get()
                r4 = r0
                io.reactivex.internal.operators.flowable.cq$b[] r4 = (io.reactivex.internal.operators.flowable.cq.b[]) r4
            L_0x0165:
                r3 = 1
                goto L_0x0014
            L_0x0168:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.cq.c.a():void");
        }
    }

    public static <T> io.reactivex.d.a<T> create(j<T> jVar, int i) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.g.a.onAssembly(new cq(new a(atomicReference, i), jVar, atomicReference, i));
    }

    private cq(org.b.b<T> bVar, j<T> jVar, AtomicReference<c<T>> atomicReference, int i) {
        this.e = bVar;
        this.f8106b = jVar;
        this.c = atomicReference;
        this.d = i;
    }

    public final org.b.b<T> source() {
        return this.f8106b;
    }

    public final int publishBufferSize() {
        return this.d;
    }

    public final org.b.b<T> publishSource() {
        return this.f8106b;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        this.e.subscribe(cVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP_START, MTH_ENTER_BLOCK] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void connect(io.reactivex.e.g<? super io.reactivex.b.c> r5) {
        /*
            r4 = this;
        L_0x0000:
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.cq$c<T>> r0 = r4.c
            java.lang.Object r0 = r0.get()
            io.reactivex.internal.operators.flowable.cq$c r0 = (io.reactivex.internal.operators.flowable.cq.c) r0
            if (r0 == 0) goto L_0x0010
            boolean r1 = r0.isDisposed()
            if (r1 == 0) goto L_0x0022
        L_0x0010:
            io.reactivex.internal.operators.flowable.cq$c r1 = new io.reactivex.internal.operators.flowable.cq$c
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.cq$c<T>> r2 = r4.c
            int r3 = r4.d
            r1.<init>(r2, r3)
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.cq$c<T>> r2 = r4.c
            boolean r0 = r2.compareAndSet(r0, r1)
            if (r0 == 0) goto L_0x0000
            r0 = r1
        L_0x0022:
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.f
            boolean r1 = r1.get()
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L_0x0035
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.f
            boolean r1 = r1.compareAndSet(r3, r2)
            if (r1 == 0) goto L_0x0035
            goto L_0x0036
        L_0x0035:
            r2 = 0
        L_0x0036:
            r5.accept(r0)     // Catch:{ all -> 0x0041 }
            if (r2 == 0) goto L_0x0040
            io.reactivex.j<T> r5 = r4.f8106b
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
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.cq.connect(io.reactivex.e.g):void");
    }
}
