package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.i;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.b;
import org.b.c;
import org.b.d;

public final class dw<T, U> extends a<T, T> {
    final b<U> c;

    static final class a<T> extends AtomicInteger implements io.reactivex.internal.b.a<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8217a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<d> f8218b = new AtomicReference<>();
        final AtomicLong c = new AtomicLong();
        final a<T>.a d = new C0190a();
        final io.reactivex.internal.util.b e = new io.reactivex.internal.util.b();
        volatile boolean f;

        /* renamed from: io.reactivex.internal.operators.flowable.dw$a$a  reason: collision with other inner class name */
        final class C0190a extends AtomicReference<d> implements o<Object> {
            C0190a() {
            }

            public final void onSubscribe(d dVar) {
                SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
            }

            public final void onNext(Object obj) {
                a.this.f = true;
                ((d) get()).cancel();
            }

            public final void onError(Throwable th) {
                SubscriptionHelper.cancel(a.this.f8218b);
                c<? super T> cVar = a.this.f8217a;
                a aVar = a.this;
                i.onError((c<?>) cVar, th, (AtomicInteger) aVar, aVar.e);
            }

            public final void onComplete() {
                a.this.f = true;
            }
        }

        a(c<? super T> cVar) {
            this.f8217a = cVar;
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this.f8218b, this.c, dVar);
        }

        public final void onNext(T t) {
            if (!tryOnNext(t)) {
                this.f8218b.get().request(1);
            }
        }

        public final boolean tryOnNext(T t) {
            if (!this.f) {
                return false;
            }
            i.onNext(this.f8217a, t, (AtomicInteger) this, this.e);
            return true;
        }

        public final void onError(Throwable th) {
            SubscriptionHelper.cancel(this.d);
            i.onError((c<?>) this.f8217a, th, (AtomicInteger) this, this.e);
        }

        public final void onComplete() {
            SubscriptionHelper.cancel(this.d);
            i.onComplete((c<?>) this.f8217a, (AtomicInteger) this, this.e);
        }

        public final void request(long j) {
            SubscriptionHelper.deferredRequest(this.f8218b, this.c, j);
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this.f8218b);
            SubscriptionHelper.cancel(this.d);
        }
    }

    public dw(j<T> jVar, b<U> bVar) {
        super(jVar);
        this.c = bVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        a aVar = new a(cVar);
        cVar.onSubscribe(aVar);
        this.c.subscribe(aVar.d);
        this.f7923b.subscribe(aVar);
    }
}
