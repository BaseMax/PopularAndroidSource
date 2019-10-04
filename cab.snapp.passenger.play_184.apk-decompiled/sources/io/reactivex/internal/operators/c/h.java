package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class h<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<? extends T>[] f7568a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends ae<? extends T>> f7569b;

    static final class a<T> implements c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7570a;

        /* renamed from: b  reason: collision with root package name */
        final b<T>[] f7571b;
        final AtomicInteger c = new AtomicInteger();

        a(ag<? super T> agVar, int i) {
            this.f7570a = agVar;
            this.f7571b = new b[i];
        }

        public final void subscribe(ae<? extends T>[] aeVarArr) {
            b<T>[] bVarArr = this.f7571b;
            int length = bVarArr.length;
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                bVarArr[i] = new b<>(this, i2, this.f7570a);
                i = i2;
            }
            this.c.lazySet(0);
            this.f7570a.onSubscribe(this);
            for (int i3 = 0; i3 < length && this.c.get() == 0; i3++) {
                aeVarArr[i3].subscribe(bVarArr[i3]);
            }
        }

        public final boolean win(int i) {
            int i2 = this.c.get();
            int i3 = 0;
            if (i2 != 0) {
                return i2 == i;
            }
            if (!this.c.compareAndSet(0, i)) {
                return false;
            }
            b<T>[] bVarArr = this.f7571b;
            int length = bVarArr.length;
            while (i3 < length) {
                int i4 = i3 + 1;
                if (i4 != i) {
                    bVarArr[i3].dispose();
                }
                i3 = i4;
            }
            return true;
        }

        public final void dispose() {
            if (this.c.get() != -1) {
                this.c.lazySet(-1);
                for (b<T> dispose : this.f7571b) {
                    dispose.dispose();
                }
            }
        }

        public final boolean isDisposed() {
            return this.c.get() == -1;
        }
    }

    static final class b<T> extends AtomicReference<c> implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T> f7572a;

        /* renamed from: b  reason: collision with root package name */
        final int f7573b;
        final ag<? super T> c;
        boolean d;

        b(a<T> aVar, int i, ag<? super T> agVar) {
            this.f7572a = aVar;
            this.f7573b = i;
            this.c = agVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onNext(T t) {
            if (this.d) {
                this.c.onNext(t);
            } else if (this.f7572a.win(this.f7573b)) {
                this.d = true;
                this.c.onNext(t);
            } else {
                ((c) get()).dispose();
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                this.c.onError(th);
            } else if (this.f7572a.win(this.f7573b)) {
                this.d = true;
                this.c.onError(th);
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onComplete() {
            if (this.d) {
                this.c.onComplete();
                return;
            }
            if (this.f7572a.win(this.f7573b)) {
                this.d = true;
                this.c.onComplete();
            }
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }
    }

    public h(ae<? extends T>[] aeVarArr, Iterable<? extends ae<? extends T>> iterable) {
        this.f7568a = aeVarArr;
        this.f7569b = iterable;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        int i;
        ae<? extends T>[] aeVarArr = this.f7568a;
        if (aeVarArr == null) {
            aeVarArr = new z[8];
            try {
                i = 0;
                for (ae<? extends T> aeVar : this.f7569b) {
                    if (aeVar == null) {
                        EmptyDisposable.error((Throwable) new NullPointerException("One of the sources is null"), (ag<?>) agVar);
                        return;
                    }
                    if (i == aeVarArr.length) {
                        ae<? extends T>[] aeVarArr2 = new ae[((i >> 2) + i)];
                        System.arraycopy(aeVarArr, 0, aeVarArr2, 0, i);
                        aeVarArr = aeVarArr2;
                    }
                    int i2 = i + 1;
                    aeVarArr[i] = aeVar;
                    i = i2;
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                EmptyDisposable.error(th, (ag<?>) agVar);
                return;
            }
        } else {
            i = aeVarArr.length;
        }
        if (i == 0) {
            EmptyDisposable.complete((ag<?>) agVar);
        } else if (i == 1) {
            aeVarArr[0].subscribe(agVar);
        } else {
            new a(agVar, i).subscribe(aeVarArr);
        }
    }
}
