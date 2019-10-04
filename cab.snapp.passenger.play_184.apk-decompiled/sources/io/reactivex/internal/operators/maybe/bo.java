package io.reactivex.internal.operators.maybe;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.NoSuchElementException;

public final class bo<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f8543a;

    /* renamed from: b  reason: collision with root package name */
    final T f8544b;

    static final class a<T> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f8545a;

        /* renamed from: b  reason: collision with root package name */
        final T f8546b;
        c c;

        a(al<? super T> alVar, T t) {
            this.f8545a = alVar;
            this.f8546b = t;
        }

        public final void dispose() {
            this.c.dispose();
            this.c = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f8545a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.c = DisposableHelper.DISPOSED;
            this.f8545a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.c = DisposableHelper.DISPOSED;
            this.f8545a.onError(th);
        }

        public final void onComplete() {
            this.c = DisposableHelper.DISPOSED;
            T t = this.f8546b;
            if (t != null) {
                this.f8545a.onSuccess(t);
            } else {
                this.f8545a.onError(new NoSuchElementException("The MaybeSource is empty"));
            }
        }
    }

    public bo(w<T> wVar, T t) {
        this.f8543a = wVar;
        this.f8544b = t;
    }

    public final w<T> source() {
        return this.f8543a;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f8543a.subscribe(new a(alVar, this.f8544b));
    }
}
