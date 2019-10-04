package io.reactivex.j;

import io.reactivex.ag;
import io.reactivex.b.c;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class b<T> extends d<T> {

    /* renamed from: a  reason: collision with root package name */
    static final a[] f8653a = new a[0];

    /* renamed from: b  reason: collision with root package name */
    static final a[] f8654b = new a[0];
    final AtomicReference<a<T>[]> c = new AtomicReference<>(f8654b);
    Throwable d;

    static final class a<T> extends AtomicBoolean implements c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f8655a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f8656b;

        a(ag<? super T> agVar, b<T> bVar) {
            this.f8655a = agVar;
            this.f8656b = bVar;
        }

        public final void onNext(T t) {
            if (!get()) {
                this.f8655a.onNext(t);
            }
        }

        public final void onError(Throwable th) {
            if (get()) {
                io.reactivex.g.a.onError(th);
            } else {
                this.f8655a.onError(th);
            }
        }

        public final void onComplete() {
            if (!get()) {
                this.f8655a.onComplete();
            }
        }

        public final void dispose() {
            if (compareAndSet(false, true)) {
                this.f8656b.a(this);
            }
        }

        public final boolean isDisposed() {
            return get();
        }
    }

    public static <T> b<T> create() {
        return new b<>();
    }

    b() {
    }

    public final void subscribeActual(ag<? super T> agVar) {
        boolean z;
        a aVar = new a(agVar, this);
        agVar.onSubscribe(aVar);
        while (true) {
            a[] aVarArr = (a[]) this.c.get();
            z = false;
            if (aVarArr != f8653a) {
                int length = aVarArr.length;
                a[] aVarArr2 = new a[(length + 1)];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
                if (this.c.compareAndSet(aVarArr, aVarArr2)) {
                    z = true;
                    break;
                }
            } else {
                break;
            }
        }
        if (!z) {
            Throwable th = this.d;
            if (th != null) {
                agVar.onError(th);
                return;
            }
            agVar.onComplete();
        } else if (aVar.isDisposed()) {
            a(aVar);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = (a[]) this.c.get();
            if (aVarArr != f8653a && aVarArr != f8654b) {
                int length = aVarArr.length;
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
                        aVarArr2 = f8654b;
                    } else {
                        a[] aVarArr3 = new a[(length - 1)];
                        System.arraycopy(aVarArr, 0, aVarArr3, 0, i);
                        System.arraycopy(aVarArr, i + 1, aVarArr3, i, (length - i) - 1);
                        aVarArr2 = aVarArr3;
                    }
                } else {
                    return;
                }
            }
        } while (!this.c.compareAndSet(aVarArr, aVarArr2));
    }

    public final void onSubscribe(c cVar) {
        if (this.c.get() == f8653a) {
            cVar.dispose();
        }
    }

    public final void onNext(T t) {
        io.reactivex.internal.a.b.requireNonNull(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (a onNext : (a[]) this.c.get()) {
            onNext.onNext(t);
        }
    }

    public final void onError(Throwable th) {
        io.reactivex.internal.a.b.requireNonNull(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        a<T>[] aVarArr = this.c.get();
        a<T>[] aVarArr2 = f8653a;
        if (aVarArr == aVarArr2) {
            io.reactivex.g.a.onError(th);
            return;
        }
        this.d = th;
        for (a onError : (a[]) this.c.getAndSet(aVarArr2)) {
            onError.onError(th);
        }
    }

    public final void onComplete() {
        a<T>[] aVarArr = this.c.get();
        a<T>[] aVarArr2 = f8653a;
        if (aVarArr != aVarArr2) {
            for (a onComplete : (a[]) this.c.getAndSet(aVarArr2)) {
                onComplete.onComplete();
            }
        }
    }

    public final boolean hasObservers() {
        return ((a[]) this.c.get()).length != 0;
    }

    public final Throwable getThrowable() {
        if (this.c.get() == f8653a) {
            return this.d;
        }
        return null;
    }

    public final boolean hasThrowable() {
        return this.c.get() == f8653a && this.d != null;
    }

    public final boolean hasComplete() {
        return this.c.get() == f8653a && this.d == null;
    }
}
