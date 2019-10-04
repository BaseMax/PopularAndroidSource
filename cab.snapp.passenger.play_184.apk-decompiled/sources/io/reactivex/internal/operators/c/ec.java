package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.concurrent.Callable;

public final class ec<T, U extends Collection<? super T>> extends a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f7495b;

    static final class a<T, U extends Collection<? super T>> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super U> f7496a;

        /* renamed from: b  reason: collision with root package name */
        c f7497b;
        U c;

        a(ag<? super U> agVar, U u) {
            this.f7496a = agVar;
            this.c = u;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f7497b, cVar)) {
                this.f7497b = cVar;
                this.f7496a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.f7497b.dispose();
        }

        public final boolean isDisposed() {
            return this.f7497b.isDisposed();
        }

        public final void onNext(T t) {
            this.c.add(t);
        }

        public final void onError(Throwable th) {
            this.c = null;
            this.f7496a.onError(th);
        }

        public final void onComplete() {
            U u = this.c;
            this.c = null;
            this.f7496a.onNext(u);
            this.f7496a.onComplete();
        }
    }

    public ec(ae<T> aeVar, int i) {
        super(aeVar);
        this.f7495b = io.reactivex.internal.a.a.createArrayList(i);
    }

    public ec(ae<T> aeVar, Callable<U> callable) {
        super(aeVar);
        this.f7495b = callable;
    }

    public final void subscribeActual(ag<? super U> agVar) {
        try {
            this.f7091a.subscribe(new a(agVar, (Collection) b.requireNonNull(this.f7495b.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (ag<?>) agVar);
        }
    }
}
