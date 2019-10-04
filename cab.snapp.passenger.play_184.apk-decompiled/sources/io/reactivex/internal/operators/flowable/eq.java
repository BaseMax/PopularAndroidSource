package io.reactivex.internal.operators.flowable;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.b.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ArrayListSupplier;
import io.reactivex.j;
import io.reactivex.o;
import java.util.Collection;
import java.util.concurrent.Callable;
import org.b.d;

public final class eq<T, U extends Collection<? super T>> extends ai<U> implements b<U> {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f8276a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f8277b;

    static final class a<T, U extends Collection<? super T>> implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super U> f8278a;

        /* renamed from: b  reason: collision with root package name */
        d f8279b;
        U c;

        a(al<? super U> alVar, U u) {
            this.f8278a = alVar;
            this.c = u;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f8279b, dVar)) {
                this.f8279b = dVar;
                this.f8278a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            this.c.add(t);
        }

        public final void onError(Throwable th) {
            this.c = null;
            this.f8279b = SubscriptionHelper.CANCELLED;
            this.f8278a.onError(th);
        }

        public final void onComplete() {
            this.f8279b = SubscriptionHelper.CANCELLED;
            this.f8278a.onSuccess(this.c);
        }

        public final void dispose() {
            this.f8279b.cancel();
            this.f8279b = SubscriptionHelper.CANCELLED;
        }

        public final boolean isDisposed() {
            return this.f8279b == SubscriptionHelper.CANCELLED;
        }
    }

    public eq(j<T> jVar) {
        this(jVar, ArrayListSupplier.asCallable());
    }

    public eq(j<T> jVar, Callable<U> callable) {
        this.f8276a = jVar;
        this.f8277b = callable;
    }

    public final void subscribeActual(al<? super U> alVar) {
        try {
            this.f8276a.subscribe(new a(alVar, (Collection) io.reactivex.internal.a.b.requireNonNull(this.f8277b.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptyDisposable.error(th, (al<?>) alVar);
        }
    }

    public final j<U> fuseToFlowable() {
        return io.reactivex.g.a.onAssembly(new ep(this.f8276a, this.f8277b));
    }
}
