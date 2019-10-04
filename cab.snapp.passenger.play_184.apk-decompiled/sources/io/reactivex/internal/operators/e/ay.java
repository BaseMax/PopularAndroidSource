package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.operators.e.ak;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ay<T, R> extends ai<R> {

    /* renamed from: a  reason: collision with root package name */
    final ao<? extends T>[] f7796a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super Object[], ? extends R> f7797b;

    final class a implements h<T, R> {
        a() {
        }

        public final R apply(T t) throws Exception {
            return io.reactivex.internal.a.b.requireNonNull(ay.this.f7797b.apply(new Object[]{t}), "The zipper returned a null value");
        }
    }

    static final class b<T, R> extends AtomicInteger implements io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super R> f7799a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Object[], ? extends R> f7800b;
        final c<T>[] c;
        final Object[] d;

        b(al<? super R> alVar, int i, h<? super Object[], ? extends R> hVar) {
            super(i);
            this.f7799a = alVar;
            this.f7800b = hVar;
            c<T>[] cVarArr = new c[i];
            for (int i2 = 0; i2 < i; i2++) {
                cVarArr[i2] = new c<>(this, i2);
            }
            this.c = cVarArr;
            this.d = new Object[i];
        }

        public final boolean isDisposed() {
            return get() <= 0;
        }

        public final void dispose() {
            if (getAndSet(0) > 0) {
                for (c<T> dispose : this.c) {
                    dispose.dispose();
                }
            }
        }

        private void a(int i) {
            c<T>[] cVarArr = this.c;
            int length = cVarArr.length;
            for (int i2 = 0; i2 < i; i2++) {
                cVarArr[i2].dispose();
            }
            while (true) {
                i++;
                if (i < length) {
                    cVarArr[i].dispose();
                } else {
                    return;
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(Throwable th, int i) {
            if (getAndSet(0) > 0) {
                a(i);
                this.f7799a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }
    }

    static final class c<T> extends AtomicReference<io.reactivex.b.c> implements al<T> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, ?> f7801a;

        /* renamed from: b  reason: collision with root package name */
        final int f7802b;

        c(b<T, ?> bVar, int i) {
            this.f7801a = bVar;
            this.f7802b = i;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(T t) {
            b<T, ?> bVar = this.f7801a;
            bVar.d[this.f7802b] = t;
            if (bVar.decrementAndGet() == 0) {
                try {
                    bVar.f7799a.onSuccess(io.reactivex.internal.a.b.requireNonNull(bVar.f7800b.apply(bVar.d), "The zipper returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    bVar.f7799a.onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            this.f7801a.a(th, this.f7802b);
        }
    }

    public ay(ao<? extends T>[] aoVarArr, h<? super Object[], ? extends R> hVar) {
        this.f7796a = aoVarArr;
        this.f7797b = hVar;
    }

    public final void subscribeActual(al<? super R> alVar) {
        ao<? extends T>[] aoVarArr = this.f7796a;
        int length = aoVarArr.length;
        int i = 0;
        if (length == 1) {
            aoVarArr[0].subscribe(new ak.a(alVar, new a()));
            return;
        }
        b bVar = new b(alVar, length, this.f7797b);
        alVar.onSubscribe(bVar);
        while (i < length && !bVar.isDisposed()) {
            ao<? extends T> aoVar = aoVarArr[i];
            if (aoVar == null) {
                bVar.a(new NullPointerException("One of the sources is null"), i);
                return;
            } else {
                aoVar.subscribe(bVar.c[i]);
                i++;
            }
        }
    }
}
