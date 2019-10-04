package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class bk<T, U> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final org.b.b<U> f8532b;
    final w<? extends T> c;

    static final class a<T> extends AtomicReference<io.reactivex.b.c> implements t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8533a;

        a(t<? super T> tVar) {
            this.f8533a = tVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(T t) {
            this.f8533a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.f8533a.onError(th);
        }

        public final void onComplete() {
            this.f8533a.onComplete();
        }
    }

    static final class b<T, U> extends AtomicReference<io.reactivex.b.c> implements io.reactivex.b.c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8534a;

        /* renamed from: b  reason: collision with root package name */
        final c<T, U> f8535b = new c<>(this);
        final w<? extends T> c;
        final a<T> d;

        b(t<? super T> tVar, w<? extends T> wVar) {
            this.f8534a = tVar;
            this.c = wVar;
            this.d = wVar != null ? new a<>(tVar) : null;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
            SubscriptionHelper.cancel(this.f8535b);
            a<T> aVar = this.d;
            if (aVar != null) {
                DisposableHelper.dispose(aVar);
            }
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((io.reactivex.b.c) get());
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(T t) {
            SubscriptionHelper.cancel(this.f8535b);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f8534a.onSuccess(t);
            }
        }

        public final void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f8535b);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f8534a.onError(th);
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onComplete() {
            SubscriptionHelper.cancel(this.f8535b);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f8534a.onComplete();
            }
        }

        public final void otherError(Throwable th) {
            if (DisposableHelper.dispose(this)) {
                this.f8534a.onError(th);
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void otherComplete() {
            if (DisposableHelper.dispose(this)) {
                w<? extends T> wVar = this.c;
                if (wVar == null) {
                    this.f8534a.onError(new TimeoutException());
                    return;
                }
                wVar.subscribe(this.d);
            }
        }
    }

    static final class c<T, U> extends AtomicReference<d> implements o<Object> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, U> f8536a;

        c(b<T, U> bVar) {
            this.f8536a = bVar;
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }

        public final void onNext(Object obj) {
            ((d) get()).cancel();
            this.f8536a.otherComplete();
        }

        public final void onError(Throwable th) {
            this.f8536a.otherError(th);
        }

        public final void onComplete() {
            this.f8536a.otherComplete();
        }
    }

    public bk(w<T> wVar, org.b.b<U> bVar, w<? extends T> wVar2) {
        super(wVar);
        this.f8532b = bVar;
        this.c = wVar2;
    }

    public final void subscribeActual(t<? super T> tVar) {
        b bVar = new b(tVar, this.c);
        tVar.onSubscribe(bVar);
        this.f8532b.subscribe(bVar.f8535b);
        this.f8409a.subscribe(bVar);
    }
}
