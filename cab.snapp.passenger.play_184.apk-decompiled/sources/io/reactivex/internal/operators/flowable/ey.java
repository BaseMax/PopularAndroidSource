package io.reactivex.internal.operators.flowable;

import io.reactivex.e.c;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class ey<T, U, R> extends a<T, R> {
    final c<? super T, ? super U, ? extends R> c;
    final org.b.b<? extends U> d;

    final class a implements o<U> {

        /* renamed from: b  reason: collision with root package name */
        private final b<T, U, R> f8320b;

        public final void onComplete() {
        }

        a(b<T, U, R> bVar) {
            this.f8320b = bVar;
        }

        public final void onSubscribe(d dVar) {
            if (this.f8320b.setOther(dVar)) {
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(U u) {
            this.f8320b.lazySet(u);
        }

        public final void onError(Throwable th) {
            this.f8320b.otherError(th);
        }
    }

    static final class b<T, U, R> extends AtomicReference<U> implements io.reactivex.internal.b.a<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super R> f8321a;

        /* renamed from: b  reason: collision with root package name */
        final c<? super T, ? super U, ? extends R> f8322b;
        final AtomicReference<d> c = new AtomicReference<>();
        final AtomicLong d = new AtomicLong();
        final AtomicReference<d> e = new AtomicReference<>();

        b(org.b.c<? super R> cVar, c<? super T, ? super U, ? extends R> cVar2) {
            this.f8321a = cVar;
            this.f8322b = cVar2;
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this.c, this.d, dVar);
        }

        public final void onNext(T t) {
            if (!tryOnNext(t)) {
                this.c.get().request(1);
            }
        }

        public final boolean tryOnNext(T t) {
            Object obj = get();
            if (obj != null) {
                try {
                    this.f8321a.onNext(io.reactivex.internal.a.b.requireNonNull(this.f8322b.apply(t, obj), "The combiner returned a null value"));
                    return true;
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    cancel();
                    this.f8321a.onError(th);
                }
            }
            return false;
        }

        public final void onError(Throwable th) {
            SubscriptionHelper.cancel(this.e);
            this.f8321a.onError(th);
        }

        public final void onComplete() {
            SubscriptionHelper.cancel(this.e);
            this.f8321a.onComplete();
        }

        public final void request(long j) {
            SubscriptionHelper.deferredRequest(this.c, this.d, j);
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this.c);
            SubscriptionHelper.cancel(this.e);
        }

        public final boolean setOther(d dVar) {
            return SubscriptionHelper.setOnce(this.e, dVar);
        }

        public final void otherError(Throwable th) {
            SubscriptionHelper.cancel(this.c);
            this.f8321a.onError(th);
        }
    }

    public ey(j<T> jVar, c<? super T, ? super U, ? extends R> cVar, org.b.b<? extends U> bVar) {
        super(jVar);
        this.c = cVar;
        this.d = bVar;
    }

    public final void subscribeActual(org.b.c<? super R> cVar) {
        io.reactivex.k.d dVar = new io.reactivex.k.d(cVar);
        b bVar = new b(dVar, this.c);
        dVar.onSubscribe(bVar);
        this.d.subscribe(new a(bVar));
        this.f7923b.subscribe(bVar);
    }
}
