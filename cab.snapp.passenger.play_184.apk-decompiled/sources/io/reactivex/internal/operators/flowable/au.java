package io.reactivex.internal.operators.flowable;

import io.reactivex.b.c;
import io.reactivex.internal.b.b;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.t;
import org.b.d;

public final class au<T> extends q<T> implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f7985a;

    /* renamed from: b  reason: collision with root package name */
    final long f7986b;

    static final class a<T> implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f7987a;

        /* renamed from: b  reason: collision with root package name */
        final long f7988b;
        d c;
        long d;
        boolean e;

        a(t<? super T> tVar, long j) {
            this.f7987a = tVar;
            this.f7988b = j;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f7987a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.e) {
                long j = this.d;
                if (j == this.f7988b) {
                    this.e = true;
                    this.c.cancel();
                    this.c = SubscriptionHelper.CANCELLED;
                    this.f7987a.onSuccess(t);
                    return;
                }
                this.d = j + 1;
            }
        }

        public final void onError(Throwable th) {
            if (this.e) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.e = true;
            this.c = SubscriptionHelper.CANCELLED;
            this.f7987a.onError(th);
        }

        public final void onComplete() {
            this.c = SubscriptionHelper.CANCELLED;
            if (!this.e) {
                this.e = true;
                this.f7987a.onComplete();
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

    public au(j<T> jVar, long j) {
        this.f7985a = jVar;
        this.f7986b = j;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f7985a.subscribe(new a(tVar, this.f7986b));
    }

    public final j<T> fuseToFlowable() {
        at atVar = new at(this.f7985a, this.f7986b, null, false);
        return io.reactivex.g.a.onAssembly(atVar);
    }
}
