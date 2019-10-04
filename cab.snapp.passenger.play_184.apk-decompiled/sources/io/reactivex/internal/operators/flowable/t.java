package io.reactivex.internal.operators.flowable;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.b.b;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.Callable;
import org.b.d;

public final class t<T, U> extends ai<U> implements b<U> {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f8385a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends U> f8386b;
    final io.reactivex.e.b<? super U, ? super T> c;

    static final class a<T, U> implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super U> f8387a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.b<? super U, ? super T> f8388b;
        final U c;
        d d;
        boolean e;

        a(al<? super U> alVar, U u, io.reactivex.e.b<? super U, ? super T> bVar) {
            this.f8387a = alVar;
            this.f8388b = bVar;
            this.c = u;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.d, dVar)) {
                this.d = dVar;
                this.f8387a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.e) {
                try {
                    this.f8388b.accept(this.c, t);
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.d.cancel();
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
            this.d = SubscriptionHelper.CANCELLED;
            this.f8387a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                this.d = SubscriptionHelper.CANCELLED;
                this.f8387a.onSuccess(this.c);
            }
        }

        public final void dispose() {
            this.d.cancel();
            this.d = SubscriptionHelper.CANCELLED;
        }

        public final boolean isDisposed() {
            return this.d == SubscriptionHelper.CANCELLED;
        }
    }

    public t(j<T> jVar, Callable<? extends U> callable, io.reactivex.e.b<? super U, ? super T> bVar) {
        this.f8385a = jVar;
        this.f8386b = callable;
        this.c = bVar;
    }

    public final void subscribeActual(al<? super U> alVar) {
        try {
            this.f8385a.subscribe(new a(alVar, io.reactivex.internal.a.b.requireNonNull(this.f8386b.call(), "The initialSupplier returned a null value"), this.c));
        } catch (Throwable th) {
            EmptyDisposable.error(th, (al<?>) alVar);
        }
    }

    public final j<U> fuseToFlowable() {
        return io.reactivex.g.a.onAssembly(new s(this.f8385a, this.f8386b, this.c));
    }
}
