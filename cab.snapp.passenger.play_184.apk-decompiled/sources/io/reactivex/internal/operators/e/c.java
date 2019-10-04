package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.c.b;
import io.reactivex.e.d;

public final class c<T> extends ai<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7810a;

    /* renamed from: b  reason: collision with root package name */
    final Object f7811b;
    final d<Object, Object> c;

    final class a implements al<T> {

        /* renamed from: b  reason: collision with root package name */
        private final al<? super Boolean> f7813b;

        a(al<? super Boolean> alVar) {
            this.f7813b = alVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            this.f7813b.onSubscribe(cVar);
        }

        public final void onSuccess(T t) {
            try {
                this.f7813b.onSuccess(Boolean.valueOf(c.this.c.test(t, c.this.f7811b)));
            } catch (Throwable th) {
                b.throwIfFatal(th);
                this.f7813b.onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f7813b.onError(th);
        }
    }

    public c(ao<T> aoVar, Object obj, d<Object, Object> dVar) {
        this.f7810a = aoVar;
        this.f7811b = obj;
        this.c = dVar;
    }

    public final void subscribeActual(al<? super Boolean> alVar) {
        this.f7810a.subscribe(new a(alVar));
    }
}
