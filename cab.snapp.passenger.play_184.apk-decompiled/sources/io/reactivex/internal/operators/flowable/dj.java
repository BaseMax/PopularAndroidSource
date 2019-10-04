package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.f;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class dj<T> extends a<T, T> {
    final long c;
    final TimeUnit d;
    final ah e;
    final boolean f;

    static final class a<T> extends c<T> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicInteger f8186a = new AtomicInteger(1);

        a(org.b.c<? super T> cVar, long j, TimeUnit timeUnit, ah ahVar) {
            super(cVar, j, timeUnit, ahVar);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            b();
            if (this.f8186a.decrementAndGet() == 0) {
                this.f8187b.onComplete();
            }
        }

        public final void run() {
            if (this.f8186a.incrementAndGet() == 2) {
                b();
                if (this.f8186a.decrementAndGet() == 0) {
                    this.f8187b.onComplete();
                }
            }
        }
    }

    static final class b<T> extends c<T> {
        b(org.b.c<? super T> cVar, long j, TimeUnit timeUnit, ah ahVar) {
            super(cVar, j, timeUnit, ahVar);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.f8187b.onComplete();
        }

        public final void run() {
            b();
        }
    }

    static abstract class c<T> extends AtomicReference<T> implements o<T>, Runnable, d {

        /* renamed from: b  reason: collision with root package name */
        final org.b.c<? super T> f8187b;
        final long c;
        final TimeUnit d;
        final ah e;
        final AtomicLong f = new AtomicLong();
        final f g = new f();
        d h;

        /* access modifiers changed from: package-private */
        public abstract void a();

        c(org.b.c<? super T> cVar, long j, TimeUnit timeUnit, ah ahVar) {
            this.f8187b = cVar;
            this.c = j;
            this.d = timeUnit;
            this.e = ahVar;
        }

        public void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.h, dVar)) {
                this.h = dVar;
                this.f8187b.onSubscribe(this);
                f fVar = this.g;
                ah ahVar = this.e;
                long j = this.c;
                fVar.replace(ahVar.schedulePeriodicallyDirect(this, j, j, this.d));
                dVar.request(Long.MAX_VALUE);
            }
        }

        public void onNext(T t) {
            lazySet(t);
        }

        public void onError(Throwable th) {
            c();
            this.f8187b.onError(th);
        }

        public void onComplete() {
            c();
            a();
        }

        private void c() {
            DisposableHelper.dispose(this.g);
        }

        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this.f, j);
            }
        }

        public void cancel() {
            c();
            this.h.cancel();
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            Object andSet = getAndSet(null);
            if (andSet != null) {
                if (this.f.get() != 0) {
                    this.f8187b.onNext(andSet);
                    io.reactivex.internal.util.c.produced(this.f, 1);
                    return;
                }
                cancel();
                this.f8187b.onError(new io.reactivex.c.c("Couldn't emit value due to lack of requests!"));
            }
        }
    }

    public dj(j<T> jVar, long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        super(jVar);
        this.c = j;
        this.d = timeUnit;
        this.e = ahVar;
        this.f = z;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        io.reactivex.k.d dVar = new io.reactivex.k.d(cVar);
        if (this.f) {
            j jVar = this.f7923b;
            a aVar = new a(dVar, this.c, this.d, this.e);
            jVar.subscribe(aVar);
            return;
        }
        j jVar2 = this.f7923b;
        b bVar = new b(dVar, this.c, this.d, this.e);
        jVar2.subscribe(bVar);
    }
}
