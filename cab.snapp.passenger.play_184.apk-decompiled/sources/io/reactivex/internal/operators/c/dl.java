package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.q;
import io.reactivex.internal.disposables.DisposableHelper;

public final class dl<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q<? super T> f7425b;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7426a;

        /* renamed from: b  reason: collision with root package name */
        final q<? super T> f7427b;
        c c;
        boolean d;

        a(ag<? super T> agVar, q<? super T> qVar) {
            this.f7426a = agVar;
            this.f7427b = qVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7426a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void onNext(T t) {
            if (this.d) {
                this.f7426a.onNext(t);
                return;
            }
            try {
                if (!this.f7427b.test(t)) {
                    this.d = true;
                    this.f7426a.onNext(t);
                }
            } catch (Throwable th) {
                b.throwIfFatal(th);
                this.c.dispose();
                this.f7426a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f7426a.onError(th);
        }

        public final void onComplete() {
            this.f7426a.onComplete();
        }
    }

    public dl(ae<T> aeVar, q<? super T> qVar) {
        super(aeVar);
        this.f7425b = qVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7425b));
    }
}
