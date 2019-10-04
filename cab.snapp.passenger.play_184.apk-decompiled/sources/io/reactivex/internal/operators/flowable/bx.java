package io.reactivex.internal.operators.flowable;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.NoSuchElementException;
import org.b.b;
import org.b.d;

public final class bx<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final b<T> f8067a;

    /* renamed from: b  reason: collision with root package name */
    final T f8068b;

    static final class a<T> implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f8069a;

        /* renamed from: b  reason: collision with root package name */
        final T f8070b;
        d c;
        T d;

        a(al<? super T> alVar, T t) {
            this.f8069a = alVar;
            this.f8070b = t;
        }

        public final void dispose() {
            this.c.cancel();
            this.c = SubscriptionHelper.CANCELLED;
        }

        public final boolean isDisposed() {
            return this.c == SubscriptionHelper.CANCELLED;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f8069a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            this.d = t;
        }

        public final void onError(Throwable th) {
            this.c = SubscriptionHelper.CANCELLED;
            this.d = null;
            this.f8069a.onError(th);
        }

        public final void onComplete() {
            this.c = SubscriptionHelper.CANCELLED;
            T t = this.d;
            if (t != null) {
                this.d = null;
                this.f8069a.onSuccess(t);
                return;
            }
            T t2 = this.f8070b;
            if (t2 != null) {
                this.f8069a.onSuccess(t2);
            } else {
                this.f8069a.onError(new NoSuchElementException());
            }
        }
    }

    public bx(b<T> bVar, T t) {
        this.f8067a = bVar;
        this.f8068b = t;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f8067a.subscribe(new a(alVar, this.f8068b));
    }
}
