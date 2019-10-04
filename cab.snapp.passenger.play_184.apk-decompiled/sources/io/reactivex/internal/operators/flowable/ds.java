package io.reactivex.internal.operators.flowable;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.b.b;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.NoSuchElementException;
import org.b.d;

public final class ds<T> extends ai<T> implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f8207a;

    /* renamed from: b  reason: collision with root package name */
    final T f8208b;

    static final class a<T> implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f8209a;

        /* renamed from: b  reason: collision with root package name */
        final T f8210b;
        d c;
        boolean d;
        T e;

        a(al<? super T> alVar, T t) {
            this.f8209a = alVar;
            this.f8210b = t;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f8209a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.d) {
                if (this.e != null) {
                    this.d = true;
                    this.c.cancel();
                    this.c = SubscriptionHelper.CANCELLED;
                    this.f8209a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                    return;
                }
                this.e = t;
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            this.c = SubscriptionHelper.CANCELLED;
            this.f8209a.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.c = SubscriptionHelper.CANCELLED;
                T t = this.e;
                this.e = null;
                if (t == null) {
                    t = this.f8210b;
                }
                if (t != null) {
                    this.f8209a.onSuccess(t);
                } else {
                    this.f8209a.onError(new NoSuchElementException());
                }
            }
        }

        public final void dispose() {
            this.c.cancel();
            this.c = SubscriptionHelper.CANCELLED;
        }

        public final boolean isDisposed() {
            return this.c == SubscriptionHelper.CANCELLED;
        }
    }

    public ds(j<T> jVar, T t) {
        this.f8207a = jVar;
        this.f8208b = t;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f8207a.subscribe(new a(alVar, this.f8208b));
    }

    public final j<T> fuseToFlowable() {
        return io.reactivex.g.a.onAssembly(new dq(this.f8207a, this.f8208b, true));
    }
}
