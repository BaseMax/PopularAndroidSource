package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import io.reactivex.z;
import org.b.b;
import org.b.d;

public final class bg<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final b<? extends T> f7191a;

    static final class a<T> implements c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7192a;

        /* renamed from: b  reason: collision with root package name */
        d f7193b;

        a(ag<? super T> agVar) {
            this.f7192a = agVar;
        }

        public final void onComplete() {
            this.f7192a.onComplete();
        }

        public final void onError(Throwable th) {
            this.f7192a.onError(th);
        }

        public final void onNext(T t) {
            this.f7192a.onNext(t);
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f7193b, dVar)) {
                this.f7193b = dVar;
                this.f7192a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void dispose() {
            this.f7193b.cancel();
            this.f7193b = SubscriptionHelper.CANCELLED;
        }

        public final boolean isDisposed() {
            return this.f7193b == SubscriptionHelper.CANCELLED;
        }
    }

    public bg(b<? extends T> bVar) {
        this.f7191a = bVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7191a.subscribe(new a(agVar));
    }
}
