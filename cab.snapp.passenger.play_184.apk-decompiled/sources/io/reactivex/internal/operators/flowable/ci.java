package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.internal.b.g;
import io.reactivex.internal.b.j;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;
import org.b.d;

public final class ci<T> extends a<T, T> {
    final ah c;
    final boolean d;
    final int e;

    static abstract class a<T> extends io.reactivex.internal.subscriptions.a<T> implements o<T>, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final ah.c f8090a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f8091b;
        final int c;
        final int d;
        final AtomicLong e = new AtomicLong();
        d f;
        j<T> g;
        volatile boolean h;
        volatile boolean i;
        Throwable j;
        int k;
        long l;
        boolean m;

        /* access modifiers changed from: package-private */
        public abstract void a();

        /* access modifiers changed from: package-private */
        public abstract void b();

        /* access modifiers changed from: package-private */
        public abstract void c();

        a(ah.c cVar, boolean z, int i2) {
            this.f8090a = cVar;
            this.f8091b = z;
            this.c = i2;
            this.d = i2 - (i2 >> 2);
        }

        public final void onNext(T t) {
            if (!this.i) {
                if (this.k == 2) {
                    d();
                    return;
                }
                if (!this.g.offer(t)) {
                    this.f.cancel();
                    this.j = new io.reactivex.c.c("Queue is full?!");
                    this.i = true;
                }
                d();
            }
        }

        public final void onError(Throwable th) {
            if (this.i) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.j = th;
            this.i = true;
            d();
        }

