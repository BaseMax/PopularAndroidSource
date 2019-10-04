package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.f.n;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.o;
import io.reactivex.j;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class q<T, U extends Collection<? super T>> extends a<T, U> {
    final long c;
    final long d;
    final TimeUnit e;
    final ah f;
    final Callable<U> g;
    final int h;
    final boolean i;

    static final class a<T, U extends Collection<? super T>> extends n<T, U, U> implements io.reactivex.b.c, Runnable, d {

        /* renamed from: a  reason: collision with root package name */
        final Callable<U> f8371a;

        /* renamed from: b  reason: collision with root package name */
        final long f8372b;
        final TimeUnit c;
        final int d;
        final boolean e;
        final ah.c f;
        U g;
        io.reactivex.b.c h;
        d i;
        long j;
        long k;

        a(org.b.c<? super U> cVar, Callable<U> callable, long j2, TimeUnit timeUnit, int i2, boolean z, ah.c cVar2) {
            super(cVar, new io.reactivex.internal.d.a());
            this.f8371a = callable;
            this.f8372b = j2;
            this.c = timeUnit;
            this.d = i2;
            this.e = z;
            this.f = cVar2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.i, dVar)) {
                this.i = dVar;
                try {
                    this.g = (Collection) io.reactivex.internal.a.b.requireNonNull(this.f8371a.call(), "The supplied buffer is null");
                    this.n.onSubscribe(this);
                    ah.c cVar = this.f;
                    long j2 = this.f8372b;
                    this.h = cVar.schedulePeriodically(this, j2, j2, this.c);
                    dVar.request(Long.MAX_VALUE);
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.f.dispose();
                    dVar.cancel();
                    EmptySubscription.error(th, this.n);
                }
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:13:0x0021, code lost:
            if (r7.e == false) goto L_0x0028;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0023, code lost:
            r7.h.dispose();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x0028, code lost:
            fastPathOrderedEmitMax(r0, false, r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
            r8 = (java.util.Collection) io.reactivex.internal.a.b.requireNonNull(r7.f8371a.call(), "The supplied buffer is null");
         */
        /* JADX WARNING: Code restructure failed: missing block: B:18:0x003a, code lost:
            monitor-enter(r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:20:?, code lost:
            r7.g = r8;
            r7.k++;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:21:0x0042, code lost:
            monitor-exit(r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:23:0x0045, code lost:
            if (r7.e == false) goto L_0x0055;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x0047, code lost:
            r0 = r7.f;
            r4 = r7.f8372b;
            r7.h = r0.schedulePeriodically(r7, r4, r4, r7.c);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:25:0x0055, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:30:0x0059, code lost:
            r8 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:0x005a, code lost:
            io.reactivex.c.b.throwIfFatal(r8);
            cancel();
            r7.n.onError(r8);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:32:0x0065, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onNext(T r8) {
            /*
                r7 = this;
                monitor-enter(r7)
                U r0 = r7.g     // Catch:{ all -> 0x0066 }
                if (r0 != 0) goto L_0x0007
                monitor-exit(r7)     // Catch:{ all -> 0x0066 }
                return
            L_0x0007:
                r0.add(r8)     // Catch:{ all -> 0x0066 }
                int r8 = r0.size()     // Catch:{ all -> 0x0066 }
                int r1 = r7.d     // Catch:{ all -> 0x0066 }
                if (r8 >= r1) goto L_0x0014
                monitor-exit(r7)     // Catch:{ all -> 0x0066 }
                return
            L_0x0014:
                r8 = 0
                r7.g = r8     // Catch:{ all -> 0x0066 }
                long r1 = r7.j     // Catch:{ all -> 0x0066 }
                r3 = 1
                long r1 = r1 + r3
                r7.j = r1     // Catch:{ all -> 0x0066 }
                monitor-exit(r7)     // Catch:{ all -> 0x0066 }
                boolean r8 = r7.e
                if (r8 == 0) goto L_0x0028
                io.reactivex.b.c r8 = r7.h
                r8.dispose()
            L_0x0028:
                r8 = 0
                r7.fastPathOrderedEmitMax(r0, r8, r7)
                java.util.concurrent.Callable<U> r8 = r7.f8371a     // Catch:{ all -> 0x0059 }
                java.lang.Object r8 = r8.call()     // Catch:{ all -> 0x0059 }
                java.lang.String r0 = "The supplied buffer is null"
                java.lang.Object r8 = io.reactivex.internal.a.b.requireNonNull(r8, (java.lang.String) r0)     // Catch:{ all -> 0x0059 }
                java.util.Collection r8 = (java.util.Collection) r8     // Catch:{ all -> 0x0059 }
                monitor-enter(r7)
                r7.g = r8     // Catch:{ all -> 0x0056 }
                long r0 = r7.k     // Catch:{ all -> 0x0056 }
                long r0 = r0 + r3
                r7.k = r0     // Catch:{ all -> 0x0056 }
                monitor-exit(r7)     // Catch:{ all -> 0x0056 }
                boolean r8 = r7.e
                if (r8 == 0) goto L_0x0055
                io.reactivex.ah$c r0 = r7.f
                long r4 = r7.f8372b
                java.util.concurrent.TimeUnit r6 = r7.c
                r1 = r7
                r2 = r4
                io.reactivex.b.c r8 = r0.schedulePeriodically(r1, r2, r4, r6)
                r7.h = r8
            L_0x0055:
                return
            L_0x0056:
                r8 = move-exception
                monitor-exit(r7)     // Catch:{ all -> 0x0056 }
                throw r8
            L_0x0059:
                r8 = move-exception
                io.reactivex.c.b.throwIfFatal(r8)
                r7.cancel()
                org.b.c r0 = r7.n
                r0.onError(r8)
                return
            L_0x0066:
                r8 = move-exception
                monitor-exit(r7)     // Catch:{ all -> 0x0066 }
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.q.a.onNext(java.lang.Object):void");
        }

        public final void onError(Throwable th) {
            synchronized (this) {
                this.g = null;
            }
            this.n.onError(th);
            this.f.dispose();
        }

        public final void onComplete() {
            U u;
            synchronized (this) {
                u = this.g;
                this.g = null;
            }
            if (u != null) {
                this.queue.offer(u);
                this.o = true;
                if (enter()) {
                    o.drainMaxLoop(this.queue, this.n, false, this, this);
                }
                this.f.dispose();
            }
        }

        public final boolean accept(org.b.c<? super U> cVar, U u) {
            cVar.onNext(u);
            return true;
        }

        public final void request(long j2) {
            requested(j2);
        }

        public final void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                dispose();
            }
        }

        public final void dispose() {
            synchronized (this) {
                this.g = null;
            }
            this.i.cancel();
            this.f.dispose();
        }

        public final boolean isDisposed() {
            return this.f.isDisposed();
        }

        public final void run() {
            try {
                U u = (Collection) io.reactivex.internal.a.b.requireNonNull(this.f8371a.call(), "The supplied buffer is null");
                synchronized (this) {
                    U u2 = this.g;
                    if (u2 != null) {
                        if (this.j == this.k) {
                            this.g = u;
                            fastPathOrderedEmitMax(u2, false, this);
                        }
                    }
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                cancel();
                this.n.onError(th);
            }
        }
    }

    static final class b<T, U extends Collection<? super T>> extends n<T, U, U> implements io.reactivex.b.c, Runnable, d {

        /* renamed from: a  reason: collision with root package name */
        final Callable<U> f8373a;

        /* renamed from: b  reason: collision with root package name */
        final long f8374b;
        final TimeUnit c;
        final ah d;
        d e;
        U f;
        final AtomicReference<io.reactivex.b.c> g = new AtomicReference<>();

        b(org.b.c<? super U> cVar, Callable<U> callable, long j, TimeUnit timeUnit, ah ahVar) {
            super(cVar, new io.reactivex.internal.d.a());
            this.f8373a = callable;
            this.f8374b = j;
            this.c = timeUnit;
            this.d = ahVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.e, dVar)) {
                this.e = dVar;
                try {
                    this.f = (Collection) io.reactivex.internal.a.b.requireNonNull(this.f8373a.call(), "The supplied buffer is null");
                    this.n.onSubscribe(this);
                    if (!this.cancelled) {
                        dVar.request(Long.MAX_VALUE);
                        ah ahVar = this.d;
                        long j = this.f8374b;
                        io.reactivex.b.c schedulePeriodicallyDirect = ahVar.schedulePeriodicallyDirect(this, j, j, this.c);
                        if (!this.g.compareAndSet(null, schedulePeriodicallyDirect)) {
                            schedulePeriodicallyDirect.dispose();
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    cancel();
                    EmptySubscription.error(th, this.n);
                }
            }
        }

        public final void onNext(T t) {
            synchronized (this) {
                U u = this.f;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        public final void onError(Throwable th) {
            DisposableHelper.dispose(this.g);
            synchronized (this) {
                this.f = null;
            }
            this.n.onError(th);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:10:0x001c, code lost:
            if (enter() == false) goto L_0x0026;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:11:0x001e, code lost:
            io.reactivex.internal.util.o.drainMaxLoop(r4.queue, r4.n, false, null, r4);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:12:0x0026, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:9:0x0010, code lost:
            r4.queue.offer(r0);
            r4.o = true;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onComplete() {
            /*
                r4 = this;
                java.util.concurrent.atomic.AtomicReference<io.reactivex.b.c> r0 = r4.g
                io.reactivex.internal.disposables.DisposableHelper.dispose(r0)
                monitor-enter(r4)
                U r0 = r4.f     // Catch:{ all -> 0x0027 }
                if (r0 != 0) goto L_0x000c
                monitor-exit(r4)     // Catch:{ all -> 0x0027 }
                return
            L_0x000c:
                r1 = 0
                r4.f = r1     // Catch:{ all -> 0x0027 }
                monitor-exit(r4)     // Catch:{ all -> 0x0027 }
                io.reactivex.internal.b.i r2 = r4.queue
                r2.offer(r0)
                r0 = 1
                r4.o = r0
                boolean r0 = r4.enter()
                if (r0 == 0) goto L_0x0026
                io.reactivex.internal.b.i r0 = r4.queue
                org.b.c r2 = r4.n
                r3 = 0
                io.reactivex.internal.util.o.drainMaxLoop(r0, r2, r3, r1, r4)
            L_0x0026:
                return
            L_0x0027:
                r0 = move-exception
                monitor-exit(r4)     // Catch:{ all -> 0x0027 }
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.q.b.onComplete():void");
        }

        public final void request(long j) {
            requested(j);
        }

        public final void cancel() {
            this.cancelled = true;
            this.e.cancel();
            DisposableHelper.dispose(this.g);
        }

        public final void run() {
            try {
                U u = (Collection) io.reactivex.internal.a.b.requireNonNull(this.f8373a.call(), "The supplied buffer is null");
                synchronized (this) {
                    U u2 = this.f;
                    if (u2 != null) {
                        this.f = u;
                        a(u2, this);
                    }
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                cancel();
                this.n.onError(th);
            }
        }

        public final boolean accept(org.b.c<? super U> cVar, U u) {
            this.n.onNext(u);
            return true;
        }

        public final void dispose() {
            cancel();
        }

        public final boolean isDisposed() {
            return this.g.get() == DisposableHelper.DISPOSED;
        }
    }

    static final class c<T, U extends Collection<? super T>> extends n<T, U, U> implements Runnable, d {

        /* renamed from: a  reason: collision with root package name */
        final Callable<U> f8375a;

        /* renamed from: b  reason: collision with root package name */
        final long f8376b;
        final long c;
        final TimeUnit d;
        final ah.c e;
        final List<U> f = new LinkedList();
        d g;

        final class a implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            private final U f8378b;

            a(U u) {
                this.f8378b = u;
            }

            public final void run() {
                synchronized (c.this) {
                    c.this.f.remove(this.f8378b);
                }
                c cVar = c.this;
                cVar.fastPathOrderedEmitMax(this.f8378b, false, cVar.e);
            }
        }

        c(org.b.c<? super U> cVar, Callable<U> callable, long j, long j2, TimeUnit timeUnit, ah.c cVar2) {
            super(cVar, new io.reactivex.internal.d.a());
            this.f8375a = callable;
            this.f8376b = j;
            this.c = j2;
            this.d = timeUnit;
            this.e = cVar2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.g, dVar)) {
                this.g = dVar;
                try {
                    Collection collection = (Collection) io.reactivex.internal.a.b.requireNonNull(this.f8375a.call(), "The supplied buffer is null");
                    this.f.add(collection);
                    this.n.onSubscribe(this);
                    dVar.request(Long.MAX_VALUE);
                    ah.c cVar = this.e;
                    long j = this.c;
                    cVar.schedulePeriodically(this, j, j, this.d);
                    this.e.schedule(new a(collection), this.f8376b, this.d);
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.e.dispose();
                    dVar.cancel();
                    EmptySubscription.error(th, this.n);
                }
            }
        }

        public final void onNext(T t) {
            synchronized (this) {
                for (U add : this.f) {
                    add.add(t);
                }
            }
        }

        public final void onError(Throwable th) {
            this.o = true;
            this.e.dispose();
            a();
            this.n.onError(th);
        }

        public final void onComplete() {
            ArrayList<Collection> arrayList;
            synchronized (this) {
                arrayList = new ArrayList<>(this.f);
                this.f.clear();
            }
            for (Collection offer : arrayList) {
                this.queue.offer(offer);
            }
            this.o = true;
            if (enter()) {
                o.drainMaxLoop(this.queue, this.n, false, this.e, this);
            }
        }

        public final void request(long j) {
            requested(j);
        }

        public final void cancel() {
            this.cancelled = true;
            this.g.cancel();
            this.e.dispose();
            a();
        }

        private void a() {
            synchronized (this) {
                this.f.clear();
            }
        }

        public final void run() {
            if (!this.cancelled) {
                try {
                    Collection collection = (Collection) io.reactivex.internal.a.b.requireNonNull(this.f8375a.call(), "The supplied buffer is null");
                    synchronized (this) {
                        if (!this.cancelled) {
                            this.f.add(collection);
                            this.e.schedule(new a(collection), this.f8376b, this.d);
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    cancel();
                    this.n.onError(th);
                }
            }
        }

        public final boolean accept(org.b.c<? super U> cVar, U u) {
            cVar.onNext(u);
            return true;
        }
    }

    public q(j<T> jVar, long j, long j2, TimeUnit timeUnit, ah ahVar, Callable<U> callable, int i2, boolean z) {
        super(jVar);
        this.c = j;
        this.d = j2;
        this.e = timeUnit;
        this.f = ahVar;
        this.g = callable;
        this.h = i2;
        this.i = z;
    }

    public final void subscribeActual(org.b.c<? super U> cVar) {
        if (this.c == this.d && this.h == Integer.MAX_VALUE) {
            j jVar = this.f7923b;
            b bVar = new b(new io.reactivex.k.d(cVar), this.g, this.c, this.e, this.f);
            jVar.subscribe(bVar);
            return;
        }
        ah.c createWorker = this.f.createWorker();
        if (this.c == this.d) {
            j jVar2 = this.f7923b;
            a aVar = new a(new io.reactivex.k.d(cVar), this.g, this.c, this.e, this.h, this.i, createWorker);
            jVar2.subscribe(aVar);
            return;
        }
        j jVar3 = this.f7923b;
        c cVar2 = new c(new io.reactivex.k.d(cVar), this.g, this.c, this.d, this.e, createWorker);
        jVar3.subscribe(cVar2);
    }
}
