package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.internal.disposables.f;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.h;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class en<T> extends a<T, T> {
    final long c;
    final TimeUnit d;
    final ah e;
    final org.b.b<? extends T> f;

    static final class a<T> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f8264a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.subscriptions.e f8265b;

        a(org.b.c<? super T> cVar, io.reactivex.internal.subscriptions.e eVar) {
            this.f8264a = cVar;
            this.f8265b = eVar;
        }

        public final void onSubscribe(org.b.d dVar) {
            this.f8265b.setSubscription(dVar);
        }

        public final void onNext(T t) {
            this.f8264a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f8264a.onError(th);
        }

        public final void onComplete() {
            this.f8264a.onComplete();
        }
    }

    static final class b<T> extends io.reactivex.internal.subscriptions.e implements d, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f8266a;

        /* renamed from: b  reason: collision with root package name */
        final long f8267b;
        final TimeUnit c;
        final ah.c d;
        final f e = new f();
        final AtomicReference<org.b.d> f = new AtomicReference<>();
        final AtomicLong g = new AtomicLong();
        long h;
        org.b.b<? extends T> i;

        b(org.b.c<? super T> cVar, long j, TimeUnit timeUnit, ah.c cVar2, org.b.b<? extends T> bVar) {
            super(true);
            this.f8266a = cVar;
            this.f8267b = j;
            this.c = timeUnit;
            this.d = cVar2;
            this.i = bVar;
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.setOnce(this.f, dVar)) {
                setSubscription(dVar);
            }
        }

        public final void onNext(T t) {
            long j = this.g.get();
            if (j != Long.MAX_VALUE) {
                long j2 = j + 1;
                if (this.g.compareAndSet(j, j2)) {
                    ((io.reactivex.b.c) this.e.get()).dispose();
                    this.h++;
                    this.f8266a.onNext(t);
                    a(j2);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(long j) {
            this.e.replace(this.d.schedule(new e(j, this), this.f8267b, this.c));
        }

        public final void onError(Throwable th) {
            if (this.g.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.e.dispose();
                this.f8266a.onError(th);
                this.d.dispose();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (this.g.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.e.dispose();
                this.f8266a.onComplete();
                this.d.dispose();
            }
        }

        public final void onTimeout(long j) {
            if (this.g.compareAndSet(j, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f);
                long j2 = this.h;
                if (j2 != 0) {
                    produced(j2);
                }
                org.b.b<? extends T> bVar = this.i;
                this.i = null;
                bVar.subscribe(new a(this.f8266a, this));
                this.d.dispose();
            }
        }

        public final void cancel() {
            super.cancel();
            this.d.dispose();
        }
    }

    static final class c<T> extends AtomicLong implements d, o<T>, org.b.d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f8268a;

        /* renamed from: b  reason: collision with root package name */
        final long f8269b;
        final TimeUnit c;
        final ah.c d;
        final f e = new f();
        final AtomicReference<org.b.d> f = new AtomicReference<>();
        final AtomicLong g = new AtomicLong();

        c(org.b.c<? super T> cVar, long j, TimeUnit timeUnit, ah.c cVar2) {
            this.f8268a = cVar;
            this.f8269b = j;
            this.c = timeUnit;
            this.d = cVar2;
        }

        public final void onSubscribe(org.b.d dVar) {
            SubscriptionHelper.deferredSetOnce(this.f, this.g, dVar);
        }

        public final void onNext(T t) {
            long j = get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (compareAndSet(j, j2)) {
                    ((io.reactivex.b.c) this.e.get()).dispose();
                    this.f8268a.onNext(t);
                    a(j2);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(long j) {
            this.e.replace(this.d.schedule(new e(j, this), this.f8269b, this.c));
        }

        public final void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.e.dispose();
                this.f8268a.onError(th);
                this.d.dispose();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.e.dispose();
                this.f8268a.onComplete();
                this.d.dispose();
            }
        }

        public final void onTimeout(long j) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                SubscriptionHelper.cancel(this.f);
                this.f8268a.onError(new TimeoutException(h.timeoutMessage(this.f8269b, this.c)));
                this.d.dispose();
            }
        }

        public final void request(long j) {
            SubscriptionHelper.deferredRequest(this.f, this.g, j);
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this.f);
            this.d.dispose();
        }
    }

    interface d {
        void onTimeout(long j);
    }

    static final class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final d f8270a;

        /* renamed from: b  reason: collision with root package name */
        final long f8271b;

        e(long j, d dVar) {
            this.f8271b = j;
            this.f8270a = dVar;
        }

        public final void run() {
            this.f8270a.onTimeout(this.f8271b);
        }
    }

    public en(j<T> jVar, long j, TimeUnit timeUnit, ah ahVar, org.b.b<? extends T> bVar) {
        super(jVar);
        this.c = j;
        this.d = timeUnit;
        this.e = ahVar;
        this.f = bVar;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        if (this.f == null) {
            c cVar2 = new c(cVar, this.c, this.d, this.e.createWorker());
            cVar.onSubscribe(cVar2);
            cVar2.a(0);
            this.f7923b.subscribe(cVar2);
            return;
        }
        b bVar = new b(cVar, this.c, this.d, this.e.createWorker(), this.f);
        cVar.onSubscribe(bVar);
        bVar.a(0);
        this.f7923b.subscribe(bVar);
    }
}
