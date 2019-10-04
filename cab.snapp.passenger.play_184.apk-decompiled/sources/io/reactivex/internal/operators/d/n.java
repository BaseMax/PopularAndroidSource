package io.reactivex.internal.operators.d;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class n<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f7700b;
    final io.reactivex.e.c<T, T, T> c;

    static final class a<T> extends AtomicReference<d> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final b<T> f7701a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.c<T, T, T> f7702b;
        T c;
        boolean d;

        a(b<T> bVar, io.reactivex.e.c<T, T, T> cVar) {
            this.f7701a = bVar;
            this.f7702b = cVar;
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }

        public final void onNext(T t) {
            if (!this.d) {
                T t2 = this.c;
                if (t2 == null) {
                    this.c = t;
                    return;
                }
                try {
                    this.c = io.reactivex.internal.a.b.requireNonNull(this.f7702b.apply(t2, t), "The reducer returned a null value");
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    ((d) get()).cancel();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            this.f7701a.a(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.f7701a.a(this.c);
            }
        }
    }

    static final class b<T> extends io.reactivex.internal.subscriptions.c<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T>[] f7703a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.c<T, T, T> f7704b;
        final AtomicReference<c<T>> c = new AtomicReference<>();
        final AtomicInteger d = new AtomicInteger();
        final AtomicReference<Throwable> e = new AtomicReference<>();

        b(org.b.c<? super T> cVar, int i, io.reactivex.e.c<T, T, T> cVar2) {
            super(cVar);
            a<T>[] aVarArr = new a[i];
            for (int i2 = 0; i2 < i; i2++) {
                aVarArr[i2] = new a<>(this, cVar2);
            }
            this.f7703a = aVarArr;
            this.f7704b = cVar2;
            this.d.lazySet(i);
        }

        public final void cancel() {
            for (a<T> cancel : this.f7703a) {
                SubscriptionHelper.cancel(cancel);
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(Throwable th) {
            if (this.e.compareAndSet(null, th)) {
                cancel();
                this.h.onError(th);
                return;
            }
            if (th != this.e.get()) {
                io.reactivex.g.a.onError(th);
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(T t) {
            int i;
            if (t != null) {
                while (true) {
                    c cVar = this.c.get();
                    if (cVar == null) {
                        cVar = new c();
                        if (!this.c.compareAndSet(null, cVar)) {
                            continue;
                        }
                    }
                    while (true) {
                        i = cVar.get();
                        if (i < 2) {
                            if (cVar.compareAndSet(i, i + 1)) {
                                break;
                            }
                        } else {
                            i = -1;
                            break;
                        }
                    }
                    if (i >= 0) {
                        if (i == 0) {
                            cVar.f7705a = t;
                        } else {
                            cVar.f7706b = t;
                        }
                        if (cVar.c.incrementAndGet() == 2) {
                            this.c.compareAndSet(cVar, null);
                        } else {
                            cVar = null;
                        }
                        if (cVar == null) {
                            break;
                        }
                        try {
                            t = io.reactivex.internal.a.b.requireNonNull(this.f7704b.apply(cVar.f7705a, cVar.f7706b), "The reducer returned a null value");
                        } catch (Throwable th) {
                            io.reactivex.c.b.throwIfFatal(th);
                            a(th);
                            return;
                        }
                    } else {
                        this.c.compareAndSet(cVar, null);
                    }
                }
            }
            if (this.d.decrementAndGet() == 0) {
                c cVar2 = this.c.get();
                this.c.lazySet(null);
                if (cVar2 != null) {
                    complete(cVar2.f7705a);
                    return;
                }
                this.h.onComplete();
            }
        }
    }

    static final class c<T> extends AtomicInteger {

        /* renamed from: a  reason: collision with root package name */
        T f7705a;

        /* renamed from: b  reason: collision with root package name */
        T f7706b;
        final AtomicInteger c = new AtomicInteger();

        c() {
        }
    }

    public n(io.reactivex.parallel.a<? extends T> aVar, io.reactivex.e.c<T, T, T> cVar) {
        this.f7700b = aVar;
        this.c = cVar;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        b bVar = new b(cVar, this.f7700b.parallelism(), this.c);
        cVar.onSubscribe(bVar);
        this.f7700b.subscribe(bVar.f7703a);
    }
}
