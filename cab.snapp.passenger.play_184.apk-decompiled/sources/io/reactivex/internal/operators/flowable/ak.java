package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.b;
import org.b.c;
import org.b.d;

public final class ak<T, U> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final b<? extends T> f7957b;
    final b<U> c;

    static final class a<T> extends AtomicLong implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f7958a;

        /* renamed from: b  reason: collision with root package name */
        final b<? extends T> f7959b;
        final a<T>.a c = new C0181a();
        final AtomicReference<d> d = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.flowable.ak$a$a  reason: collision with other inner class name */
        final class C0181a extends AtomicReference<d> implements o<Object> {
            C0181a() {
            }

            public final void onSubscribe(d dVar) {
                if (SubscriptionHelper.setOnce(this, dVar)) {
                    dVar.request(Long.MAX_VALUE);
                }
            }

            public final void onNext(Object obj) {
                d dVar = (d) get();
                if (dVar != SubscriptionHelper.CANCELLED) {
                    lazySet(SubscriptionHelper.CANCELLED);
                    dVar.cancel();
                    a.this.a();
                }
            }

            public final void onError(Throwable th) {
                if (((d) get()) != SubscriptionHelper.CANCELLED) {
                    a.this.f7958a.onError(th);
                } else {
                    io.reactivex.g.a.onError(th);
                }
            }

            public final void onComplete() {
                if (((d) get()) != SubscriptionHelper.CANCELLED) {
                    a.this.a();
                }
            }
        }

        a(c<? super T> cVar, b<? extends T> bVar) {
            this.f7958a = cVar;
            this.f7959b = bVar;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.f7959b.subscribe(this);
        }

        public final void onNext(T t) {
            this.f7958a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f7958a.onError(th);
        }

        public final void onComplete() {
            this.f7958a.onComplete();
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                SubscriptionHelper.deferredRequest(this.d, this, j);
            }
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this.c);
            SubscriptionHelper.cancel(this.d);
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.deferredSetOnce(this.d, this, dVar);
        }
    }

    public ak(b<? extends T> bVar, b<U> bVar2) {
        this.f7957b = bVar;
        this.c = bVar2;
    }

    public final void subscribeActual(c<? super T> cVar) {
        a aVar = new a(cVar, this.f7957b);
        cVar.onSubscribe(aVar);
        this.c.subscribe(aVar.c);
    }
}
