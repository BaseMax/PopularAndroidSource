package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;

public final class df<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7404a;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f7405a;

        /* renamed from: b  reason: collision with root package name */
        c f7406b;
        T c;
        boolean d;

        a(t<? super T> tVar) {
            this.f7405a = tVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f7406b, cVar)) {
                this.f7406b = cVar;
                this.f7405a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.f7406b.dispose();
        }

        public final boolean isDisposed() {
            return this.f7406b.isDisposed();
        }

        public final void onNext(T t) {
            if (!this.d) {
                if (this.c != null) {
                    this.d = true;
                    this.f7406b.dispose();
                    this.f7405a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                    return;
                }
                this.c = t;
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            this.f7405a.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                T t = this.c;
                this.c = null;
                if (t == null) {
                    this.f7405a.onComplete();
                } else {
                    this.f7405a.onSuccess(t);
                }
            }
        }
    }

    public df(ae<T> aeVar) {
        this.f7404a = aeVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f7404a.subscribe(new a(tVar));
    }
}
