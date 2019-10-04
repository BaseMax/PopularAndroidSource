package io.reactivex.internal.e;

import io.reactivex.ah;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.f;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class d extends ah {
    static final ah d = io.reactivex.i.a.single();

    /* renamed from: b  reason: collision with root package name */
    final boolean f6811b;
    final Executor c;

    final class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final b f6813b;

        a(b bVar) {
            this.f6813b = bVar;
        }

        public final void run() {
            this.f6813b.f6815b.replace(d.this.scheduleDirect(this.f6813b));
        }
    }

    static final class b extends AtomicReference<Runnable> implements io.reactivex.b.c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final f f6814a = new f();

        /* renamed from: b  reason: collision with root package name */
        final f f6815b = new f();

        b(Runnable runnable) {
            super(runnable);
        }

        public final void run() {
            Runnable runnable = (Runnable) get();
            if (runnable != null) {
                try {
                    runnable.run();
                } finally {
                    lazySet(null);
                    this.f6814a.lazySet(DisposableHelper.DISPOSED);
                    this.f6815b.lazySet(DisposableHelper.DISPOSED);
                }
            }
        }

        public final boolean isDisposed() {
            return get() == null;
        }

        public final void dispose() {
            if (getAndSet(null) != null) {
                this.f6814a.dispose();
                this.f6815b.dispose();
            }
        }

        public final Runnable getWrappedRunnable() {
            Runnable runnable = (Runnable) get();
            if (runnable != null) {
                return runnable;
            }
            return io.reactivex.internal.a.a.EMPTY_RUNNABLE;
        }
    }

    public static final class c extends ah.c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final boolean f6816a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f6817b;
        final io.reactivex.internal.d.a<Runnable> c;
        volatile boolean d;
        final AtomicInteger e = new AtomicInteger();
        final io.reactivex.b.b f = new io.reactivex.b.b();

        static final class a extends AtomicBoolean implements io.reactivex.b.c, Runnable {

            /* renamed from: a  reason: collision with root package name */
            final Runnable f6818a;

            a(Runnable runnable) {
                this.f6818a = runnable;
            }

            public final void run() {
                if (!get()) {
                    try {
                        this.f6818a.run();
                    } finally {
                        lazySet(true);
                    }
                }
            }

            public final void dispose() {
                lazySet(true);
            }

            public final boolean isDisposed() {
                return get();
            }
        }

        static final class b extends AtomicInteger implements io.reactivex.b.c, Runnable {

            /* renamed from: a  reason: collision with root package name */
            final Runnable f6819a;

            /* renamed from: b  reason: collision with root package name */
            final io.reactivex.internal.disposables.c f6820b;
            volatile Thread c;

            b(Runnable runnable, io.reactivex.internal.disposables.c cVar) {
                this.f6819a = runnable;
                this.f6820b = cVar;
            }

            public final void run() {
                if (get() == 0) {
                    this.c = Thread.currentThread();
                    if (compareAndSet(0, 1)) {
                        try {
                            this.f6819a.run();
                            this.c = null;
                            if (compareAndSet(1, 2)) {
                                a();
                                return;
                            }
                            while (get() == 3) {
                                Thread.yield();
                            }
                            Thread.interrupted();
                        } catch (Throwable th) {
                            this.c = null;
                            if (!compareAndSet(1, 2)) {
                                while (get() == 3) {
                                    Thread.yield();
                                }
                                Thread.interrupted();
                            } else {
                                a();
                            }
                            throw th;
                        }
                    } else {
                        this.c = null;
                    }
                }
            }

            public final void dispose() {
                while (true) {
                    int i = get();
                    if (i >= 2) {
                        break;
                    } else if (i == 0) {
                        if (compareAndSet(0, 4)) {
                            a();
                            return;
                        }
                    } else if (compareAndSet(1, 3)) {
                        Thread thread = this.c;
                        if (thread != null) {
                            thread.interrupt();
                            this.c = null;
                        }
                        set(4);
                        a();
                    }
                }
            }

            private void a() {
                io.reactivex.internal.disposables.c cVar = this.f6820b;
                if (cVar != null) {
                    cVar.delete(this);
                }
            }

            public final boolean isDisposed() {
                return get() >= 2;
            }
        }

        /* renamed from: io.reactivex.internal.e.d$c$c  reason: collision with other inner class name */
        final class C0134c implements Runnable {

            /* renamed from: b  reason: collision with root package name */
            private final f f6822b;
            private final Runnable c;

            C0134c(f fVar, Runnable runnable) {
                this.f6822b = fVar;
                this.c = runnable;
            }

            public final void run() {
                this.f6822b.replace(c.this.schedule(this.c));
            }
        }

        public c(Executor executor, boolean z) {
            this.f6817b = executor;
            this.c = new io.reactivex.internal.d.a<>();
            this.f6816a = z;
        }

        public final io.reactivex.b.c schedule(Runnable runnable) {
            io.reactivex.b.c cVar;
            if (this.d) {
                return EmptyDisposable.INSTANCE;
            }
            Runnable onSchedule = io.reactivex.g.a.onSchedule(runnable);
            if (this.f6816a) {
                cVar = new b(onSchedule, this.f);
                this.f.add(cVar);
            } else {
                cVar = new a(onSchedule);
            }
            this.c.offer(cVar);
            if (this.e.getAndIncrement() == 0) {
                try {
                    this.f6817b.execute(this);
                } catch (RejectedExecutionException e2) {
                    this.d = true;
                    this.c.clear();
                    io.reactivex.g.a.onError(e2);
                    return EmptyDisposable.INSTANCE;
                }
            }
            return cVar;
        }

        public final io.reactivex.b.c schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            if (j <= 0) {
                return schedule(runnable);
            }
            if (this.d) {
                return EmptyDisposable.INSTANCE;
            }
            f fVar = new f();
            f fVar2 = new f(fVar);
            n nVar = new n(new C0134c(fVar2, io.reactivex.g.a.onSchedule(runnable)), this.f);
            this.f.add(nVar);
            Executor executor = this.f6817b;
            if (executor instanceof ScheduledExecutorService) {
                try {
                    nVar.setFuture(((ScheduledExecutorService) executor).schedule(nVar, j, timeUnit));
                } catch (RejectedExecutionException e2) {
                    this.d = true;
                    io.reactivex.g.a.onError(e2);
                    return EmptyDisposable.INSTANCE;
                }
            } else {
                nVar.setFuture(new c(d.d.scheduleDirect(nVar, j, timeUnit)));
            }
            fVar.replace(nVar);
            return fVar2;
        }

        public final void dispose() {
            if (!this.d) {
                this.d = true;
                this.f.dispose();
                if (this.e.getAndIncrement() == 0) {
                    this.c.clear();
                }
            }
        }

        public final boolean isDisposed() {
            return this.d;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:12:0x0020, code lost:
            if (r3.d == false) goto L_0x0026;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x0022, code lost:
            r0.clear();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0025, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x0026, code lost:
            r1 = r3.e.addAndGet(-r1);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:16:0x002d, code lost:
            if (r1 != 0) goto L_0x0003;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:17:0x002f, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void run() {
            /*
                r3 = this;
                io.reactivex.internal.d.a<java.lang.Runnable> r0 = r3.c
                r1 = 1
            L_0x0003:
                boolean r2 = r3.d
                if (r2 == 0) goto L_0x000b
                r0.clear()
                return
            L_0x000b:
                java.lang.Object r2 = r0.poll()
                java.lang.Runnable r2 = (java.lang.Runnable) r2
                if (r2 == 0) goto L_0x001e
                r2.run()
                boolean r2 = r3.d
                if (r2 == 0) goto L_0x000b
                r0.clear()
                return
            L_0x001e:
                boolean r2 = r3.d
                if (r2 == 0) goto L_0x0026
                r0.clear()
                return
            L_0x0026:
                java.util.concurrent.atomic.AtomicInteger r2 = r3.e
                int r1 = -r1
                int r1 = r2.addAndGet(r1)
                if (r1 != 0) goto L_0x0003
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.e.d.c.run():void");
        }
    }

    public d(Executor executor, boolean z) {
        this.c = executor;
        this.f6811b = z;
    }

    public final ah.c createWorker() {
        return new c(this.c, this.f6811b);
    }

    public final io.reactivex.b.c scheduleDirect(Runnable runnable) {
        Runnable onSchedule = io.reactivex.g.a.onSchedule(runnable);
        try {
            if (this.c instanceof ExecutorService) {
                m mVar = new m(onSchedule);
                mVar.setFuture(((ExecutorService) this.c).submit(mVar));
                return mVar;
            } else if (this.f6811b) {
                c.b bVar = new c.b(onSchedule, null);
                this.c.execute(bVar);
                return bVar;
            } else {
                c.a aVar = new c.a(onSchedule);
                this.c.execute(aVar);
                return aVar;
            }
        } catch (RejectedExecutionException e) {
            io.reactivex.g.a.onError(e);
            return EmptyDisposable.INSTANCE;
        }
    }

    public final io.reactivex.b.c scheduleDirect(Runnable runnable, long j, TimeUnit timeUnit) {
        Runnable onSchedule = io.reactivex.g.a.onSchedule(runnable);
        if (this.c instanceof ScheduledExecutorService) {
            try {
                m mVar = new m(onSchedule);
                mVar.setFuture(((ScheduledExecutorService) this.c).schedule(mVar, j, timeUnit));
                return mVar;
            } catch (RejectedExecutionException e) {
                io.reactivex.g.a.onError(e);
                return EmptyDisposable.INSTANCE;
            }
        } else {
            b bVar = new b(onSchedule);
            bVar.f6814a.replace(d.scheduleDirect(new a(bVar), j, timeUnit));
            return bVar;
        }
    }

    public final io.reactivex.b.c schedulePeriodicallyDirect(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        if (!(this.c instanceof ScheduledExecutorService)) {
            return super.schedulePeriodicallyDirect(runnable, j, j2, timeUnit);
        }
        try {
            l lVar = new l(io.reactivex.g.a.onSchedule(runnable));
            lVar.setFuture(((ScheduledExecutorService) this.c).scheduleAtFixedRate(lVar, j, j2, timeUnit));
            return lVar;
        } catch (RejectedExecutionException e) {
            io.reactivex.g.a.onError(e);
            return EmptyDisposable.INSTANCE;
        }
    }
}
