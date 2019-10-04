package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.d;
import io.reactivex.g;

public final class m extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g f6988a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e.g<? super Throwable> f6989b;

    final class a implements d {

        /* renamed from: b  reason: collision with root package name */
        private final d f6991b;

        a(d dVar) {
            this.f6991b = dVar;
        }

        public final void onComplete() {
            try {
                m.this.f6989b.accept(null);
                this.f6991b.onComplete();
            } catch (Throwable th) {
                b.throwIfFatal(th);
                this.f6991b.onError(th);
            }
        }

        public final void onError(Throwable th) {
            try {
                m.this.f6989b.accept(th);
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                th = new io.reactivex.c.a(th, th2);
            }
            this.f6991b.onError(th);
        }

        public final void onSubscribe(c cVar) {
            this.f6991b.onSubscribe(cVar);
        }
    }

    public m(g gVar, io.reactivex.e.g<? super Throwable> gVar2) {
        this.f6988a = gVar;
        this.f6989b = gVar2;
    }

    public final void subscribeActual(d dVar) {
        this.f6988a.subscribe(new a(dVar));
    }
}
