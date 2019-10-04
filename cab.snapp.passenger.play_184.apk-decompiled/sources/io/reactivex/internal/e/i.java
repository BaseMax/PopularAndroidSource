package io.reactivex.internal.e;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.g.a;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

public class i extends ah.c implements c {

    /* renamed from: a  reason: collision with root package name */
    volatile boolean f6833a;

    /* renamed from: b  reason: collision with root package name */
    private final ScheduledExecutorService f6834b;

    public i(ThreadFactory threadFactory) {
        this.f6834b = p.create(threadFactory);
    }

    public c schedule(Runnable runnable) {
        return schedule(runnable, 0, null);
    }

    public c schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        if (this.f6833a) {
            return EmptyDisposable.INSTANCE;
        }
        return scheduleActual(runnable, j, timeUnit, null);
    }

    public c scheduleDirect(Runnable runnable, long j, TimeUnit timeUnit) {
        Future future;
        m mVar = new m(a.onSchedule(runnable));
        if (j <= 0) {
            try {
                future = this.f6834b.submit(mVar);
            } catch (RejectedExecutionException e) {
                a.onError(e);
                return EmptyDisposable.INSTANCE;
            }
        } else {
            future = this.f6834b.schedule(mVar, j, timeUnit);
        }
        mVar.setFuture(future);
        return mVar;
    }

    public c schedulePeriodicallyDirect(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        Future future;
        Runnable onSchedule = a.onSchedule(runnable);
        if (j2 <= 0) {
            f fVar = new f(onSchedule, this.f6834b);
            if (j <= 0) {
                try {
                    future = this.f6834b.submit(fVar);
                } catch (RejectedExecutionException e) {
                    a.onError(e);
                    return EmptyDisposable.INSTANCE;
                }
            } else {
                future = this.f6834b.schedule(fVar, j, timeUnit);
            }
            fVar.a(future);
            return fVar;
        }
        l lVar = new l(onSchedule);
        try {
            lVar.setFuture(this.f6834b.scheduleAtFixedRate(lVar, j, j2, timeUnit));
            return lVar;
        } catch (RejectedExecutionException e2) {
            a.onError(e2);
            return EmptyDisposable.INSTANCE;
        }
    }

    public n scheduleActual(Runnable runnable, long j, TimeUnit timeUnit, io.reactivex.internal.disposables.c cVar) {
        Future future;
        n nVar = new n(a.onSchedule(runnable), cVar);
        if (cVar != null && !cVar.add(nVar)) {
            return nVar;
        }
        if (j <= 0) {
            try {
                future = this.f6834b.submit(nVar);
            } catch (RejectedExecutionException e) {
                if (cVar != null) {
                    cVar.remove(nVar);
                }
                a.onError(e);
            }
        } else {
            future = this.f6834b.schedule(nVar, j, timeUnit);
        }
        nVar.setFuture(future);
        return nVar;
    }

    public void dispose() {
        if (!this.f6833a) {
            this.f6833a = true;
            this.f6834b.shutdownNow();
        }
    }

    public void shutdown() {
        if (!this.f6833a) {
            this.f6833a = true;
            this.f6834b.shutdown();
        }
    }

    public boolean isDisposed() {
        return this.f6833a;
    }
}
