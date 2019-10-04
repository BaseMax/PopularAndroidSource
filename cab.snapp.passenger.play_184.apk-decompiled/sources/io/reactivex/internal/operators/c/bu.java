package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

public final class bu<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7255a;

    /* renamed from: b  reason: collision with root package name */
    final T f7256b;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7257a;

        /* renamed from: b  reason: collision with root package name */
        final T f7258b;
        c c;
        T d;

        a(al<? super T> alVar, T t) {
            this.f7257a = alVar;
            this.f7258b = t;
        }

        public final void dispose() {
            this.c.dispose();
            this.c = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.c == DisposableHelper.DISPOSED;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7257a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.d = t;
        }

        public final void onError(Throwable th) {
            this.c = DisposableHelper.DISPOSED;
            this.d = null;
            this.f7257a.onError(th);
        }

        public final void onComplete() {
            this.c = DisposableHelper.DISPOSED;
            T t = this.d;
            if (t != null) {
                this.d = null;
                this.f7257a.onSuccess(t);
                return;
            }
            T t2 = this.f7258b;
            if (t2 != null) {
                this.f7257a.onSuccess(t2);
            } else {
                this.f7257a.onError(new NoSuchElementException());
            }
        }
    }

    public bu(ae<T> aeVar, T t) {
        this.f7255a = aeVar;
        this.f7256b = t;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7255a.subscribe(new a(alVar, this.f7256b));
    }
}