        public final void onComplete() {
            if (!this.i) {
                this.i = true;
                d();
            }
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.e, j2);
                d();
            }
        }

        public final void cancel() {
            if (!this.h) {
                this.h = true;
                this.f.cancel();
                this.f8090a.dispose();
                if (getAndIncrement() == 0) {
                    this.g.clear();
                }
            }
        }

        private void d() {
            if (getAndIncrement() == 0) {
                this.f8090a.schedule(this);
            }
        }

        public final void run() {
            if (this.m) {
                a();
            } else if (this.k == 1) {
                b();
            } else {
                c();
            }
        }

        /* access modifiers changed from: package-private */
        public final boolean a(boolean z, boolean z2, org.b.c<?> cVar) {
            if (this.h) {
                clear();
                return true;
            }
            if (z) {
                if (!this.f8091b) {
                    Throwable th = this.j;
                    if (th != null) {
                        this.h = true;
                        clear();
                        cVar.onError(th);
                        this.f8090a.dispose();
                        return true;
                    } else if (z2) {
                        this.h = true;
                        cVar.onComplete();
                        this.f8090a.dispose();
                        return true;
                    }
                } else if (z2) {
                    this.h = true;
                    Throwable th2 = this.j;
                    if (th2 != null) {
                        cVar.onError(th2);
                    } else {
                        cVar.onComplete();
                    }
                    this.f8090a.dispose();
                    return true;
                }
            }
            return false;
        }

        public final int requestFusion(int i2) {
            if ((i2 & 2) == 0) {
                return 0;
            }
            this.m = true;
            return 2;
        }

        public final void clear() {
            this.g.clear();
        }

        public final boolean isEmpty() {
            return this.g.isEmpty();
        }
    }

    static final class b<T> extends a<T> {
        final io.reactivex.internal.b.a<? super T> n;
        long o;

        b(io.reactivex.internal.b.a<? super T> aVar, ah.c cVar, boolean z, int i) {
            super(cVar, z, i);
            this.n = aVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f, dVar)) {
                this.f = dVar;
                if (dVar instanceof g) {
                    g gVar = (g) dVar;
                    int requestFusion = gVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.k = 1;
                        this.g = gVar;
                        this.i = true;
                        this.n.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.k = 2;
                        this.g = gVar;
                        this.n.onSubscribe(this);
                        dVar.request((long) this.c);
                        return;
                    }
                }
                this.g = new io.reactivex.internal.d.b(this.c);
                this.n.onSubscribe(this);
                dVar.request((long) this.c);
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            io.reactivex.internal.b.a<? super T> aVar = this.n;
            j jVar = this.g;
            long j = this.l;
            int i = 1;
            while (true) {
                long j2 = this.e.get();
                while (j != j2) {
                    try {
                        Object poll = jVar.poll();
                        if (!this.h) {
                            if (poll == null) {
                                this.h = true;
                                aVar.onComplete();
                                this.f8090a.dispose();
                                return;
                            } else if (aVar.tryOnNext(poll)) {
                                j++;
                            }
                        } else {
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        this.h = true;
                        this.f.cancel();
                        aVar.onError(th);
                        this.f8090a.dispose();
                        return;
                    }
                }
                if (!this.h) {
                    if (jVar.isEmpty()) {
                        this.h = true;
                        aVar.onComplete();
                        this.f8090a.dispose();
                        return;
                    }
                    int i2 = get();
                    if (i == i2) {
                        this.l = j;
                        i = addAndGet(-i);
                        if (i == 0) {
                            return;
                        }
                    } else {
                        i = i2;
                    }
                } else {
                    return;
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            io.reactivex.internal.b.a<? super T> aVar = this.n;
            j jVar = this.g;
            long j = this.l;
            long j2 = this.o;
            int i = 1;
            while (true) {
                long j3 = this.e.get();
                while (j != j3) {
                    boolean z = this.i;
                    try {
                        Object poll = jVar.poll();
                        boolean z2 = poll == null;
                        if (!a(z, z2, aVar)) {
                            if (z2) {
                                break;
                            }
                            if (aVar.tryOnNext(poll)) {
                                j++;
                            }
                            j2++;
                            if (j2 == ((long) this.d)) {
                                this.f.request(j2);
                                j2 = 0;
                            }
                        } else {
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        this.h = true;
                        this.f.cancel();
                        jVar.clear();
                        aVar.onError(th);
                        this.f8090a.dispose();
                        return;
                    }
                }
                if (j != j3 || !a(this.i, jVar.isEmpty(), aVar)) {
                    int i2 = get();
                    if (i == i2) {
                        this.l = j;
                        this.o = j2;
                        i = addAndGet(-i);
                        if (i == 0) {
                            return;
                        }
                    } else {
                        i = i2;
                    }
                } else {
                    return;
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            int i = 1;
            while (!this.h) {
                boolean z = this.i;
                this.n.onNext(null);
                if (z) {
                    this.h = true;
                    Throwable th = this.j;
                    if (th != null) {
                        this.n.onError(th);
                    } else {
                        this.n.onComplete();
                    }
                    this.f8090a.dispose();
                    return;
                }
                i = addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
        }

        public final T poll() throws Exception {
            T poll = this.g.poll();
            if (!(poll == null || this.k == 1)) {
                long j = this.o + 1;
                if (j == ((long) this.d)) {
                    this.o = 0;
                    this.f.request(j);
                } else {
                    this.o = j;
                }
            }
            return poll;
        }
    }

    static final class c<T> extends a<T> implements o<T> {
        final org.b.c<? super T> n;

        c(org.b.c<? super T> cVar, ah.c cVar2, boolean z, int i) {
            super(cVar2, z, i);
            this.n = cVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f, dVar)) {
                this.f = dVar;
                if (dVar instanceof g) {
                    g gVar = (g) dVar;
                    int requestFusion = gVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.k = 1;
                        this.g = gVar;
                        this.i = true;
                        this.n.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.k = 2;
                        this.g = gVar;
                        this.n.onSubscribe(this);
                        dVar.request((long) this.c);
                        return;
                    }
                }
                this.g = new io.reactivex.internal.d.b(this.c);
                this.n.onSubscribe(this);
                dVar.request((long) this.c);
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            org.b.c<? super T> cVar = this.n;
            j jVar = this.g;
            long j = this.l;
            int i = 1;
            while (true) {
                long j2 = this.e.get();
                while (j != j2) {
                    try {
                        Object poll = jVar.poll();
                        if (!this.h) {
                            if (poll == null) {
                                this.h = true;
                                cVar.onComplete();
                                this.f8090a.dispose();
                                return;
                            }
                            cVar.onNext(poll);
                            j++;
                        } else {
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        this.h = true;
                        this.f.cancel();
                        cVar.onError(th);
                        this.f8090a.dispose();
                        return;
                    }
                }
                if (!this.h) {
                    if (jVar.isEmpty()) {
                        this.h = true;
                        cVar.onComplete();
                        this.f8090a.dispose();
                        return;
                    }
                    int i2 = get();
                    if (i == i2) {
                        this.l = j;
                        i = addAndGet(-i);
                        if (i == 0) {
                            return;
                        }
                    } else {
                        i = i2;
                    }
                } else {
                    return;
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            org.b.c<? super T> cVar = this.n;
            j jVar = this.g;
            long j = this.l;
            int i = 1;
            while (true) {
                long j2 = this.e.get();
                while (j != j2) {
                    boolean z = this.i;
                    try {
                        Object poll = jVar.poll();
                        boolean z2 = poll == null;
                        if (!a(z, z2, cVar)) {
                            if (z2) {
                                break;
                            }
                            cVar.onNext(poll);
                            j++;
                            if (j == ((long) this.d)) {
                                if (j2 != Long.MAX_VALUE) {
                                    j2 = this.e.addAndGet(-j);
                                }
                                this.f.request(j);
                                j = 0;
                            }
                        } else {
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        this.h = true;
                        this.f.cancel();
                        jVar.clear();
                        cVar.onError(th);
                        this.f8090a.dispose();
                        return;
                    }
                }
                if (j != j2 || !a(this.i, jVar.isEmpty(), cVar)) {
                    int i2 = get();
                    if (i == i2) {
                        this.l = j;
                        i = addAndGet(-i);
                        if (i == 0) {
                            return;
                        }
                    } else {
                        i = i2;
                    }
                } else {
                    return;
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            int i = 1;
            while (!this.h) {
                boolean z = this.i;
                this.n.onNext(null);
                if (z) {
                    this.h = true;
                    Throwable th = this.j;
                    if (th != null) {
                        this.n.onError(th);
                    } else {
                        this.n.onComplete();
                    }
                    this.f8090a.dispose();
                    return;
                }
                i = addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
        }

        public final T poll() throws Exception {
            T poll = this.g.poll();
            if (!(poll == null || this.k == 1)) {
                long j = this.l + 1;
                if (j == ((long) this.d)) {
                    this.l = 0;
                    this.f.request(j);
                } else {
                    this.l = j;
                }
            }
            return poll;
        }
    }

    public ci(io.reactivex.j<T> jVar, ah ahVar, boolean z, int i) {
        super(jVar);
        this.c = ahVar;
        this.d = z;
        this.e = i;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        ah.c createWorker = this.c.createWorker();
        if (cVar instanceof io.reactivex.internal.b.a) {
            this.f7923b.subscribe(new b((io.reactivex.internal.b.a) cVar, createWorker, this.d, this.e));
        } else {
            this.f7923b.subscribe(new c(cVar, createWorker, this.d, this.e));
        }
    }
}
