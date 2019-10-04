package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.internal.c.u;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.o;
import io.reactivex.observers.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class q<T, U extends Collection<? super T>> extends a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final long f7599b;
    final long c;
    final TimeUnit d;
    final ah e;
    final Callable<U> f;
    final int g;
    final boolean h;

    static final class a<T, U extends Collection<? super T>> extends u<T, U, U> implements io.reactivex.b.c, Runnable {
        final Callable<U> e;
        final long f;
        final TimeUnit g;
        final int h;
        final boolean i;
        final ah.c j;
        U k;
        io.reactivex.b.c l;
        io.reactivex.b.c m;
        long n;
        long o;

        a(ag<? super U> agVar, Callable<U> callable, long j2, TimeUnit timeUnit, int i2, boolean z, ah.c cVar) {
            super(agVar, new io.reactivex.internal.d.a());
            this.e = callable;
            this.f = j2;
            this.g = timeUnit;
            this.h = i2;
            this.i = z;
            this.j = cVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.m, cVar)) {
                this.m = cVar;
                try {
                    this.k = (Collection) io.reactivex.internal.a.b.requireNonNull(this.e.call(), "The buffer supplied is null");
                    this.f6788a.onSubscribe(this);
                    ah.c cVar2 = this.j;
                    long j2 = this.f;
                    this.l = cVar2.schedulePeriodically(this, j2, j2, this.g);
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    cVar.dispose();
                    EmptyDisposable.error(th, (ag<?>) this.f6788a);
                    this.j.dispose();
                }
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:13:0x0021, code lost:
            if (r7.i == false) goto L_0x0028;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0023, code lost:
            r7.l.dispose();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x0028, code lost:
            fastPathOrderedEmit(r0, false, r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
            r8 = (java.util.Collection) io.reactivex.internal.a.b.requireNonNull(r7.e.call(), "The buffer supplied is null");
         */
        /* JADX WARNING: Code restructure failed: missing block: B:18:0x003a, code lost:
            monitor-enter(r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:20:?, code lost:
            r7.k = r8;
            r7.o++;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:21:0x0042, code lost:
            monitor-exit(r7);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:23:0x0045, code lost:
            if (r7.i == false) goto L_0x0055;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x0047, code lost:
            r0 = r7.j;
            r4 = r7.f;
            r7.l = r0.schedulePeriodically(r7, r4, r4, r7.g);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:25:0x0055, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:30:0x0059, code lost:
            r8 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:0x005a, code lost:
            io.reactivex.c.b.throwIfFatal(r8);
            r7.f6788a.onError(r8);
            dispose();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:32:0x0065, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onNext(T r8) {
            /*
                r7 = this;
                monitor-enter(r7)
                U r0 = r7.k     // Catch:{ all -> 0x0066 }
                if (r0 != 0) goto L_0x0007
                monitor-exit(r7)     // Catch:{ all -> 0x0066 }
                return
            L_0x0007:
                r0.add(r8)     // Catch:{ all -> 0x0066 }
                int r8 = r0.size()     // Catch:{ all -> 0x0066 }
                int r1 = r7.h     // Catch:{ all -> 0x0066 }
                if (r8 >= r1) goto L_0x0014
                monitor-exit(r7)     // Catch:{ all -> 0x0066 }
                return
            L_0x0014:
                r8 = 0
                r7.k = r8     // Catch:{ all -> 0x0066 }
                long r1 = r7.n     // Catch:{ all -> 0x0066 }
                r3 = 1
                long r1 = r1 + r3
                r7.n = r1     // Catch:{ all -> 0x0066 }
                monitor-exit(r7)     // Catch:{ all -> 0x0066 }
                boolean r8 = r7.i
                if (r8 == 0) goto L_0x0028
                io.reactivex.b.c r8 = r7.l
                r8.dispose()
            L_0x0028:
                r8 = 0
                r7.fastPathOrderedEmit(r0, r8, r7)
                java.util.concurrent.Callable<U> r8 = r7.e     // Catch:{ all -> 0x0059 }
                java.lang.Object r8 = r8.call()     // Catch:{ all -> 0x0059 }
                java.lang.String r0 = "The buffer supplied is null"
                java.lang.Object r8 = io.reactivex.internal.a.b.requireNonNull(r8, (java.lang.String) r0)     // Catch:{ all -> 0x0059 }
                java.util.Collection r8 = (java.util.Collection) r8     // Catch:{ all -> 0x0059 }
                monitor-enter(r7)
                r7.k = r8     // Catch:{ all -> 0x0056 }
                long r0 = r7.o     // Catch:{ all -> 0x0056 }
                long r0 = r0 + r3
                r7.o = r0     // Catch:{ all -> 0x0056 }
                monitor-exit(r7)     // Catch:{ all -> 0x0056 }
                boolean r8 = r7.i
                if (r8 == 0) goto L_0x0055
                io.reactivex.ah$c r0 = r7.j
                long r4 = r7.f
                java.util.concurrent.TimeUnit r6 = r7.g
                r1 = r7
                r2 = r4
                io.reactivex.b.c r8 = r0.schedulePeriodically(r1, r2, r4, r6)
                r7.l = r8
            L_0x0055:
                return
            L_0x0056:
                r8 = move-exception
                monitor-exit(r7)     // Catch:{ all -> 0x0056 }
                throw r8
            L_0x0059:
                r8 = move-exception
                io.reactivex.c.b.throwIfFatal(r8)
                io.reactivex.ag r0 = r7.f6788a
                r0.onError(r8)
                r7.dispose()
                return
            L_0x0066:
                r8 = move-exception
                monitor-exit(r7)     // Catch:{ all -> 0x0066 }
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.q.a.onNext(java.lang.Object):void");
        }

        public final void onError(Throwable th) {
            synchronized (this) {
                this.k = null;
            }
            this.f6788a.onError(th);
            this.j.dispose();
        }

        public final void onComplete() {
            U u;
            this.j.dispose();
            synchronized (this) {
                u = this.k;
                this.k = null;
            }
            if (u != null) {
                this.queue.offer(u);
                this.f6789b = true;
                if (enter()) {
                    o.drainLoop(this.queue, this.f6788a, false, this, this);
                }
            }
        }

        public final void accept(ag<? super U> agVar, U u) {
            agVar.onNext(u);
        }

        public final void dispose() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.m.dispose();
                this.j.dispose();
                synchronized (this) {
                    this.k = null;
                }
            }
        }

        public final boolean isDisposed() {
            return this.cancelled;
        }

        public final void run() {
            try {
                U u = (Collection) io.reactivex.internal.a.b.requireNonNull(this.e.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    U u2 = this.k;
                    if (u2 != null) {
                        if (this.n == this.o) {
                            this.k = u;
                            fastPathOrderedEmit(u2, false, this);
                        }
                    }
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                dispose();
                this.f6788a.onError(th);
            }
        }
    }

    static final class b<T, U extends Collection<? super T>> extends u<T, U, U> implements io.reactivex.b.c, Runnable {
        final Callable<U> e;
        final long f;
        final TimeUnit g;
        final ah h;
        io.reactivex.b.c i;
        U j;
        final AtomicReference<io.reactivex.b.c> k = new AtomicReference<>();

        b(ag<? super U> agVar, Callable<U> callable, long j2, TimeUnit timeUnit, ah ahVar) {
            super(agVar, new io.reactivex.internal.d.a());
            this.e = callable;
            this.f = j2;
            this.g = timeUnit;
            this.h = ahVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.i, cVar)) {
                this.i = cVar;
                try {
                    this.j = (Collection) io.reactivex.internal.a.b.requireNonNull(this.e.call(), "The buffer supplied is null");
                    this.f6788a.onSubscribe(this);
                    if (!this.cancelled) {
                        ah ahVar = this.h;
                        long j2 = this.f;
                        io.reactivex.b.c schedulePeriodicallyDirect = ahVar.schedulePeriodicallyDirect(this, j2, j2, this.g);
                        if (!this.k.compareAndSet(null, schedulePeriodicallyDirect)) {
                            schedulePeriodicallyDirect.dispose();
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    dispose();
                    EmptyDisposable.error(th, (ag<?>) this.f6788a);
                }
            }
        }

        public final void onNext(T t) {
            synchronized (this) {
                U u = this.j;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        public final void onError(Throwable th) {
            synchronized (this) {
                this.j = null;
            }
            this.f6788a.onError(th);
            DisposableHelper.dispose(this.k);
        }

        public final void onComplete() {
            U u;
            synchronized (this) {
                u = this.j;
                this.j = null;
            }
            if (u != null) {
                this.queue.offer(u);
                this.f6789b = true;
                if (enter()) {
                    o.drainLoop(this.queue, this.f6788a, false, null, this);
                }
            }
            DisposableHelper.dispose(this.k);
        }

        public final void dispose() {
            DisposableHelper.dispose(this.k);
            this.i.dispose();
        }

        public final boolean isDisposed() {
            return this.k.get() == DisposableHelper.DISPOSED;
        }

        public final void run() {
            U u;
            try {
                U u2 = (Collection) io.reactivex.internal.a.b.requireNonNull(this.e.call(), "The bufferSupplier returned a null buffer");
                synchronized (this) {
                    u = this.j;
                    if (u != null) {
                        this.j = u2;
                    }
                }
                if (u == null) {
                    DisposableHelper.dispose(this.k);
                } else {
                    a(u, this);
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f6788a.onError(th);
                dispose();
            }
        }

        public final void accept(ag<? super U> agVar, U u) {
            this.f6788a.onNext(u);
        }
    }

    static final class c<T, U extends Collection<? super T>> extends u<T, U, U> implements io.reactivex.b.c, Runnable {
        final Callable<U> e;
        final long f;
        final long g;
        final TimeUnit h;
        final ah.c i;
        final List<U> j = new LinkedList();
        io.reactivex.b.c k;

        final class a implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            private final U f7601b;

            a(U u) {
                this.f7601b = u;
            }

            public final void run() {
                synchronized (c.this) {
                    c.this.j.remove(this.f7601b);
                }
                c cVar = c.this;
                cVar.fastPathOrderedEmit(this.f7601b, false, cVar.i);
            }
        }

        final class b implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            private final U f7603b;

            b(U u) {
                this.f7603b = u;
            }

            public final void run() {
                synchronized (c.this) {
                    c.this.j.remove(this.f7603b);
                }
                c cVar = c.this;
                cVar.fastPathOrderedEmit(this.f7603b, false, cVar.i);
            }
        }

        c(ag<? super U> agVar, Callable<U> callable, long j2, long j3, TimeUnit timeUnit, ah.c cVar) {
            super(agVar, new io.reactivex.internal.d.a());
            this.e = callable;
            this.f = j2;
            this.g = j3;
            this.h = timeUnit;
            this.i = cVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.k, cVar)) {
                this.k = cVar;
                try {
                    Collection collection = (Collection) io.reactivex.internal.a.b.requireNonNull(this.e.call(), "The buffer supplied is null");
                    this.j.add(collection);
                    this.f6788a.onSubscribe(this);
                    ah.c cVar2 = this.i;
                    long j2 = this.g;
                    cVar2.schedulePeriodically(this, j2, j2, this.h);
                    this.i.schedule(new b(collection), this.f, this.h);
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    cVar.dispose();
                    EmptyDisposable.error(th, (ag<?>) this.f6788a);
                    this.i.dispose();
                }
            }
        }

        public final void onNext(T t) {
            synchronized (this) {
                for (U add : this.j) {
                    add.add(t);
                }
            }
        }

        public final void onError(Throwable th) {
            this.f6789b = true;
            a();
            this.f6788a.onError(th);
            this.i.dispose();
        }

        public final void onComplete() {
            ArrayList<Collection> arrayList;
            synchronized (this) {
                arrayList = new ArrayList<>(this.j);
                this.j.clear();
            }
            for (Collection offer : arrayList) {
                this.queue.offer(offer);
            }
            this.f6789b = true;
            if (enter()) {
                o.drainLoop(this.queue, this.f6788a, false, this.i, this);
            }
        }

        public final void dispose() {
            if (!this.cancelled) {
                this.cancelled = true;
                a();
                this.k.dispose();
                this.i.dispose();
            }
        }

        public final boolean isDisposed() {
            return this.cancelled;
        }

        private void a() {
            synchronized (this) {
                this.j.clear();
            }
        }

        public final void run() {
            if (!this.cancelled) {
                try {
                    Collection collection = (Collection) io.reactivex.internal.a.b.requireNonNull(this.e.call(), "The bufferSupplier returned a null buffer");
                    synchronized (this) {
                        if (!this.cancelled) {
                            this.j.add(collection);
                            this.i.schedule(new a(collection), this.f, this.h);
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.f6788a.onError(th);
                    dispose();
                }
            }
        }

        public final void accept(ag<? super U> agVar, U u) {
            agVar.onNext(u);
        }
    }

    public q(ae<T> aeVar, long j, long j2, TimeUnit timeUnit, ah ahVar, Callable<U> callable, int i, boolean z) {
        super(aeVar);
        this.f7599b = j;
        this.c = j2;
        this.d = timeUnit;
        this.e = ahVar;
        this.f = callable;
        this.g = i;
        this.h = z;
    }

    public final void subscribeActual(ag<? super U> agVar) {
        if (this.f7599b == this.c && this.g == Integer.MAX_VALUE) {
            ae aeVar = this.f7091a;
            b bVar = new b(new d(agVar), this.f, this.f7599b, this.d, this.e);
            aeVar.subscribe(bVar);
            return;
        }
        ah.c createWorker = this.e.createWorker();
        if (this.f7599b == this.c) {
            ae aeVar2 = this.f7091a;
            a aVar = new a(new d(agVar), this.f, this.f7599b, this.d, this.g, this.h, createWorker);
            aeVar2.subscribe(aVar);
            return;
        }
        ae aeVar3 = this.f7091a;
        c cVar = new c(new d(agVar), this.f, this.f7599b, this.c, this.d, createWorker);
        aeVar3.subscribe(cVar);
    }
}
