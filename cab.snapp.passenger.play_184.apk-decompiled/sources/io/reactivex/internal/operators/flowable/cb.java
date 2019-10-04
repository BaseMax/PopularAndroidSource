package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.f.t;
import io.reactivex.j;
import java.util.concurrent.Callable;
import org.b.c;

public final class cb<T, R> extends a<T, R> {
    final h<? super T, ? extends R> c;
    final h<? super Throwable, ? extends R> d;
    final Callable<? extends R> e;

    static final class a<T, R> extends t<T, R> {

        /* renamed from: a  reason: collision with root package name */
        final h<? super T, ? extends R> f8078a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Throwable, ? extends R> f8079b;
        final Callable<? extends R> c;

        a(c<? super R> cVar, h<? super T, ? extends R> hVar, h<? super Throwable, ? extends R> hVar2, Callable<? extends R> callable) {
            super(cVar);
            this.f8078a = hVar;
            this.f8079b = hVar2;
            this.c = callable;
        }

        public final void onNext(T t) {
            try {
                Object requireNonNull = b.requireNonNull(this.f8078a.apply(t), "The onNext publisher returned is null");
                this.g++;
                this.d.onNext(requireNonNull);
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.d.onError(th);
            }
        }

        public final void onError(Throwable th) {
            try {
                a(b.requireNonNull(this.f8079b.apply(th), "The onError publisher returned is null"));
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                this.d.onError(new io.reactivex.c.a(th, th2));
            }
        }

        public final void onComplete() {
            try {
                a(b.requireNonNull(this.c.call(), "The onComplete publisher returned is null"));
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.d.onError(th);
            }
        }
    }

    public cb(j<T> jVar, h<? super T, ? extends R> hVar, h<? super Throwable, ? extends R> hVar2, Callable<? extends R> callable) {
        super(jVar);
        this.c = hVar;
        this.d = hVar2;
        this.e = callable;
    }

    public final void subscribeActual(c<? super R> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c, this.d, this.e));
    }
}
