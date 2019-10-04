package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class n<T, U> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final org.b.b<U> f8596b;

    static final class a<T> extends AtomicReference<c> implements t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8597a;

        a(t<? super T> tVar) {
            this.f8597a = tVar;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(T t) {
            this.f8597a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.f8597a.onError(th);
        }

        public final void onComplete() {
            this.f8597a.onComplete();
        }
    }

    static final class b<T> implements c, o<Object> {

        /* renamed from: a  reason: collision with root package name */
        final a<T> f8598a;

        /* renamed from: b  reason: collision with root package name */
        w<T> f8599b;
        d c;

        b(t<? super T> tVar, w<T> wVar) {
            this.f8598a = new a<>(tVar);
            this.f8599b = wVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f8598a.f8597a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(Object obj) {
            if (this.c != SubscriptionHelper.CANCELLED) {
                this.c.cancel();
                this.c = SubscriptionHelper.CANCELLED;
                a();
            }
        }

        public final void onError(Throwable th) {
            if (this.c != SubscriptionHelper.CANCELLED) {
                this.c = SubscriptionHelper.CANCELLED;
                this.f8598a.f8597a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (this.c != SubscriptionHelper.CANCELLED) {
                this.c = SubscriptionHelper.CANCELLED;
                a();
            }
        }

        private void a() {
            w<T> wVar = this.f8599b;
            this.f8599b = null;
            wVar.subscribe(this.f8598a);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) this.f8598a.get());
        }

        public final void dispose() {
            this.c.cancel();
            this.c = SubscriptionHelper.CANCELLED;
            DisposableHelper.dispose(this.f8598a);
        }
    }

    public n(w<T> wVar, org.b.b<U> bVar) {
        super(wVar);
        this.f8596b = bVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8596b.subscribe(new b(tVar, this.f8409a));
    }
}
