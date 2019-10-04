package io.reactivex.internal.operators.flowable;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.e.c;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import org.b.b;
import org.b.d;

public final class cy<T, R> extends ai<R> {

    /* renamed from: a  reason: collision with root package name */
    final b<T> f8135a;

    /* renamed from: b  reason: collision with root package name */
    final R f8136b;
    final c<R, ? super T, R> c;

    static final class a<T, R> implements io.reactivex.b.c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super R> f8137a;

        /* renamed from: b  reason: collision with root package name */
        final c<R, ? super T, R> f8138b;
        R c;
        d d;

        a(al<? super R> alVar, c<R, ? super T, R> cVar, R r) {
            this.f8137a = alVar;
            this.c = r;
            this.f8138b = cVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.d, dVar)) {
                this.d = dVar;
                this.f8137a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            R r = this.c;
            if (r != null) {
                try {
                    this.c = io.reactivex.internal.a.b.requireNonNull(this.f8138b.apply(r, t), "The reducer returned a null value");
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.d.cancel();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.c != null) {
                this.c = null;
                this.d = SubscriptionHelper.CANCELLED;
                this.f8137a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            R r = this.c;
            if (r != null) {
                this.c = null;
                this.d = SubscriptionHelper.CANCELLED;
                this.f8137a.onSuccess(r);
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

    public cy(b<T> bVar, R r, c<R, ? super T, R> cVar) {
        this.f8135a = bVar;
        this.f8136b = r;
        this.c = cVar;
    }

    public final void subscribeActual(al<? super R> alVar) {
        this.f8135a.subscribe(new a(alVar, this.c, this.f8136b));
    }
}
