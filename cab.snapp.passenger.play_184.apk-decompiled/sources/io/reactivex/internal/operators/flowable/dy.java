package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.b;
import org.b.c;
import org.b.d;

public final class dy<T> extends a<T, T> {
    final ah c;
    final boolean d;

    static final class a<T> extends AtomicReference<Thread> implements o<T>, Runnable, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8222a;

        /* renamed from: b  reason: collision with root package name */
        final ah.c f8223b;
        final AtomicReference<d> c = new AtomicReference<>();
        final AtomicLong d = new AtomicLong();
        final boolean e;
        b<T> f;

        /* renamed from: io.reactivex.internal.operators.flowable.dy$a$a  reason: collision with other inner class name */
        static final class C0191a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final d f8224a;

            /* renamed from: b  reason: collision with root package name */
            final long f8225b;

            C0191a(d dVar, long j) {
                this.f8224a = dVar;
                this.f8225b = j;
            }

            public final void run() {
                this.f8224a.request(this.f8225b);
            }
        }

        a(c<? super T> cVar, ah.c cVar2, b<T> bVar, boolean z) {
            this.f8222a = cVar;
            this.f8223b = cVar2;
            this.f = bVar;
            this.e = !z;
        }

        public final void run() {
            lazySet(Thread.currentThread());
            b<T> bVar = this.f;
            this.f = null;
            bVar.subscribe(this);
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.setOnce(this.c, dVar)) {
                long andSet = this.d.getAndSet(0);
                if (andSet != 0) {
                    a(andSet, dVar);
                }
            }
        }

        public final void onNext(T t) {
            this.f8222a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f8222a.onError(th);
            this.f8223b.dispose();
        }

        public final void onComplete() {
            this.f8222a.onComplete();
            this.f8223b.dispose();
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                d dVar = this.c.get();
                if (dVar != null) {
                    a(j, dVar);
                    return;
                }
                io.reactivex.internal.util.c.add(this.d, j);
                d dVar2 = this.c.get();
                if (dVar2 != null) {
                    long andSet = this.d.getAndSet(0);
                    if (andSet != 0) {
                        a(andSet, dVar2);
                    }
                }
            }
        }

        private void a(long j, d dVar) {
            if (this.e || Thread.currentThread() == get()) {
                dVar.request(j);
            } else {
                this.f8223b.schedule(new C0191a(dVar, j));
            }
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this.c);
            this.f8223b.dispose();
        }
    }

    public dy(j<T> jVar, ah ahVar, boolean z) {
        super(jVar);
        this.c = ahVar;
        this.d = z;
    }

    public final void subscribeActual(c<? super T> cVar) {
        ah.c createWorker = this.c.createWorker();
        a aVar = new a(cVar, createWorker, this.f7923b, this.d);
        cVar.onSubscribe(aVar);
        createWorker.schedule(aVar);
    }
}
