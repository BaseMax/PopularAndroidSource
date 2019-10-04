package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.subscriptions.e;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class dd<T> extends a<T, T> {
    final h<? super j<Object>, ? extends org.b.b<?>> c;

    static final class a<T> extends c<T, Object> {
        a(org.b.c<? super T> cVar, io.reactivex.h.a<Object> aVar, d dVar) {
            super(cVar, aVar, dVar);
        }

        public final void onError(Throwable th) {
            this.c.cancel();
            this.f8157a.onError(th);
        }

        public final void onComplete() {
            a(0);
        }
    }

    static final class b<T, U> extends AtomicInteger implements o<Object>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.b<T> f8155a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<d> f8156b = new AtomicReference<>();
        final AtomicLong c = new AtomicLong();
        c<T, U> d;

        b(org.b.b<T> bVar) {
            this.f8155a = bVar;
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this.f8156b, this.c, dVar);
        }

        public final void onNext(Object obj) {
            if (getAndIncrement() == 0) {
                while (this.f8156b.get() != SubscriptionHelper.CANCELLED) {
                    this.f8155a.subscribe(this.d);
                    if (decrementAndGet() == 0) {
                    }
                }
            }
        }

        public final void onError(Throwable th) {
            this.d.cancel();
            this.d.f8157a.onError(th);
        }

        public final void onComplete() {
            this.d.cancel();
            this.d.f8157a.onComplete();
        }

        public final void request(long j) {
            SubscriptionHelper.deferredRequest(this.f8156b, this.c, j);
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this.f8156b);
        }
    }

    static abstract class c<T, U> extends e implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        protected final org.b.c<? super T> f8157a;

        /* renamed from: b  reason: collision with root package name */
        protected final io.reactivex.h.a<U> f8158b;
        protected final d c;
        private long d;

        c(org.b.c<? super T> cVar, io.reactivex.h.a<U> aVar, d dVar) {
            super(false);
            this.f8157a = cVar;
            this.f8158b = aVar;
            this.c = dVar;
        }

        public final void onSubscribe(d dVar) {
            setSubscription(dVar);
        }

        public final void onNext(T t) {
            this.d++;
            this.f8157a.onNext(t);
        }

        /* access modifiers changed from: protected */
        public final void a(U u) {
            setSubscription(EmptySubscription.INSTANCE);
            long j = this.d;
            if (j != 0) {
                this.d = 0;
                produced(j);
            }
            this.c.request(1);
            this.f8158b.onNext(u);
        }

        public final void cancel() {
            super.cancel();
            this.c.cancel();
        }
    }

    public dd(j<T> jVar, h<? super j<Object>, ? extends org.b.b<?>> hVar) {
        super(jVar);
        this.c = hVar;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        io.reactivex.k.d dVar = new io.reactivex.k.d(cVar);
        io.reactivex.h.a serialized = io.reactivex.h.c.create(8).toSerialized();
        try {
            org.b.b bVar = (org.b.b) io.reactivex.internal.a.b.requireNonNull(this.c.apply(serialized), "handler returned a null Publisher");
            b bVar2 = new b(this.f7923b);
            a aVar = new a(dVar, serialized, bVar2);
            bVar2.d = aVar;
            cVar.onSubscribe(aVar);
            bVar.subscribe(bVar2);
            bVar2.onNext(0);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
