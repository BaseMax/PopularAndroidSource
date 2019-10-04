package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.g;

public final class q<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7864a;

    /* renamed from: b  reason: collision with root package name */
    final g<? super Throwable> f7865b;

    final class a implements al<T> {

        /* renamed from: b  reason: collision with root package name */
        private final al<? super T> f7867b;

        a(al<? super T> alVar) {
            this.f7867b = alVar;
        }

        public final void onSubscribe(c cVar) {
            this.f7867b.onSubscribe(cVar);
        }

        public final void onSuccess(T t) {
            this.f7867b.onSuccess(t);
        }

        public final void onError(Throwable th) {
            try {
                q.this.f7865b.accept(th);
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                th = new io.reactivex.c.a(th, th2);
            }
            this.f7867b.onError(th);
        }
    }

    public q(ao<T> aoVar, g<? super Throwable> gVar) {
        this.f7864a = aoVar;
        this.f7865b = gVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7864a.subscribe(new a(alVar));
    }
}
