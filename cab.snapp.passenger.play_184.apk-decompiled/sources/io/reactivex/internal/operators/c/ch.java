package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.e;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class ch<T> extends io.reactivex.f.a<T> implements e {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7296a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<b<T>> f7297b = new AtomicReference<>();

    static final class a<T> extends AtomicReference<b<T>> implements c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7298a;

        public a(ag<? super T> agVar, b<T> bVar) {
            this.f7298a = agVar;
            lazySet(bVar);
        }

        public final void dispose() {
            b bVar = (b) getAndSet(null);
            if (bVar != null) {
                bVar.remove(this);
            }
        }

        public final boolean isDisposed() {
            return get() == null;
        }
    }

    static final class b<T> extends AtomicReference<a<T>[]> implements ag<T>, c {
        static final a[] d = new a[0];
        static final a[] e = new a[0];

        /* renamed from: a  reason: collision with root package name */
        final AtomicBoolean f7299a = new AtomicBoolean();

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<b<T>> f7300b;
        final AtomicReference<c> c;
        Throwable f;

        public b(AtomicReference<b<T>> atomicReference) {
            this.f7300b = atomicReference;
            this.c = new AtomicReference<>();
            lazySet(d);
        }

        public final void dispose() {
            getAndSet(e);
            this.f7300b.compareAndSet(this, null);
            DisposableHelper.dispose(this.c);
        }

        public final boolean isDisposed() {
            return get() == e;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this.c, cVar);
        }

        public final void onNext(T t) {
            for (a aVar : (a[]) get()) {
                aVar.f7298a.onNext(t);
            }
        }

        public final void onError(Throwable th) {
            this.f = th;
            this.c.lazySet(DisposableHelper.DISPOSED);
            for (a aVar : (a[]) getAndSet(e)) {
                aVar.f7298a.onError(th);
            }
        }

        public final void onComplete() {
            this.c.lazySet(DisposableHelper.DISPOSED);
            for (a aVar : (a[]) getAndSet(e)) {
                aVar.f7298a.onComplete();
            }
        }

        public final boolean add(a<T> aVar) {
            a[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = (a[]) get();
                if (aVarArr == e) {
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[(length + 1)];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
            } while (!compareAndSet(aVarArr, aVarArr2));
            return true;
        }

        public final void remove(a<T> aVar) {
            a<T>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = (a[]) get();
                int length = aVarArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (aVarArr[i2] == aVar) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        aVarArr2 = d;
                        if (length != 1) {
                            aVarArr2 = new a[(length - 1)];
                            System.arraycopy(aVarArr, 0, aVarArr2, 0, i);
                            System.arraycopy(aVarArr, i + 1, aVarArr2, i, (length - i) - 1);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!compareAndSet(aVarArr, aVarArr2));
        }
    }

    public ch(ae<T> aeVar) {
        this.f7296a = aeVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP_START, MTH_ENTER_BLOCK] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void connect(io.reactivex.e.g<? super io.reactivex.b.c> r5) {
        /*
            r4 = this;
        L_0x0000:
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.ch$b<T>> r0 = r4.f7297b
            java.lang.Object r0 = r0.get()
            io.reactivex.internal.operators.c.ch$b r0 = (io.reactivex.internal.operators.c.ch.b) r0
            if (r0 == 0) goto L_0x0010
            boolean r1 = r0.isDisposed()
            if (r1 == 0) goto L_0x0020
        L_0x0010:
            io.reactivex.internal.operators.c.ch$b r1 = new io.reactivex.internal.operators.c.ch$b
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.ch$b<T>> r2 = r4.f7297b
            r1.<init>(r2)
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.ch$b<T>> r2 = r4.f7297b
            boolean r0 = r2.compareAndSet(r0, r1)
            if (r0 == 0) goto L_0x0000
            r0 = r1
        L_0x0020:
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.f7299a
            boolean r1 = r1.get()
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L_0x0033
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.f7299a
            boolean r1 = r1.compareAndSet(r3, r2)
            if (r1 == 0) goto L_0x0033
            goto L_0x0034
        L_0x0033:
            r2 = 0
        L_0x0034:
            r5.accept(r0)     // Catch:{ all -> 0x003f }
            if (r2 == 0) goto L_0x003e
            io.reactivex.ae<T> r5 = r4.f7296a
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
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.ch.connect(io.reactivex.e.g):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP_START, MTH_ENTER_BLOCK] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void subscribeActual(io.reactivex.ag<? super T> r4) {
        /*
            r3 = this;
        L_0x0000:
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.ch$b<T>> r0 = r3.f7297b
            java.lang.Object r0 = r0.get()
            io.reactivex.internal.operators.c.ch$b r0 = (io.reactivex.internal.operators.c.ch.b) r0
            if (r0 != 0) goto L_0x001a
            io.reactivex.internal.operators.c.ch$b r1 = new io.reactivex.internal.operators.c.ch$b
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.ch$b<T>> r2 = r3.f7297b
            r1.<init>(r2)
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.ch$b<T>> r2 = r3.f7297b
            boolean r0 = r2.compareAndSet(r0, r1)
            if (r0 == 0) goto L_0x0000
            r0 = r1
        L_0x001a:
            io.reactivex.internal.operators.c.ch$a r1 = new io.reactivex.internal.operators.c.ch$a
            r1.<init>(r4, r0)
            r4.onSubscribe(r1)
            boolean r2 = r0.add(r1)
            if (r2 == 0) goto L_0x0032
            boolean r4 = r1.isDisposed()
            if (r4 == 0) goto L_0x0031
            r0.remove(r1)
        L_0x0031:
            return
        L_0x0032:
            java.lang.Throwable r0 = r0.f
            if (r0 == 0) goto L_0x003a
            r4.onError(r0)
            return
        L_0x003a:
            r4.onComplete()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.ch.subscribeActual(io.reactivex.ag):void");
    }

    public final void resetIf(c cVar) {
        this.f7297b.compareAndSet((b) cVar, null);
    }

    public final ae<T> source() {
        return this.f7296a;
    }
}
