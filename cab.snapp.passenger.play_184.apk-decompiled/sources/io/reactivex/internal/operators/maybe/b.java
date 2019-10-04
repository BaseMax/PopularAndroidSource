package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicBoolean;

public final class b<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    private final w<? extends T>[] f8485a;

    /* renamed from: b  reason: collision with root package name */
    private final Iterable<? extends w<? extends T>> f8486b;

    static final class a<T> implements t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8487a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicBoolean f8488b;
        final io.reactivex.b.b c;
        c d;

        a(t<? super T> tVar, io.reactivex.b.b bVar, AtomicBoolean atomicBoolean) {
            this.f8487a = tVar;
            this.c = bVar;
            this.f8488b = atomicBoolean;
        }

        public final void onSubscribe(c cVar) {
            this.d = cVar;
            this.c.add(cVar);
        }

        public final void onSuccess(T t) {
            if (this.f8488b.compareAndSet(false, true)) {
                this.c.delete(this.d);
                this.c.dispose();
                this.f8487a.onSuccess(t);
            }
        }

        public final void onError(Throwable th) {
            if (this.f8488b.compareAndSet(false, true)) {
                this.c.delete(this.d);
                this.c.dispose();
                this.f8487a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (this.f8488b.compareAndSet(false, true)) {
                this.c.delete(this.d);
                this.c.dispose();
                this.f8487a.onComplete();
            }
        }
    }

    public b(w<? extends T>[] wVarArr, Iterable<? extends w<? extends T>> iterable) {
        this.f8485a = wVarArr;
        this.f8486b = iterable;
    }

    public final void subscribeActual(t<? super T> tVar) {
        int i;
        w<? extends T>[] wVarArr = this.f8485a;
        if (wVarArr == null) {
            wVarArr = new w[8];
            try {
                i = 0;
                for (w<? extends T> wVar : this.f8486b) {
                    if (wVar == null) {
                        EmptyDisposable.error((Throwable) new NullPointerException("One of the sources is null"), (t<?>) tVar);
                        return;
                    }
                    if (i == wVarArr.length) {
                        w<? extends T>[] wVarArr2 = new w[((i >> 2) + i)];
                        System.arraycopy(wVarArr, 0, wVarArr2, 0, i);
                        wVarArr = wVarArr2;
                    }
                    int i2 = i + 1;
                    wVarArr[i] = wVar;
                    i = i2;
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                EmptyDisposable.error(th, (t<?>) tVar);
                return;
            }
        } else {
            i = wVarArr.length;
        }
        io.reactivex.b.b bVar = new io.reactivex.b.b();
        tVar.onSubscribe(bVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        int i3 = 0;
        while (i3 < i) {
            w<? extends T> wVar2 = wVarArr[i3];
            if (!bVar.isDisposed()) {
                if (wVar2 == null) {
                    bVar.dispose();
                    NullPointerException nullPointerException = new NullPointerException("One of the MaybeSources is null");
                    if (atomicBoolean.compareAndSet(false, true)) {
                        tVar.onError(nullPointerException);
                        return;
                    } else {
                        io.reactivex.g.a.onError(nullPointerException);
                        return;
                    }
                } else {
                    wVar2.subscribe(new a(tVar, bVar, atomicBoolean));
                    i3++;
                }
            } else {
                return;
            }
        }
        if (i == 0) {
            tVar.onComplete();
        }
    }
}
