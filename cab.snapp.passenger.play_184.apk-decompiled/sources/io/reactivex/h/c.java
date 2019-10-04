package io.reactivex.h;

import io.reactivex.internal.a.b;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class c<T> extends a<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.internal.d.c<T> f6719b;
    final AtomicReference<Runnable> c;
    final boolean d;
    volatile boolean e;
    Throwable f;
    final AtomicReference<org.b.c<? super T>> g;
    volatile boolean h;
    final AtomicBoolean i;
    final io.reactivex.internal.subscriptions.a<T> j;
    final AtomicLong k;
    boolean l;

    final class a extends io.reactivex.internal.subscriptions.a<T> {
        a() {
        }

        public final T poll() {
            return c.this.f6719b.poll();
        }

        public final boolean isEmpty() {
            return c.this.f6719b.isEmpty();
        }

        public final void clear() {
            c.this.f6719b.clear();
        }

        public final int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            c.this.l = true;
            return 2;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(c.this.k, j);
                c.this.b();
            }
        }

        public final void cancel() {
            if (!c.this.h) {
                c cVar = c.this;
                cVar.h = true;
                cVar.a();
                if (!c.this.l && c.this.j.getAndIncrement() == 0) {
                    c.this.f6719b.clear();
                    c.this.g.lazySet(null);
                }
            }
        }
    }

    public static <T> c<T> create() {
        return new c<>(bufferSize());
    }

    public static <T> c<T> create(int i2) {
        return new c<>(i2);
    }

    public static <T> c<T> create(boolean z) {
        return new c<>(bufferSize(), null, z);
    }

    public static <T> c<T> create(int i2, Runnable runnable) {
        b.requireNonNull(runnable, "onTerminate");
        return new c<>(i2, runnable);
    }

    public static <T> c<T> create(int i2, Runnable runnable, boolean z) {
        b.requireNonNull(runnable, "onTerminate");
        return new c<>(i2, runnable, z);
    }

    private c(int i2) {
        this(i2, null, true);
    }

    private c(int i2, Runnable runnable) {
        this(i2, runnable, true);
    }

    private c(int i2, Runnable runnable, boolean z) {
        this.f6719b = new io.reactivex.internal.d.c<>(b.verifyPositive(i2, "capacityHint"));
        this.c = new AtomicReference<>(runnable);
        this.d = z;
        this.g = new AtomicReference<>();
        this.i = new AtomicBoolean();
        this.j = new a();
        this.k = new AtomicLong();
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        Runnable andSet = this.c.getAndSet(null);
        if (andSet != null) {
            andSet.run();
        }
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        long j2;
        if (this.j.getAndIncrement() == 0) {
            int i2 = 1;
            org.b.c cVar = this.g.get();
            int i3 = 1;
            while (cVar == null) {
                i3 = this.j.addAndGet(-i3);
                if (i3 != 0) {
                    cVar = this.g.get();
                    i2 = 1;
                } else {
                    return;
                }
            }
            if (this.l) {
                io.reactivex.internal.d.c<T> cVar2 = this.f6719b;
                boolean z = this.d ^ i2;
                while (!this.h) {
                    boolean z2 = this.e;
                    if (!z || !z2 || this.f == null) {
                        cVar.onNext(null);
                        if (z2) {
                            this.g.lazySet(null);
                            Throwable th = this.f;
                            if (th != null) {
                                cVar.onError(th);
                                return;
                            } else {
                                cVar.onComplete();
                                return;
                            }
                        } else {
                            i2 = this.j.addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        }
                    } else {
                        cVar2.clear();
                        this.g.lazySet(null);
                        cVar.onError(this.f);
                        return;
                    }
                }
                cVar2.clear();
                this.g.lazySet(null);
                return;
            }
            io.reactivex.internal.d.c<T> cVar3 = this.f6719b;
            boolean z3 = !this.d;
            int i4 = 1;
            loop2:
            while (true) {
                long j3 = this.k.get();
                long j4 = 0;
                while (true) {
                    if (j3 == j4) {
                        j2 = j4;
                        break;
                    }
                    boolean z4 = this.e;
                    T poll = cVar3.poll();
                    boolean z5 = poll == null;
                    T t = poll;
                    j2 = j4;
                    if (!a(z3, z4, z5, cVar, cVar3)) {
                        if (z5) {
                            break;
                        }
                        cVar.onNext(t);
                        j4 = j2 + 1;
                    } else {
                        break loop2;
                    }
                }
                if (j3 == j2) {
                    if (a(z3, this.e, cVar3.isEmpty(), cVar, cVar3)) {
                        break;
                    }
                }
                if (!(j2 == 0 || j3 == Long.MAX_VALUE)) {
                    this.k.addAndGet(-j2);
                }
                i4 = this.j.addAndGet(-i4);
                if (i4 == 0) {
                    break;
                }
            }
        }
    }

    private boolean a(boolean z, boolean z2, boolean z3, org.b.c<? super T> cVar, io.reactivex.internal.d.c<T> cVar2) {
        if (this.h) {
            cVar2.clear();
            this.g.lazySet(null);
            return true;
        }
        if (z2) {
            if (z && this.f != null) {
                cVar2.clear();
                this.g.lazySet(null);
                cVar.onError(this.f);
                return true;
            } else if (z3) {
                Throwable th = this.f;
                this.g.lazySet(null);
                if (th != null) {
                    cVar.onError(th);
                } else {
                    cVar.onComplete();
                }
                return true;
            }
        }
        return false;
    }

    public final void onSubscribe(d dVar) {
        if (this.e || this.h) {
            dVar.cancel();
        } else {
            dVar.request(Long.MAX_VALUE);
        }
    }

    public final void onNext(T t) {
        b.requireNonNull(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.e && !this.h) {
            this.f6719b.offer(t);
            b();
        }
    }

    public final void onError(Throwable th) {
        b.requireNonNull(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.e || this.h) {
            io.reactivex.g.a.onError(th);
            return;
        }
        this.f = th;
        this.e = true;
        a();
        b();
    }

    public final void onComplete() {
        if (!this.e && !this.h) {
            this.e = true;
            a();
            b();
        }
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        if (this.i.get() || !this.i.compareAndSet(false, true)) {
            EmptySubscription.error(new IllegalStateException("This processor allows only a single Subscriber"), cVar);
            return;
        }
        cVar.onSubscribe(this.j);
        this.g.set(cVar);
        if (this.h) {
            this.g.lazySet(null);
        } else {
            b();
        }
    }

    public final boolean hasSubscribers() {
        return this.g.get() != null;
    }

    public final Throwable getThrowable() {
        if (this.e) {
            return this.f;
        }
        return null;
    }

    public final boolean hasComplete() {
        return this.e && this.f == null;
    }

    public final boolean hasThrowable() {
        return this.e && this.f != null;
    }
}
