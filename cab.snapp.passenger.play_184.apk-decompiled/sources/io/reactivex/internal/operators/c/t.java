package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.e.b;
import io.reactivex.internal.b.d;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;
import java.util.concurrent.Callable;

public final class t<T, U> extends ai<U> implements d<U> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7612a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends U> f7613b;
    final b<? super U, ? super T> c;

    static final class a<T, U> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super U> f7614a;

        /* renamed from: b  reason: collision with root package name */
        final b<? super U, ? super T> f7615b;
        final U c;
        c d;
        boolean e;

        a(al<? super U> alVar, U u, b<? super U, ? super T> bVar) {
            this.f7614a = alVar;
            this.f7615b = bVar;
            this.c = u;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.d, cVar)) {
                this.d = cVar;
                this.f7614a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.d.dispose();
        }

        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        public final void onNext(T t) {
            if (!this.e) {
                try {
                    this.f7615b.accept(this.c, t);
                } catch (Throwable th) {
                    this.d.dispose();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.e) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.e = true;
            this.f7614a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                this.f7614a.onSuccess(this.c);
            }
        }
    }

    public t(ae<T> aeVar, Callable<? extends U> callable, b<? super U, ? super T> bVar) {
        this.f7612a = aeVar;
        this.f7613b = callable;
        this.c = bVar;
    }

    public final void subscribeActual(al<? super U> alVar) {
        try {
            this.f7612a.subscribe(new a(alVar, io.reactivex.internal.a.b.requireNonNull(this.f7613b.call(), "The initialSupplier returned a null value"), this.c));
        } catch (Throwable th) {
            EmptyDisposable.error(th, (al<?>) alVar);
        }
    }

    public final z<U> fuseToObservable() {
        return io.reactivex.g.a.onAssembly(new s(this.f7612a, this.f7613b, this.c));
    }
}
