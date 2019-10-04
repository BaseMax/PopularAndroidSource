package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.q;
import io.reactivex.internal.b.d;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.z;

public final class j<T> extends ai<Boolean> implements d<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7577a;

    /* renamed from: b  reason: collision with root package name */
    final q<? super T> f7578b;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super Boolean> f7579a;

        /* renamed from: b  reason: collision with root package name */
        final q<? super T> f7580b;
        c c;
        boolean d;

        a(al<? super Boolean> alVar, q<? super T> qVar) {
            this.f7579a = alVar;
            this.f7580b = qVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7579a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.d) {
                try {
                    if (this.f7580b.test(t)) {
                        this.d = true;
                        this.c.dispose();
                        this.f7579a.onSuccess(Boolean.TRUE);
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
            this.f7579a.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.f7579a.onSuccess(Boolean.FALSE);
            }
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }
    }

    public j(ae<T> aeVar, q<? super T> qVar) {
        this.f7577a = aeVar;
        this.f7578b = qVar;
    }

    public final void subscribeActual(al<? super Boolean> alVar) {
        this.f7577a.subscribe(new a(alVar, this.f7578b));
    }

    public final z<Boolean> fuseToObservable() {
        return io.reactivex.g.a.onAssembly(new i(this.f7577a, this.f7578b));
    }
}
