package io.reactivex.internal.operators.flowable;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.e.q;
import io.reactivex.internal.b.b;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import org.b.d;

public final class j<T> extends ai<Boolean> implements b<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f8348a;

    /* renamed from: b  reason: collision with root package name */
    final q<? super T> f8349b;

    static final class a<T> implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super Boolean> f8350a;

        /* renamed from: b  reason: collision with root package name */
        final q<? super T> f8351b;
        d c;
        boolean d;

        a(al<? super Boolean> alVar, q<? super T> qVar) {
            this.f8350a = alVar;
            this.f8351b = qVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f8350a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.d) {
                try {
                    if (this.f8351b.test(t)) {
                        this.d = true;
                        this.c.cancel();
                        this.c = SubscriptionHelper.CANCELLED;
                        this.f8350a.onSuccess(Boolean.TRUE);
                    }
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.c.cancel();
                    this.c = SubscriptionHelper.CANCELLED;
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            this.c = SubscriptionHelper.CANCELLED;
            this.f8350a.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.c = SubscriptionHelper.CANCELLED;
                this.f8350a.onSuccess(Boolean.FALSE);
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

    public j(io.reactivex.j<T> jVar, q<? super T> qVar) {
        this.f8348a = jVar;
        this.f8349b = qVar;
    }

    public final void subscribeActual(al<? super Boolean> alVar) {
        this.f8348a.subscribe(new a(alVar, this.f8349b));
    }

    public final io.reactivex.j<Boolean> fuseToFlowable() {
        return io.reactivex.g.a.onAssembly(new i(this.f8348a, this.f8349b));
    }
}
