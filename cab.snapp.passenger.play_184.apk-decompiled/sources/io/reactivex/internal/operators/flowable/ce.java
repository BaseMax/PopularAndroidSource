package io.reactivex.internal.operators.flowable;

import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.b;
import io.reactivex.internal.util.i;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class ce<T> extends a<T, T> {
    final g c;

    static final class a<T> extends AtomicInteger implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8081a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<d> f8082b = new AtomicReference<>();
        final C0186a c = new C0186a(this);
        final b d = new b();
        final AtomicLong e = new AtomicLong();
        volatile boolean f;
        volatile boolean g;

        /* renamed from: io.reactivex.internal.operators.flowable.ce$a$a  reason: collision with other inner class name */
        static final class C0186a extends AtomicReference<io.reactivex.b.c> implements io.reactivex.d {

            /* renamed from: a  reason: collision with root package name */
            final a<?> f8083a;

            C0186a(a<?> aVar) {
                this.f8083a = aVar;
            }

            public final void onSubscribe(io.reactivex.b.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onError(Throwable th) {
                a<?> aVar = this.f8083a;
                SubscriptionHelper.cancel(aVar.f8082b);
                i.onError((c<?>) aVar.f8081a, th, (AtomicInteger) aVar, aVar.d);
            }

            public final void onComplete() {
                a<?> aVar = this.f8083a;
                aVar.g = true;
                if (aVar.f) {
                    i.onComplete((c<?>) aVar.f8081a, (AtomicInteger) aVar, aVar.d);
                }
            }
        }

        a(c<? super T> cVar) {
            this.f8081a = cVar;
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this.f8082b, this.e, dVar);
        }

        public final void onNext(T t) {
            i.onNext(this.f8081a, t, (AtomicInteger) this, this.d);
        }

        public final void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f8082b);
            i.onError((c<?>) this.f8081a, th, (AtomicInteger) this, this.d);
        }

        public final void onComplete() {
            this.f = true;
            if (this.g) {
                i.onComplete((c<?>) this.f8081a, (AtomicInteger) this, this.d);
            }
        }

        public final void request(long j) {
            SubscriptionHelper.deferredRequest(this.f8082b, this.e, j);
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this.f8082b);
            DisposableHelper.dispose(this.c);
        }
    }

    public ce(j<T> jVar, g gVar) {
        super(jVar);
        this.c = gVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        a aVar = new a(cVar);
        cVar.onSubscribe(aVar);
        this.f7923b.subscribe(aVar);
        this.c.subscribe(aVar.c);
    }
}
