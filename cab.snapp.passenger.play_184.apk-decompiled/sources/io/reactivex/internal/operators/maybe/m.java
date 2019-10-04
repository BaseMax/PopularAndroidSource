package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class m<T, U> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final org.b.b<U> f8591b;

    static final class a<T, U> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final b<T> f8592a;

        /* renamed from: b  reason: collision with root package name */
        final org.b.b<U> f8593b;
        c c;

        a(t<? super T> tVar, org.b.b<U> bVar) {
            this.f8592a = new b<>(tVar);
            this.f8593b = bVar;
        }

        public final void dispose() {
            this.c.dispose();
            this.c = DisposableHelper.DISPOSED;
            SubscriptionHelper.cancel(this.f8592a);
        }

        public final boolean isDisposed() {
            return this.f8592a.get() == SubscriptionHelper.CANCELLED;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f8592a.f8594a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.c = DisposableHelper.DISPOSED;
            this.f8592a.f8595b = t;
            a();
        }

        public final void onError(Throwable th) {
            this.c = DisposableHelper.DISPOSED;
            this.f8592a.c = th;
            a();
        }

        public final void onComplete() {
            this.c = DisposableHelper.DISPOSED;
            a();
        }

        private void a() {
            this.f8593b.subscribe(this.f8592a);
        }
    }

    static final class b<T> extends AtomicReference<d> implements o<Object> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8594a;

        /* renamed from: b  reason: collision with root package name */
        T f8595b;
        Throwable c;

        b(t<? super T> tVar) {
            this.f8594a = tVar;
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }

        public final void onNext(Object obj) {
            d dVar = (d) get();
            if (dVar != SubscriptionHelper.CANCELLED) {
                lazySet(SubscriptionHelper.CANCELLED);
                dVar.cancel();
                onComplete();
            }
        }

        public final void onError(Throwable th) {
            Throwable th2 = this.c;
            if (th2 == null) {
                this.f8594a.onError(th);
                return;
            }
            this.f8594a.onError(new io.reactivex.c.a(th2, th));
        }

        public final void onComplete() {
            Throwable th = this.c;
            if (th != null) {
                this.f8594a.onError(th);
                return;
            }
            T t = this.f8595b;
            if (t != null) {
                this.f8594a.onSuccess(t);
            } else {
                this.f8594a.onComplete();
            }
        }
    }

    public m(w<T> wVar, org.b.b<U> bVar) {
        super(wVar);
        this.f8591b = bVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8591b));
    }
}
