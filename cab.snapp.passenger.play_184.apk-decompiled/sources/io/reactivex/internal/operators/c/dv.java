package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.q;
import io.reactivex.internal.disposables.DisposableHelper;

public final class dv<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q<? super T> f7459b;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7460a;

        /* renamed from: b  reason: collision with root package name */
        final q<? super T> f7461b;
        c c;
        boolean d;

        a(ag<? super T> agVar, q<? super T> qVar) {
            this.f7460a = agVar;
            this.f7461b = qVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7460a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void onNext(T t) {
            if (!this.d) {
                try {
                    if (!this.f7461b.test(t)) {
                        this.d = true;
                        this.c.dispose();
                        this.f7460a.onComplete();
                        return;
                    }
                    this.f7460a.onNext(t);
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    this.c.dispose();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            this.f7460a.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.f7460a.onComplete();
            }
        }
    }

    public dv(ae<T> aeVar, q<? super T> qVar) {
        super(aeVar);
        this.f7459b = qVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7459b));
    }
}
