package io.reactivex.internal.operators.maybe;

import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.operators.maybe.av;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class bs<T, R> extends q<R> {

    /* renamed from: a  reason: collision with root package name */
    final w<? extends T>[] f8554a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super Object[], ? extends R> f8555b;

    final class a implements h<T, R> {
        a() {
        }

        public final R apply(T t) throws Exception {
            return io.reactivex.internal.a.b.requireNonNull(bs.this.f8555b.apply(new Object[]{t}), "The zipper returned a null value");
        }
    }

    static final class b<T, R> extends AtomicInteger implements io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final t<? super R> f8557a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Object[], ? extends R> f8558b;
        final c<T>[] c;
        final Object[] d;

        b(t<? super R> tVar, int i, h<? super Object[], ? extends R> hVar) {
            super(i);
            this.f8557a = tVar;
            this.f8558b = hVar;
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

        /* access modifiers changed from: package-private */
        public final void a(int i) {
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
                this.f8557a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }
    }

    static final class c<T> extends AtomicReference<io.reactivex.b.c> implements t<T> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, ?> f8559a;

        /* renamed from: b  reason: collision with root package name */
        final int f8560b;

        c(b<T, ?> bVar, int i) {
            this.f8559a = bVar;
            this.f8560b = i;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(T t) {
            b<T, ?> bVar = this.f8559a;
            bVar.d[this.f8560b] = t;
            if (bVar.decrementAndGet() == 0) {
                try {
                    bVar.f8557a.onSuccess(io.reactivex.internal.a.b.requireNonNull(bVar.f8558b.apply(bVar.d), "The zipper returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    bVar.f8557a.onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            this.f8559a.a(th, this.f8560b);
        }

        public final void onComplete() {
            b<T, ?> bVar = this.f8559a;
            int i = this.f8560b;
            if (bVar.getAndSet(0) > 0) {
                bVar.a(i);
                bVar.f8557a.onComplete();
            }
        }
    }

    public bs(w<? extends T>[] wVarArr, h<? super Object[], ? extends R> hVar) {
        this.f8554a = wVarArr;
        this.f8555b = hVar;
    }

    public final void subscribeActual(t<? super R> tVar) {
        w<? extends T>[] wVarArr = this.f8554a;
        int length = wVarArr.length;
        int i = 0;
        if (length == 1) {
            wVarArr[0].subscribe(new av.a(tVar, new a()));
            return;
        }
        b bVar = new b(tVar, length, this.f8555b);
        tVar.onSubscribe(bVar);
        while (i < length && !bVar.isDisposed()) {
            w<? extends T> wVar = wVarArr[i];
            if (wVar == null) {
                bVar.a(new NullPointerException("One of the sources is null"), i);
                return;
            } else {
                wVar.subscribe(bVar.c[i]);
                i++;
            }
        }
    }
}
