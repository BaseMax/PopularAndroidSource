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

public final class av<T> extends ai<T> implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f7989a;

    /* renamed from: b  reason: collision with root package name */
    final long f7990b;
    final T c;

    static final class a<T> implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7991a;

        /* renamed from: b  reason: collision with root package name */
        final long f7992b;
        final T c;
        d d;
        long e;
        boolean f;

        a(al<? super T> alVar, long j, T t) {
            this.f7991a = alVar;
            this.f7992b = j;
            this.c = t;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.d, dVar)) {
                this.d = dVar;
                this.f7991a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.f) {
                long j = this.e;
                if (j == this.f7992b) {
                    this.f = true;
                    this.d.cancel();
                    this.d = SubscriptionHelper.CANCELLED;
                    this.f7991a.onSuccess(t);
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
            this.d = SubscriptionHelper.CANCELLED;
            this.f7991a.onError(th);
        }

        public final void onComplete() {
            this.d = SubscriptionHelper.CANCELLED;
            if (!this.f) {
                this.f = true;
                T t = this.c;
                if (t != null) {
                    this.f7991a.onSuccess(t);
                    return;
                }
                this.f7991a.onError(new NoSuchElementException());
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

    public av(j<T> jVar, long j, T t) {
        this.f7989a = jVar;
        this.f7990b = j;
        this.c = t;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7989a.subscribe(new a(alVar, this.f7990b, this.c));
    }

    public final j<T> fuseToFlowable() {
        at atVar = new at(this.f7989a, this.f7990b, this.c, true);
        return io.reactivex.g.a.onAssembly(atVar);
    }
}
