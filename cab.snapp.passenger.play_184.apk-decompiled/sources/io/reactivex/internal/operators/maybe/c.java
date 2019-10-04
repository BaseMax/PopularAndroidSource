package io.reactivex.internal.operators.maybe;

import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class c<T> extends q<T> implements t<T> {

    /* renamed from: a  reason: collision with root package name */
    static final a[] f8564a = new a[0];

    /* renamed from: b  reason: collision with root package name */
    static final a[] f8565b = new a[0];
    final AtomicReference<w<T>> c;
    final AtomicReference<a<T>[]> d = new AtomicReference<>(f8564a);
    T e;
    Throwable f;

    static final class a<T> extends AtomicReference<c<T>> implements io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8566a;

        a(t<? super T> tVar, c<T> cVar) {
            super(cVar);
            this.f8566a = tVar;
        }

        public final void dispose() {
            c cVar = (c) getAndSet(null);
            if (cVar != null) {
                cVar.a(this);
            }
        }

        public final boolean isDisposed() {
            return get() == null;
        }
    }

    public final void onSubscribe(io.reactivex.b.c cVar) {
    }

    public c(w<T> wVar) {
        this.c = new AtomicReference<>(wVar);
    }

    public final void subscribeActual(t<? super T> tVar) {
        boolean z;
        a aVar = new a(tVar, this);
        tVar.onSubscribe(aVar);
        while (true) {
            a[] aVarArr = (a[]) this.d.get();
            z = false;
            if (aVarArr != f8565b) {
                int length = aVarArr.length;
                a[] aVarArr2 = new a[(length + 1)];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
                if (this.d.compareAndSet(aVarArr, aVarArr2)) {
                    z = true;
                    break;
                }
            } else {
                break;
            }
        }
        if (!z) {
            if (!aVar.isDisposed()) {
                Throwable th = this.f;
                if (th != null) {
                    tVar.onError(th);
                    return;
                }
                T t = this.e;
                if (t != null) {
                    tVar.onSuccess(t);
                    return;
                }
                tVar.onComplete();
            }
        } else if (aVar.isDisposed()) {
            a(aVar);
        } else {
            w andSet = this.c.getAndSet(null);
            if (andSet != null) {
                andSet.subscribe(this);
            }
        }
    }

    public final void onSuccess(T t) {
        this.e = t;
        for (a aVar : (a[]) this.d.getAndSet(f8565b)) {
            if (!aVar.isDisposed()) {
                aVar.f8566a.onSuccess(t);
            }
        }
    }

    public final void onError(Throwable th) {
        this.f = th;
        for (a aVar : (a[]) this.d.getAndSet(f8565b)) {
            if (!aVar.isDisposed()) {
                aVar.f8566a.onError(th);
            }
        }
    }

    public final void onComplete() {
        for (a aVar : (a[]) this.d.getAndSet(f8565b)) {
            if (!aVar.isDisposed()) {
                aVar.f8566a.onComplete();
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
                        aVarArr2 = f8564a;
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
