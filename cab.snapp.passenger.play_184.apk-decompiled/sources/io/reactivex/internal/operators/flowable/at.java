package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.subscriptions.c;
import io.reactivex.j;
import io.reactivex.o;
import java.util.NoSuchElementException;
import org.b.d;

public final class at<T> extends a<T, T> {
    final long c;
    final T d;
    final boolean e;

    static final class a<T> extends c<T> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final long f7983a;

        /* renamed from: b  reason: collision with root package name */
        final T f7984b;
        final boolean c;
        d d;
        long e;
        boolean f;

        a(org.b.c<? super T> cVar, long j, T t, boolean z) {
            super(cVar);
            this.f7983a = j;
            this.f7984b = t;
            this.c = z;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.d, dVar)) {
                this.d = dVar;
                this.h.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.f) {
                long j = this.e;
                if (j == this.f7983a) {
                    this.f = true;
                    this.d.cancel();
                    complete(t);
                    return;
                }
                this.e = j + 1;
            }
        }

        public final void onError(Throwable th) {
            if (this.f) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.f = true;
            this.h.onError(th);
        }

        public final void onComplete() {
            if (!this.f) {
                this.f = true;
                T t = this.f7984b;
                if (t != null) {
                    complete(t);
                } else if (this.c) {
                    this.h.onError(new NoSuchElementException());
                } else {
                    this.h.onComplete();
                }
            }
        }

        public final void cancel() {
            super.cancel();
            this.d.cancel();
        }
    }

    public at(j<T> jVar, long j, T t, boolean z) {
        super(jVar);
        this.c = j;
        this.d = t;
        this.e = z;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        j jVar = this.f7923b;
        a aVar = new a(cVar, this.c, this.d, this.e);
        jVar.subscribe(aVar);
    }
}
