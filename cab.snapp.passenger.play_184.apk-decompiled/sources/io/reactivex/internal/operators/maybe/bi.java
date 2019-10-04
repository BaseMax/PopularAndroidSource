package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;
import org.b.b;
import org.b.d;

public final class bi<T, U> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final b<U> f8523b;

    static final class a<T, U> extends AtomicReference<c> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8524a;

        /* renamed from: b  reason: collision with root package name */
        final C0203a<U> f8525b = new C0203a<>(this);

        /* renamed from: io.reactivex.internal.operators.maybe.bi$a$a  reason: collision with other inner class name */
        static final class C0203a<U> extends AtomicReference<d> implements o<U> {

            /* renamed from: a  reason: collision with root package name */
            final a<?, U> f8526a;

            C0203a(a<?, U> aVar) {
                this.f8526a = aVar;
            }

            public final void onSubscribe(d dVar) {
                SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
            }

            public final void onNext(Object obj) {
                SubscriptionHelper.cancel(this);
                this.f8526a.a();
            }

            public final void onError(Throwable th) {
                a<?, U> aVar = this.f8526a;
                if (DisposableHelper.dispose(aVar)) {
                    aVar.f8524a.onError(th);
                } else {
                    io.reactivex.g.a.onError(th);
                }
            }

            public final void onComplete() {
                this.f8526a.a();
            }
        }

        a(t<? super T> tVar) {
            this.f8524a = tVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
            SubscriptionHelper.cancel(this.f8525b);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(T t) {
            SubscriptionHelper.cancel(this.f8525b);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f8524a.onSuccess(t);
            }
        }

        public final void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f8525b);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f8524a.onError(th);
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onComplete() {
            SubscriptionHelper.cancel(this.f8525b);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f8524a.onComplete();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (DisposableHelper.dispose(this)) {
                this.f8524a.onComplete();
            }
        }
    }

    public bi(w<T> wVar, b<U> bVar) {
        super(wVar);
        this.f8523b = bVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        a aVar = new a(tVar);
        tVar.onSubscribe(aVar);
        this.f8523b.subscribe(aVar.f8525b);
        this.f8409a.subscribe(aVar);
    }
}
