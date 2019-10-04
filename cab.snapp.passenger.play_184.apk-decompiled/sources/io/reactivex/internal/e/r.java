package io.reactivex.internal.e;

import io.reactivex.ah;
import io.reactivex.b.b;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class r extends ah {
    static final k d = new k("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.single-priority", 5).intValue())), true);
    static final ScheduledExecutorService e;

    /* renamed from: b  reason: collision with root package name */
    final ThreadFactory f6854b;
    final AtomicReference<ScheduledExecutorService> c;

    static final class a extends ah.c {

        /* renamed from: a  reason: collision with root package name */
        final ScheduledExecutorService f6855a;

        /* renamed from: b  reason: collision with root package name */
        final b f6856b = new b();
        volatile boolean c;

        a(ScheduledExecutorService scheduledExecutorService) {
            this.f6855a = scheduledExecutorService;
        }

        public final c schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            Future future;
            if (this.c) {
                return EmptyDisposable.INSTANCE;
            }
            n nVar = new n(io.reactivex.g.a.onSchedule(runnable), this.f6856b);
            this.f6856b.add(nVar);
            if (j <= 0) {
                try {
                    future = this.f6855a.submit(nVar);
                } catch (RejectedExecutionException e) {
                    dispose();
                    io.reactivex.g.a.onError(e);
                    return EmptyDisposable.INSTANCE;
                }
            } else {
                future = this.f6855a.schedule(nVar, j, timeUnit);
            }
            nVar.setFuture(future);
            return nVar;
        }

        public final void dispose() {
            if (!this.c) {
                this.c = true;
                this.f6856b.dispose();
            }
        }

        public final boolean isDisposed() {
            return this.c;
        }
    }

    static {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(0);
        e = newScheduledThreadPool;
        newScheduledThreadPool.shutdown();
    }

    public r() {
        this(d);
    }

    public r(ThreadFactory threadFactory) {
        this.c = new AtomicReference<>();
        this.f6854b = threadFactory;
        this.c.lazySet(p.create(threadFactory));
    }

    public final void start() {
        ScheduledExecutorService scheduledExecutorService;
        ScheduledExecutorService scheduledExecutorService2 = null;
        do {
            scheduledExecutorService = this.c.get();
            if (scheduledExecutorService != e) {
                if (scheduledExecutorService2 != null) {
                    scheduledExecutorService2.shutdown();
                }
                return;
            } else if (scheduledExecutorService2 == null) {
                scheduledExecutorService2 = p.create(this.f6854b);
            }
        } while (!this.c.compareAndSet(scheduledExecutorService, scheduledExecutorService2));
    }

    public final void shutdown() {
        ScheduledExecutorService scheduledExecutorService = this.c.get();
        ScheduledExecutorService scheduledExecutorService2 = e;
        if (scheduledExecutorService != scheduledExecutorService2) {
            ScheduledExecutorService andSet = this.c.getAndSet(scheduledExecutorService2);
            if (andSet != e) {
                andSet.shutdownNow();
            }
        }
    }

    public final ah.c createWorker() {
        return new a(this.c.get());
    }

    public final c scheduleDirect(Runnable runnable, long j, TimeUnit timeUnit) {
        Future future;
        m mVar = new m(io.reactivex.g.a.onSchedule(runnable));
        if (j <= 0) {
            try {
                future = this.c.get().submit(mVar);
            } catch (RejectedExecutionException e2) {
                io.reactivex.g.a.onError(e2);
                return EmptyDisposable.INSTANCE;
            }
        } else {
            future = this.c.get().schedule(mVar, j, timeUnit);
        }
        mVar.setFuture(future);
        return mVar;
    }

    public final c schedulePeriodicallyDirect(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        Future future;
        Runnable onSchedule = io.reactivex.g.a.onSchedule(runnable);
        if (j2 <= 0) {
            ScheduledExecutorService scheduledExecutorService = this.c.get();
            f fVar = new f(onSchedule, scheduledExecutorService);
            if (j <= 0) {
                try {
                    future = scheduledExecutorService.submit(fVar);
                } catch (RejectedExecutionException e2) {
                    io.reactivex.g.a.onError(e2);
                    return EmptyDisposable.INSTANCE;
                }
            } else {
                future = scheduledExecutorService.schedule(fVar, j, timeUnit);
            }
            fVar.a(future);
            return fVar;
        }
        l lVar = new l(onSchedule);
        try {
            lVar.setFuture(this.c.get().scheduleAtFixedRate(lVar, j, j2, timeUnit));
            return lVar;
        } catch (RejectedExecutionException e3) {
            io.reactivex.g.a.onError(e3);
            return EmptyDisposable.INSTANCE;
        }
    }
}
