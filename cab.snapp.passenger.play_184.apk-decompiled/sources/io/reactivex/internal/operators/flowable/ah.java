package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class ah<T> extends a<T, T> {
    final long c;
    final TimeUnit d;
    final io.reactivex.ah e;

    static final class a<T> extends AtomicReference<c> implements c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final T f7945a;

        /* renamed from: b  reason: collision with root package name */
        final long f7946b;
        final b<T> c;
        final AtomicBoolean d = new AtomicBoolean();

        a(T t, long j, b<T> bVar) {
            this.f7945a = t;
            this.f7946b = j;
            this.c = bVar;
        }

        public final void run() {
            a();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (this.d.compareAndSet(false, true)) {
                this.c.a(this.f7946b, this.f7945a, this);
            }
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        public final void setResource(c cVar) {
            DisposableHelper.replace(this, cVar);
        }
    }

    static final class b<T> extends AtomicLong implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f7947a;

        /* renamed from: b  reason: collision with root package name */
        final long f7948b;
        final TimeUnit c;
        final ah.c d;
        d e;
        c f;
        volatile long g;
        boolean h;

        b(org.b.c<? super T> cVar, long j, TimeUnit timeUnit, ah.c cVar2) {
            this.f7947a = cVar;
            this.f7948b = j;
            this.c = timeUnit;
            this.d = cVar2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.e, dVar)) {
                this.e = dVar;
                this.f7947a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.h) {
                long j = this.g + 1;
                this.g = j;
                c cVar = this.f;
                if (cVar != null) {
                    cVar.dispose();
                }
                a aVar = new a(t, j, this);
                this.f = aVar;
                aVar.setResource(this.d.schedule(aVar, this.f7948b, this.c));
            }
        }

        public final void onError(Throwable th) {
            if (this.h) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.h = true;
            c cVar = this.f;
            if (cVar != null) {
                cVar.dispose();
            }
            this.f7947a.onError(th);
            this.d.dispose();
        }

        public final void onComplete() {
            if (!this.h) {
                this.h = true;
                c cVar = this.f;
                if (cVar != null) {
                    cVar.dispose();
                }
                a aVar = (a) cVar;
                if (aVar != null) {
                    aVar.a();
                }
                this.f7947a.onComplete();
                this.d.dispose();
            }
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this, j);
            }
        }

        public final void cancel() {
            this.e.cancel();
            this.d.dispose();
        }

        /* access modifiers changed from: package-private */
        public final void a(long j, T t, a<T> aVar) {
            if (j == this.g) {
                if (get() != 0) {
                    this.f7947a.onNext(t);
                    io.reactivex.internal.util.c.produced(this, 1);
                    aVar.dispose();
                    return;
                }
                cancel();
                this.f7947a.onError(new io.reactivex.c.c("Could not deliver value due to lack of requests"));
            }
        }
    }

    public ah(j<T> jVar, long j, TimeUnit timeUnit, io.reactivex.ah ahVar) {
        super(jVar);
        this.c = j;
        this.d = timeUnit;
        this.e = ahVar;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        j jVar = this.f7923b;
        b bVar = new b(new io.reactivex.k.d(cVar), this.c, this.d, this.e.createWorker());
        jVar.subscribe(bVar);
    }
}
