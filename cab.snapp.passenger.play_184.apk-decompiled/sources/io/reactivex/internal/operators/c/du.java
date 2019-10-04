package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.q;
import io.reactivex.internal.disposables.DisposableHelper;

public final class du<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q<? super T> f7456b;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7457a;

        /* renamed from: b  reason: collision with root package name */
        final q<? super T> f7458b;
        c c;
        boolean d;

        a(ag<? super T> agVar, q<? super T> qVar) {
            this.f7457a = agVar;
            this.f7458b = qVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7457a.onSubscribe(this);
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
                this.f7457a.onNext(t);
                try {
                    if (this.f7458b.test(t)) {
                        this.d = true;
                        this.c.dispose();
                        this.f7457a.onComplete();
                    }
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    this.c.dispose();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (!this.d) {
                this.d = true;
                this.f7457a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.f7457a.onComplete();
            }
        }
    }

    public du(ae<T> aeVar, q<? super T> qVar) {
        super(aeVar);
        this.f7456b = qVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7456b));
    }
}
