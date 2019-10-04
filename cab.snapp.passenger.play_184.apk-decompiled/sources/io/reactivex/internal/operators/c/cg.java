package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class cg<T> extends io.reactivex.f.a<T> implements ci<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7290a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<b<T>> f7291b;
    final ae<T> c;

    static final class a<T> extends AtomicReference<Object> implements io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7292a;

        a(ag<? super T> agVar) {
            this.f7292a = agVar;
        }

        public final boolean isDisposed() {
            return get() == this;
        }

        public final void dispose() {
            Object andSet = getAndSet(this);
            if (andSet != null && andSet != this) {
                ((b) andSet).a(this);
            }
        }
    }

    static final class b<T> implements ag<T>, io.reactivex.b.c {

        /* renamed from: b  reason: collision with root package name */
        static final a[] f7293b = new a[0];
        static final a[] c = new a[0];

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<b<T>> f7294a;
        final AtomicReference<a<T>[]> d = new AtomicReference<>(f7293b);
        final AtomicBoolean e;
        final AtomicReference<io.reactivex.b.c> f = new AtomicReference<>();

        b(AtomicReference<b<T>> atomicReference) {
            this.f7294a = atomicReference;
            this.e = new AtomicBoolean();
        }

        public final void dispose() {
            if (((a[]) this.d.getAndSet(c)) != c) {
                this.f7294a.compareAndSet(this, null);
                DisposableHelper.dispose(this.f);
            }
        }

        public final boolean isDisposed() {
            return this.d.get() == c;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this.f, cVar);
        }

        public final void onNext(T t) {
            for (a aVar : (a[]) this.d.get()) {
                aVar.f7292a.onNext(t);
            }
        }

        public final void onError(Throwable th) {
            this.f7294a.compareAndSet(this, null);
            a[] aVarArr = (a[]) this.d.getAndSet(c);
            if (aVarArr.length != 0) {
                for (a aVar : aVarArr) {
                    aVar.f7292a.onError(th);
                }
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.f7294a.compareAndSet(this, null);
            for (a aVar : (a[]) this.d.getAndSet(c)) {
                aVar.f7292a.onComplete();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(a<T> aVar) {
            a[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = (a[]) this.d.get();
                int length = aVarArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (aVarArr[i2].equals(aVar)) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        if (length == 1) {
                            aVarArr2 = f7293b;
                        } else {
                            a[] aVarArr3 = new a[(length - 1)];
                            System.arraycopy(aVarArr, 0, aVarArr3, 0, i);
                            System.arraycopy(aVarArr, i + 1, aVarArr3, i, (length - i) - 1);
                            aVarArr2 = aVarArr3;
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.d.compareAndSet(aVarArr, aVarArr2));
        }
    }

    static final class c<T> implements ae<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<b<T>> f7295a;

        c(AtomicReference<b<T>> atomicReference) {
            this.f7295a = atomicReference;
        }

        public final void subscribe(ag<? super T> agVar) {
            b bVar;
            boolean z;
            a aVar = new a(agVar);
            agVar.onSubscribe(aVar);
            while (true) {
                bVar = this.f7295a.get();
                if (bVar == null || bVar.isDisposed()) {
                    b bVar2 = new b(this.f7295a);
                    if (this.f7295a.compareAndSet(bVar, bVar2)) {
                        bVar = bVar2;
                    } else {
                        continue;
                    }
                }
                while (true) {
                    a[] aVarArr = (a[]) bVar.d.get();
                    z = false;
                    if (aVarArr != b.c) {
                        int length = aVarArr.length;
                        a[] aVarArr2 = new a[(length + 1)];
                        System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                        aVarArr2[length] = aVar;
                        if (bVar.d.compareAndSet(aVarArr, aVarArr2)) {
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
            if (!aVar.compareAndSet(null, bVar)) {
                bVar.a(aVar);
            }
        }
    }

    public static <T> io.reactivex.f.a<T> create(ae<T> aeVar) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.g.a.onAssembly(new cg(new c(atomicReference), aeVar, atomicReference));
    }

    private cg(ae<T> aeVar, ae<T> aeVar2, AtomicReference<b<T>> atomicReference) {
        this.c = aeVar;
        this.f7290a = aeVar2;
        this.f7291b = atomicReference;
    }

    public final ae<T> source() {
        return this.f7290a;
    }

    public final ae<T> publishSource() {
        return this.f7290a;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.c.subscribe(agVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP_START, MTH_ENTER_BLOCK] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void connect(io.reactivex.e.g<? super io.reactivex.b.c> r5) {
        /*
            r4 = this;
        L_0x0000:
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.cg$b<T>> r0 = r4.f7291b
            java.lang.Object r0 = r0.get()
            io.reactivex.internal.operators.c.cg$b r0 = (io.reactivex.internal.operators.c.cg.b) r0
            if (r0 == 0) goto L_0x0010
            boolean r1 = r0.isDisposed()
            if (r1 == 0) goto L_0x0020
        L_0x0010:
            io.reactivex.internal.operators.c.cg$b r1 = new io.reactivex.internal.operators.c.cg$b
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.cg$b<T>> r2 = r4.f7291b
            r1.<init>(r2)
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.cg$b<T>> r2 = r4.f7291b
            boolean r0 = r2.compareAndSet(r0, r1)
            if (r0 == 0) goto L_0x0000
            r0 = r1
        L_0x0020:
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.e
            boolean r1 = r1.get()
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L_0x0033
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.e
            boolean r1 = r1.compareAndSet(r3, r2)
            if (r1 == 0) goto L_0x0033
            goto L_0x0034
        L_0x0033:
            r2 = 0
        L_0x0034:
            r5.accept(r0)     // Catch:{ all -> 0x003f }
            if (r2 == 0) goto L_0x003e
            io.reactivex.ae<T> r5 = r4.f7290a
            r5.subscribe(r0)
        L_0x003e:
            return
        L_0x003f:
            r5 = move-exception
            io.reactivex.c.b.throwIfFatal(r5)
            java.lang.RuntimeException r5 = io.reactivex.internal.util.h.wrapOrThrow(r5)
            goto L_0x0049
        L_0x0048:
            throw r5
        L_0x0049:
            goto L_0x0048
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.cg.connect(io.reactivex.e.g):void");
    }
}
