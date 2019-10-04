package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.c;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;

public final class cm<T> extends q<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7314a;

    /* renamed from: b  reason: collision with root package name */
    final c<T, T, T> f7315b;

    static final class a<T> implements ag<T>, io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f7316a;

        /* renamed from: b  reason: collision with root package name */
        final c<T, T, T> f7317b;
        boolean c;
        T d;
        io.reactivex.b.c e;

        a(t<? super T> tVar, c<T, T, T> cVar) {
            this.f7316a = tVar;
            this.f7317b = cVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.e, cVar)) {
                this.e = cVar;
                this.f7316a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.c) {
                T t2 = this.d;
                if (t2 == null) {
                    this.d = t;
                    return;
                }
                try {
                    this.d = b.requireNonNull(this.f7317b.apply(t2, t), "The reducer returned a null value");
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.e.dispose();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = true;
            this.d = null;
            this.f7316a.onError(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                T t = this.d;
                this.d = null;
                if (t != null) {
                    this.f7316a.onSuccess(t);
                } else {
                    this.f7316a.onComplete();
                }
            }
        }

        public final void dispose() {
            this.e.dispose();
        }

        public final boolean isDisposed() {
            return this.e.isDisposed();
        }
    }

    public cm(ae<T> aeVar, c<T, T, T> cVar) {
        this.f7314a = aeVar;
        this.f7315b = cVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f7314a.subscribe(new a(tVar, this.f7315b));
    }
}
