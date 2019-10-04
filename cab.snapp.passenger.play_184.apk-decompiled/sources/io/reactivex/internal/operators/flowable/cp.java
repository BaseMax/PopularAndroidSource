package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.f.t;
import io.reactivex.j;
import org.b.c;

public final class cp<T> extends a<T, T> {
    final h<? super Throwable, ? extends T> c;

    static final class a<T> extends t<T, T> {

        /* renamed from: a  reason: collision with root package name */
        final h<? super Throwable, ? extends T> f8105a;

        a(c<? super T> cVar, h<? super Throwable, ? extends T> hVar) {
            super(cVar);
            this.f8105a = hVar;
        }

        public final void onNext(T t) {
            this.g++;
            this.d.onNext(t);
        }

        public final void onError(Throwable th) {
            try {
                a(b.requireNonNull(this.f8105a.apply(th), "The valueSupplier returned a null value"));
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                this.d.onError(new io.reactivex.c.a(th, th2));
            }
        }

        public final void onComplete() {
            this.d.onComplete();
        }
    }

    public cp(j<T> jVar, h<? super Throwable, ? extends T> hVar) {
        super(jVar);
        this.c = hVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
