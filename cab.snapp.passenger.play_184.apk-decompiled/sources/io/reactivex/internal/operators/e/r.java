package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.e.b;

public final class r<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7868a;

    /* renamed from: b  reason: collision with root package name */
    final b<? super T, ? super Throwable> f7869b;

    final class a implements al<T> {

        /* renamed from: b  reason: collision with root package name */
        private final al<? super T> f7871b;

        a(al<? super T> alVar) {
            this.f7871b = alVar;
        }

        public final void onSubscribe(c cVar) {
            this.f7871b.onSubscribe(cVar);
        }

        public final void onSuccess(T t) {
            try {
                r.this.f7869b.accept(t, null);
                this.f7871b.onSuccess(t);
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f7871b.onError(th);
            }
        }

        public final void onError(Throwable th) {
            try {
                r.this.f7869b.accept(null, th);
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                th = new io.reactivex.c.a(th, th2);
            }
            this.f7871b.onError(th);
        }
    }

    public r(ao<T> aoVar, b<? super T, ? super Throwable> bVar) {
        this.f7868a = aoVar;
        this.f7869b = bVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7868a.subscribe(new a(alVar));
    }
}
