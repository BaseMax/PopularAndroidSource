package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class di<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.b.b<T> f8182b;
    final org.b.b<?> c;
    final boolean d;

    static final class a<T> extends c<T> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicInteger f8183a = new AtomicInteger();

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f8184b;

        a(org.b.c<? super T> cVar, org.b.b<?> bVar) {
            super(cVar, bVar);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.f8184b = true;
            if (this.f8183a.getAndIncrement() == 0) {
                c();
                this.c.onComplete();
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            if (this.f8183a.getAndIncrement() == 0) {
                do {
                    boolean z = this.f8184b;
                    c();
                    if (z) {
                        this.c.onComplete();
                        return;
                    }
                } while (this.f8183a.decrementAndGet() != 0);
            }
        }
    }

    static final class b<T> extends c<T> {
        b(org.b.c<? super T> cVar, org.b.b<?> bVar) {
            super(cVar, bVar);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.c.onComplete();
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            c();
        }
    }

    static abstract class c<T> extends AtomicReference<T> implements o<T>, org.b.d {
        final org.b.c<? super T> c;
        final org.b.b<?> d;
        final AtomicLong e = new AtomicLong();
        final AtomicReference<org.b.d> f = new AtomicReference<>();
        org.b.d g;

        /* access modifiers changed from: package-private */
        public abstract void a();

        /* access modifiers changed from: package-private */
        public abstract void b();

        c(org.b.c<? super T> cVar, org.b.b<?> bVar) {
            this.c = cVar;
            this.d = bVar;
        }

        public void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.g, dVar)) {
                this.g = dVar;
                this.c.onSubscribe(this);
                if (this.f.get() == null) {
                    this.d.subscribe(new d(this));
                    dVar.request(Long.MAX_VALUE);
                }
            }
        }

        public void onNext(T t) {
            lazySet(t);
        }

        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f);
            this.c.onError(th);
        }

        public void onComplete() {
            SubscriptionHelper.cancel(this.f);
            a();
        }

        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this.e, j);
            }
        }

        public void cancel() {
            SubscriptionHelper.cancel(this.f);
            this.g.cancel();
        }

        public void error(Throwable th) {
            this.g.cancel();
            this.c.onError(th);
        }

        public void complete() {
            this.g.cancel();
            a();
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            Object andSet = getAndSet(null);
            if (andSet != null) {
                if (this.e.get() != 0) {
                    this.c.onNext(andSet);
                    io.reactivex.internal.util.c.produced(this.e, 1);
                    return;
                }
                cancel();
                this.c.onError(new io.reactivex.c.c("Couldn't emit value due to lack of requests!"));
            }
        }
    }

    static final class d<T> implements o<Object> {

        /* renamed from: a  reason: collision with root package name */
        final c<T> f8185a;

        d(c<T> cVar) {
            this.f8185a = cVar;
        }

        public final void onSubscribe(org.b.d dVar) {
            SubscriptionHelper.setOnce(this.f8185a.f, dVar, Long.MAX_VALUE);
        }

        public final void onNext(Object obj) {
            this.f8185a.b();
        }

        public final void onError(Throwable th) {
            this.f8185a.error(th);
        }

        public final void onComplete() {
            this.f8185a.complete();
        }
    }

    public di(org.b.b<T> bVar, org.b.b<?> bVar2, boolean z) {
        this.f8182b = bVar;
        this.c = bVar2;
        this.d = z;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        io.reactivex.k.d dVar = new io.reactivex.k.d(cVar);
        if (this.d) {
            this.f8182b.subscribe(new a(dVar, this.c));
        } else {
            this.f8182b.subscribe(new b(dVar, this.c));
        }
    }
}
