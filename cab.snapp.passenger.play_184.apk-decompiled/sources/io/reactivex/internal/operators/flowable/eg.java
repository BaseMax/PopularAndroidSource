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

public final class eg<T, U> extends a<T, T> {
    final b<? extends U> c;

    static final class a<T> extends AtomicInteger implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8245a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f8246b = new AtomicLong();
        final AtomicReference<d> c = new AtomicReference<>();
        final io.reactivex.internal.util.b d = new io.reactivex.internal.util.b();
        final a<T>.a e = new C0192a();

        /* renamed from: io.reactivex.internal.operators.flowable.eg$a$a  reason: collision with other inner class name */
        final class C0192a extends AtomicReference<d> implements o<Object> {
            C0192a() {
            }

            public final void onSubscribe(d dVar) {
                SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
            }

            public final void onNext(Object obj) {
                SubscriptionHelper.cancel(this);
                onComplete();
            }

            public final void onError(Throwable th) {
                SubscriptionHelper.cancel(a.this.c);
                c<? super T> cVar = a.this.f8245a;
                a aVar = a.this;
                i.onError((c<?>) cVar, th, (AtomicInteger) aVar, aVar.d);
            }

            public final void onComplete() {
                SubscriptionHelper.cancel(a.this.c);
                c<? super T> cVar = a.this.f8245a;
                a aVar = a.this;
                i.onComplete((c<?>) cVar, (AtomicInteger) aVar, aVar.d);
            }
        }

        a(c<? super T> cVar) {
            this.f8245a = cVar;
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this.c, this.f8246b, dVar);
        }

        public final void onNext(T t) {
            i.onNext(this.f8245a, t, (AtomicInteger) this, this.d);
        }

        public final void onError(Throwable th) {
            SubscriptionHelper.cancel(this.e);
            i.onError((c<?>) this.f8245a, th, (AtomicInteger) this, this.d);
        }

        public final void onComplete() {
            SubscriptionHelper.cancel(this.e);
            i.onComplete((c<?>) this.f8245a, (AtomicInteger) this, this.d);
        }

        public final void request(long j) {
            SubscriptionHelper.deferredRequest(this.c, this.f8246b, j);
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this.c);
            SubscriptionHelper.cancel(this.e);
        }
    }

    public eg(j<T> jVar, b<? extends U> bVar) {
        super(jVar);
        this.c = bVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        a aVar = new a(cVar);
        cVar.onSubscribe(aVar);
        this.c.subscribe(aVar.e);
        this.f7923b.subscribe(aVar);
    }
}
