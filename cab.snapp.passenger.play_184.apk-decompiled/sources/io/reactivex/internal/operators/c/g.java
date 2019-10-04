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

public final class g<T> extends ai<Boolean> implements d<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7564a;

    /* renamed from: b  reason: collision with root package name */
    final q<? super T> f7565b;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super Boolean> f7566a;

        /* renamed from: b  reason: collision with root package name */
        final q<? super T> f7567b;
        c c;
        boolean d;

        a(al<? super Boolean> alVar, q<? super T> qVar) {
            this.f7566a = alVar;
            this.f7567b = qVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7566a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.d) {
                try {
                    if (!this.f7567b.test(t)) {
                        this.d = true;
                        this.c.dispose();
                        this.f7566a.onSuccess(Boolean.FALSE);
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
            this.f7566a.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.f7566a.onSuccess(Boolean.TRUE);
            }
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }
    }

    public g(ae<T> aeVar, q<? super T> qVar) {
        this.f7564a = aeVar;
        this.f7565b = qVar;
    }

    public final void subscribeActual(al<? super Boolean> alVar) {
        this.f7564a.subscribe(new a(alVar, this.f7565b));
    }

    public final z<Boolean> fuseToObservable() {
        return io.reactivex.g.a.onAssembly(new f(this.f7564a, this.f7565b));
    }
}
