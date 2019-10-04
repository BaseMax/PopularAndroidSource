package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class r<T> extends a<T, T> implements ag<T> {
    static final a[] e = new a[0];
    static final a[] f = new a[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicBoolean f7604b = new AtomicBoolean();
    final int c;
    final AtomicReference<a<T>[]> d;
    volatile long g;
    final b<T> h;
    b<T> i;
    int j;
    Throwable k;
    volatile boolean l;

    static final class a<T> extends AtomicInteger implements c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7605a;

        /* renamed from: b  reason: collision with root package name */
        final r<T> f7606b;
        b<T> c;
        int d;
        long e;
        volatile boolean f;

        a(ag<? super T> agVar, r<T> rVar) {
            this.f7605a = agVar;
            this.f7606b = rVar;
            this.c = rVar.h;
        }

        public final void dispose() {
            a[] aVarArr;
            a[] aVarArr2;
            if (!this.f) {
                this.f = true;
                r<T> rVar = this.f7606b;
                do {
                    aVarArr = (a[]) rVar.d.get();
                    int length = aVarArr.length;
                    if (length != 0) {
                        int i = -1;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                break;
                            } else if (aVarArr[i2] == this) {
                                i = i2;
                                break;
                            } else {
                                i2++;
                            }
                        }
                        if (i < 0) {
                            return;
                        }
                        if (length == 1) {
                            aVarArr2 = r.e;
                        } else {
                            a[] aVarArr3 = new a[(length - 1)];
                            System.arraycopy(aVarArr, 0, aVarArr3, 0, i);
                            System.arraycopy(aVarArr, i + 1, aVarArr3, i, (length - i) - 1);
                            aVarArr2 = aVarArr3;
                        }
                    } else {
                        return;
                    }
                } while (!rVar.d.compareAndSet(aVarArr, aVarArr2));
            }
        }

        public final boolean isDisposed() {
            return this.f;
        }
    }

    static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        final T[] f7607a;

        /* renamed from: b  reason: collision with root package name */
        volatile b<T> f7608b;

        b(int i) {
            this.f7607a = (Object[]) new Object[i];
        }
    }

    public final void onSubscribe(c cVar) {
    }

    public r(z<T> zVar, int i2) {
        super(zVar);
        this.c = i2;
        b<T> bVar = new b<>(i2);
        this.h = bVar;
        this.i = bVar;
        this.d = new AtomicReference<>(e);
    }

    public final void subscribeActual(ag<? super T> agVar) {
        a[] aVarArr;
        a[] aVarArr2;
        a aVar = new a(agVar, this);
        agVar.onSubscribe(aVar);
        do {
            aVarArr = (a[]) this.d.get();
            if (aVarArr == f) {
                break;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[(length + 1)];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.d.compareAndSet(aVarArr, aVarArr2));
        if (this.f7604b.get() || !this.f7604b.compareAndSet(false, true)) {
            a(aVar);
        } else {
            this.f7091a.subscribe(this);
        }
    }

    private void a(a<T> aVar) {
        if (aVar.getAndIncrement() == 0) {
            long j2 = aVar.e;
            int i2 = aVar.d;
            b<T> bVar = aVar.c;
            ag<? super T> agVar = aVar.f7605a;
            int i3 = this.c;
            int i4 = 1;
            while (!aVar.f) {
                boolean z = this.l;
                boolean z2 = this.g == j2;
                if (z && z2) {
                    aVar.c = null;
                    Throwable th = this.k;
                    if (th != null) {
                        agVar.onError(th);
                        return;
                    } else {
                        agVar.onComplete();
                        return;
                    }
                } else if (!z2) {
                    if (i2 == i3) {
                        bVar = bVar.f7608b;
                        i2 = 0;
                    }
                    agVar.onNext(bVar.f7607a[i2]);
                    i2++;
                    j2++;
                } else {
                    aVar.e = j2;
                    aVar.d = i2;
                    aVar.c = bVar;
                    i4 = aVar.addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
            aVar.c = null;
        }
    }

    public final void onNext(T t) {
        int i2 = this.j;
        if (i2 == this.c) {
            b<T> bVar = new b<>(i2);
            bVar.f7607a[0] = t;
            this.j = 1;
            this.i.f7608b = bVar;
            this.i = bVar;
        } else {
            this.i.f7607a[i2] = t;
            this.j = i2 + 1;
        }
        this.g++;
        for (a a2 : (a[]) this.d.get()) {
            a(a2);
        }
    }

    public final void onError(Throwable th) {
        this.k = th;
        this.l = true;
        for (a a2 : (a[]) this.d.getAndSet(f)) {
            a(a2);
        }
    }

    public final void onComplete() {
        this.l = true;
        for (a a2 : (a[]) this.d.getAndSet(f)) {
            a(a2);
        }
    }
}
