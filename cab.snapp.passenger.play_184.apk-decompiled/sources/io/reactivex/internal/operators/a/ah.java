package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.d;
import io.reactivex.e.q;
import io.reactivex.g;

public final class ah extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g f6906a;

    /* renamed from: b  reason: collision with root package name */
    final q<? super Throwable> f6907b;

    final class a implements d {

        /* renamed from: b  reason: collision with root package name */
        private final d f6909b;

        a(d dVar) {
            this.f6909b = dVar;
        }

        public final void onComplete() {
            this.f6909b.onComplete();
        }

        public final void onError(Throwable th) {
            try {
                if (ah.this.f6907b.test(th)) {
                    this.f6909b.onComplete();
                } else {
                    this.f6909b.onError(th);
                }
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                this.f6909b.onError(new io.reactivex.c.a(th, th2));
            }
        }

        public final void onSubscribe(c cVar) {
            this.f6909b.onSubscribe(cVar);
        }
    }

    public ah(g gVar, q<? super Throwable> qVar) {
        this.f6906a = gVar;
        this.f6907b = qVar;
    }

    public final void subscribeActual(d dVar) {
        this.f6906a.subscribe(new a(dVar));
    }
}
