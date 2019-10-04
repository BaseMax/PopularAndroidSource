package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.g;

public final class t<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7876a;

    /* renamed from: b  reason: collision with root package name */
    final g<? super T> f7877b;

    final class a implements al<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7878a;

        a(al<? super T> alVar) {
            this.f7878a = alVar;
        }

        public final void onSubscribe(c cVar) {
            this.f7878a.onSubscribe(cVar);
        }

        public final void onSuccess(T t) {
            try {
                t.this.f7877b.accept(t);
                this.f7878a.onSuccess(t);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                this.f7878a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f7878a.onError(th);
        }
    }

    public t(ao<T> aoVar, g<? super T> gVar) {
        this.f7876a = aoVar;
        this.f7877b = gVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7876a.subscribe(new a(alVar));
    }
}
