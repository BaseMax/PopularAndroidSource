package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;

public final class ak<T, R> extends ai<R> {

    /* renamed from: a  reason: collision with root package name */
    final ao<? extends T> f7751a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends R> f7752b;

    static final class a<T, R> implements al<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super R> f7753a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends R> f7754b;

        a(al<? super R> alVar, h<? super T, ? extends R> hVar) {
            this.f7753a = alVar;
            this.f7754b = hVar;
        }

        public final void onSubscribe(c cVar) {
            this.f7753a.onSubscribe(cVar);
        }

        public final void onSuccess(T t) {
            try {
                this.f7753a.onSuccess(b.requireNonNull(this.f7754b.apply(t), "The mapper function returned a null value."));
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f7753a.onError(th);
        }
    }

    public ak(ao<? extends T> aoVar, h<? super T, ? extends R> hVar) {
        this.f7751a = aoVar;
        this.f7752b = hVar;
    }

    public final void subscribeActual(al<? super R> alVar) {
        this.f7751a.subscribe(new a(alVar, this.f7752b));
    }
}
