package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.q;
import io.reactivex.w;

public final class t<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f8617a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e.a f8618b;

    final class a implements io.reactivex.t<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f8619a;

        a(io.reactivex.t<? super T> tVar) {
            this.f8619a = tVar;
        }

        public final void onSubscribe(c cVar) {
            this.f8619a.onSubscribe(cVar);
        }

        public final void onSuccess(T t) {
            try {
                t.this.f8618b.run();
                this.f8619a.onSuccess(t);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                this.f8619a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            try {
                t.this.f8618b.run();
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                th = new io.reactivex.c.a(th, th2);
            }
            this.f8619a.onError(th);
        }

        public final void onComplete() {
            try {
                t.this.f8618b.run();
                this.f8619a.onComplete();
            } catch (Throwable th) {
                b.throwIfFatal(th);
                this.f8619a.onError(th);
            }
        }
    }

    public t(w<T> wVar, io.reactivex.e.a aVar) {
        this.f8617a = wVar;
        this.f8618b = aVar;
    }

    public final void subscribeActual(io.reactivex.t<? super T> tVar) {
        this.f8617a.subscribe(new a(tVar));
    }
}
