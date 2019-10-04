package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.a.b;
import io.reactivex.internal.b.d;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;
import java.util.Collection;
import java.util.concurrent.Callable;

public final class ed<T, U extends Collection<? super T>> extends ai<U> implements d<U> {

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7498a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f7499b;

    static final class a<T, U extends Collection<? super T>> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super U> f7500a;

        /* renamed from: b  reason: collision with root package name */
        U f7501b;
        c c;

        a(al<? super U> alVar, U u) {
            this.f7500a = alVar;
            this.f7501b = u;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7500a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void onNext(T t) {
            this.f7501b.add(t);
        }

        public final void onError(Throwable th) {
            this.f7501b = null;
            this.f7500a.onError(th);
        }

        public final void onComplete() {
            U u = this.f7501b;
            this.f7501b = null;
            this.f7500a.onSuccess(u);
        }
    }

    public ed(ae<T> aeVar, int i) {
        this.f7498a = aeVar;
        this.f7499b = io.reactivex.internal.a.a.createArrayList(i);
    }

    public ed(ae<T> aeVar, Callable<U> callable) {
        this.f7498a = aeVar;
        this.f7499b = callable;
    }

    public final void subscribeActual(al<? super U> alVar) {
        try {
            this.f7498a.subscribe(new a(alVar, (Collection) b.requireNonNull(this.f7499b.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (al<?>) alVar);
        }
    }

    public final z<U> fuseToObservable() {
        return io.reactivex.g.a.onAssembly(new ec(this.f7498a, this.f7499b));
    }
}
