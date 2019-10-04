package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.c.b;

public final class u<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7880a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e.a f7881b;

    final class a implements al<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7882a;

        a(al<? super T> alVar) {
            this.f7882a = alVar;
        }

        public final void onSubscribe(c cVar) {
            this.f7882a.onSubscribe(cVar);
        }

        public final void onSuccess(T t) {
            try {
                u.this.f7881b.run();
                this.f7882a.onSuccess(t);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                this.f7882a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            try {
                u.this.f7881b.run();
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                th = new io.reactivex.c.a(th, th2);
            }
            this.f7882a.onError(th);
        }
    }

    public u(ao<T> aoVar, io.reactivex.e.a aVar) {
        this.f7880a = aoVar;
        this.f7881b = aVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7880a.subscribe(new a(alVar));
    }
}
