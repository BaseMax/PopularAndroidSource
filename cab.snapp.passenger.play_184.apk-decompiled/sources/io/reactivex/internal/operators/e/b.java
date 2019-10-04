package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class b<T> extends ai<T> implements al<T> {

    /* renamed from: a  reason: collision with root package name */
    static final a[] f7806a = new a[0];

    /* renamed from: b  reason: collision with root package name */
    static final a[] f7807b = new a[0];
    final ao<? extends T> c;
    final AtomicInteger d = new AtomicInteger();
    final AtomicReference<a<T>[]> e = new AtomicReference<>(f7806a);
    T f;
    Throwable g;

    static final class a<T> extends AtomicBoolean implements c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7808a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f7809b;

        a(al<? super T> alVar, b<T> bVar) {
            this.f7808a = alVar;
            this.f7809b = bVar;
        }

        public final boolean isDisposed() {
            return get();
        }

        public final void dispose() {
            if (compareAndSet(false, true)) {
                this.f7809b.a(this);
            }
        }
    }

    public final void onSubscribe(c cVar) {
    }

    public b(ao<? extends T> aoVar) {
        this.c = aoVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        boolean z;
        a aVar = new a(alVar, this);
        alVar.onSubscribe(aVar);
        while (true) {
            a[] aVarArr = (a[]) this.e.get();
            z = false;
            if (aVarArr != f7807b) {
                int length = aVarArr.length;
                a[] aVarArr2 = new a[(length + 1)];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
                if (this.e.compareAndSet(aVarArr, aVarArr2)) {
                    z = true;
                    break;
                }
            } else {
                break;
            }
        }
        if (z) {
            if (aVar.isDisposed()) {
                a(aVar);
            }
            if (this.d.getAndIncrement() == 0) {
                this.c.subscribe(this);
            }
            return;
        }
        Throwable th = this.g;
        if (th != null) {
            alVar.onError(th);
        } else {
            alVar.onSuccess(this.f);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = (a[]) this.e.get();
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
                    if (length == 1) {
                        aVarArr2 = f7806a;
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
        } while (!this.e.compareAndSet(aVarArr, aVarArr2));
    }

    public final void onSuccess(T t) {
        this.f = t;
        for (a aVar : (a[]) this.e.getAndSet(f7807b)) {
            if (!aVar.isDisposed()) {
                aVar.f7808a.onSuccess(t);
            }
        }
    }

    public final void onError(Throwable th) {
        this.g = th;
        for (a aVar : (a[]) this.e.getAndSet(f7807b)) {
            if (!aVar.isDisposed()) {
                aVar.f7808a.onError(th);
            }
        }
    }
}
