package io.reactivex.k;

import io.reactivex.b.c;
import io.reactivex.internal.b.g;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.h;
import io.reactivex.o;
import io.reactivex.observers.BaseTestConsumer;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class e<T> extends BaseTestConsumer<T, e<T>> implements c, o<T>, d {
    private final org.b.c<? super T> k;
    private volatile boolean l;
    private final AtomicReference<d> m;
    private final AtomicLong n;
    private g<T> o;

    enum a implements o<Object> {
        ;

        public final void onComplete() {
        }

        public final void onError(Throwable th) {
        }

        public final void onNext(Object obj) {
        }

        public final void onSubscribe(d dVar) {
        }

        private a(String str) {
        }
    }

    public static <T> e<T> create() {
        return new e<>();
    }

    public static <T> e<T> create(long j) {
        return new e<>(j);
    }

    public static <T> e<T> create(org.b.c<? super T> cVar) {
        return new e<>(cVar);
    }

    public e() {
        this(a.INSTANCE, Long.MAX_VALUE);
    }

    public e(long j) {
        this(a.INSTANCE, j);
    }

    public e(org.b.c<? super T> cVar) {
        this(cVar, Long.MAX_VALUE);
    }

    public e(org.b.c<? super T> cVar, long j) {
        if (j >= 0) {
            this.k = cVar;
            this.m = new AtomicReference<>();
            this.n = new AtomicLong(j);
            return;
        }
        throw new IllegalArgumentException("Negative initial request not allowed");
    }

    public final void onSubscribe(d dVar) {
        this.e = Thread.currentThread();
        if (dVar == null) {
            this.c.add(new NullPointerException("onSubscribe received a null Subscription"));
        } else if (!this.m.compareAndSet(null, dVar)) {
            dVar.cancel();
            if (this.m.get() != SubscriptionHelper.CANCELLED) {
                this.c.add(new IllegalStateException("onSubscribe received multiple subscriptions: ".concat(String.valueOf(dVar))));
            }
        } else {
            if (this.g != 0 && (dVar instanceof g)) {
                this.o = (g) dVar;
                int requestFusion = this.o.requestFusion(this.g);
                this.h = requestFusion;
                if (requestFusion == 1) {
                    this.f = true;
                    this.e = Thread.currentThread();
                    while (true) {
                        try {
                            T poll = this.o.poll();
                            if (poll != null) {
                                this.f8669b.add(poll);
                            } else {
                                this.d++;
                                return;
                            }
                        } catch (Throwable th) {
                            this.c.add(th);
                            return;
                        }
                    }
                }
            }
            this.k.onSubscribe(dVar);
            long andSet = this.n.getAndSet(0);
            if (andSet != 0) {
                dVar.request(andSet);
            }
        }
    }

    public final void onNext(T t) {
        if (!this.f) {
            this.f = true;
            if (this.m.get() == null) {
                this.c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.e = Thread.currentThread();
        if (this.h == 2) {
            while (true) {
                try {
                    T poll = this.o.poll();
                    if (poll != null) {
                        this.f8669b.add(poll);
                    } else {
                        return;
                    }
                } catch (Throwable th) {
                    this.c.add(th);
                    this.o.cancel();
                    return;
                }
            }
        } else {
            this.f8669b.add(t);
            if (t == null) {
                this.c.add(new NullPointerException("onNext received a null value"));
            }
            this.k.onNext(t);
        }
    }

    public final void onError(Throwable th) {
        if (!this.f) {
            this.f = true;
            if (this.m.get() == null) {
                this.c.add(new NullPointerException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.e = Thread.currentThread();
            this.c.add(th);
            if (th == null) {
                this.c.add(new IllegalStateException("onError received a null Throwable"));
            }
            this.k.onError(th);
        } finally {
            this.f8668a.countDown();
        }
    }

    public final void onComplete() {
        if (!this.f) {
            this.f = true;
            if (this.m.get() == null) {
                this.c.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.e = Thread.currentThread();
            this.d++;
            this.k.onComplete();
        } finally {
            this.f8668a.countDown();
        }
    }

    public final void request(long j) {
        SubscriptionHelper.deferredRequest(this.m, this.n, j);
    }

    public final void cancel() {
        if (!this.l) {
            this.l = true;
            SubscriptionHelper.cancel(this.m);
        }
    }

    public final boolean isCancelled() {
        return this.l;
    }

    public final void dispose() {
        cancel();
    }

    public final boolean isDisposed() {
        return this.l;
    }

    public final boolean hasSubscription() {
        return this.m.get() != null;
    }

    public final e<T> assertSubscribed() {
        if (this.m.get() != null) {
            return this;
        }
        throw a("Not subscribed!");
    }

    public final e<T> assertNotSubscribed() {
        if (this.m.get() != null) {
            throw a("Subscribed!");
        } else if (this.c.isEmpty()) {
            return this;
        } else {
            throw a("Not subscribed but errors found");
        }
    }

    public final e<T> assertOf(io.reactivex.e.g<? super e<T>> gVar) {
        try {
            gVar.accept(this);
            return this;
        } catch (Throwable th) {
            throw h.wrapOrThrow(th);
        }
    }

    public final e<T> requestMore(long j) {
        request(j);
        return this;
    }
}
