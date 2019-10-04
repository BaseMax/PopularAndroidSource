package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.subscriptions.c;
import io.reactivex.j;
import io.reactivex.o;
import java.util.NoSuchElementException;
import org.b.d;

public final class dq<T> extends a<T, T> {
    final T c;
    final boolean d;

    static final class a<T> extends c<T> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final T f8202a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f8203b;
        d c;
        boolean d;

        a(org.b.c<? super T> cVar, T t, boolean z) {
            super(cVar);
            this.f8202a = t;
            this.f8203b = z;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.h.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.d) {
                if (this.i != null) {
                    this.d = true;
                    this.c.cancel();
                    this.h.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                    return;
                }
                this.i = t;
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            this.h.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                T t = this.i;
                this.i = null;
                if (t == null) {
                    t = this.f8202a;
                }
                if (t != null) {
                    complete(t);
                } else if (this.f8203b) {
                    this.h.onError(new NoSuchElementException());
                } else {
                    this.h.onComplete();
                }
            }
        }

        public final void cancel() {
            super.cancel();
            this.c.cancel();
        }
    }

    public dq(j<T> jVar, T t, boolean z) {
        super(jVar);
        this.c = t;
        this.d = z;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c, this.d));
    }
}
