package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.q;
import io.reactivex.internal.disposables.DisposableHelper;

public final class f<T> extends a<T, Boolean> {

    /* renamed from: b  reason: collision with root package name */
    final q<? super T> f7561b;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super Boolean> f7562a;

        /* renamed from: b  reason: collision with root package name */
        final q<? super T> f7563b;
        c c;
        boolean d;

        a(ag<? super Boolean> agVar, q<? super T> qVar) {
            this.f7562a = agVar;
            this.f7563b = qVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7562a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.d) {
                try {
                    if (!this.f7563b.test(t)) {
                        this.d = true;
                        this.c.dispose();
                        this.f7562a.onNext(Boolean.FALSE);
                        this.f7562a.onComplete();
                    }
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
            this.f7562a.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.f7562a.onNext(Boolean.TRUE);
                this.f7562a.onComplete();
            }
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }
    }

    public f(ae<T> aeVar, q<? super T> qVar) {
        super(aeVar);
        this.f7561b = qVar;
    }

    public final void subscribeActual(ag<? super Boolean> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7561b));
    }
}