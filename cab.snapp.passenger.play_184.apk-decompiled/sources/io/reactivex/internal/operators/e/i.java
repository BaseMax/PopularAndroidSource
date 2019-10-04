package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.c.y;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicReference;
import org.b.b;
import org.b.d;

public final class i<T, U> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7833a;

    /* renamed from: b  reason: collision with root package name */
    final b<U> f7834b;

    static final class a<T, U> extends AtomicReference<c> implements c, o<U> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7835a;

        /* renamed from: b  reason: collision with root package name */
        final ao<T> f7836b;
        boolean c;
        d d;

        a(al<? super T> alVar, ao<T> aoVar) {
            this.f7835a = alVar;
            this.f7836b = aoVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.d, dVar)) {
                this.d = dVar;
                this.f7835a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(U u) {
            this.d.cancel();
            onComplete();
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = true;
            this.f7835a.onError(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                this.f7836b.subscribe(new y(this, this.f7835a));
            }
        }

        public final void dispose() {
            this.d.cancel();
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public i(ao<T> aoVar, b<U> bVar) {
        this.f7833a = aoVar;
        this.f7834b = bVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7834b.subscribe(new a(alVar, this.f7833a));
    }
}
