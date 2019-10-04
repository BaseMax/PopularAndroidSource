package io.reactivex.internal.e;

import io.reactivex.ah;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class g extends ah {
    public static final long KEEP_ALIVE_TIME_DEFAULT = 60;

    /* renamed from: b  reason: collision with root package name */
    static final k f6826b;
    static final k c;
    static final c d;
    static final a g;
    private static final long h = Long.getLong("rx2.io-keep-alive-time", 60).longValue();
    private static final TimeUnit i = TimeUnit.SECONDS;
    final ThreadFactory e;
    final AtomicReference<a> f;

    static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final long f6827a;

        /* renamed from: b  reason: collision with root package name */
        final ConcurrentLinkedQueue<c> f6828b;
        final io.reactivex.b.b c;
        private final ScheduledExecutorService d;
        private final Future<?> e;
        private final ThreadFactory f;

        a(long j, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledFuture<?> scheduledFuture;
            this.f6827a = timeUnit != null ? timeUnit.toNanos(j) : 0;
            this.f6828b = new ConcurrentLinkedQueue<>();
            this.c = new io.reactivex.b.b();
            this.f = threadFactory;
            ScheduledExecutorService scheduledExecutorService = null;
            if (timeUnit != null) {
                scheduledExecutorService = Executors.newScheduledThreadPool(1, g.c);
                long j2 = this.f6827a;
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(this, j2, j2, TimeUnit.NANOSECONDS);
            } else {
                scheduledFuture = null;
            }
            this.d = scheduledExecutorService;
            this.e = scheduledFuture;
        }

        /* access modifiers changed from: package-private */
        public final c a() {
            if (this.c.isDisposed()) {
                return g.d;
            }
            while (!this.f6828b.isEmpty()) {
                c poll = this.f6828b.poll();
                if (poll != null) {
                    return poll;
                }
            }
            c cVar = new c(this.f);
            this.c.add(cVar);
            return cVar;
        }

        static long b() {
            return System.nanoTime();
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            this.c.dispose();
            Future<?> future = this.e;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.d;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }

        public final void run() {
            if (!this.f6828b.isEmpty()) {
                long nanoTime = System.nanoTime();
                Iterator<c> it = this.f6828b.iterator();
                while (it.hasNext()) {
                    c next = it.next();
                    if (next.getExpirationTime() > nanoTime) {
                        return;
                    }
                    if (this.f6828b.remove(next)) {
                        this.c.remove(next);
                    }
                }
            }
        }
    }

    static final class b extends ah.c {

        /* renamed from: a  reason: collision with root package name */
        final AtomicBoolean f6829a = new AtomicBoolean();

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.b.b f6830b;
        private final a c;
        private final c d;

        b(a aVar) {
            this.c = aVar;
            this.f6830b = new io.reactivex.b.b();
            this.d = aVar.a();
        }

        public final void dispose() {
            if (this.f6829a.compareAndSet(false, true)) {
                this.f6830b.dispose();
                a aVar = this.c;
                c cVar = this.d;
                cVar.setExpirationTime(a.b() + aVar.f6827a);
                aVar.f6828b.offer(cVar);
            }
        }

        public final boolean isDisposed() {
            return this.f6829a.get();
        }

        public final io.reactivex.b.c schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            if (this.f6830b.isDisposed()) {
                return EmptyDisposable.INSTANCE;
            }
            return this.d.scheduleActual(runnable, j, timeUnit, this.f6830b);
        }
    }

    static final class c extends i {

        /* renamed from: b  reason: collision with root package name */
        private long f6831b = 0;

        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }

        public final long getExpirationTime() {
            return this.f6831b;
        }

        public final void setExpirationTime(long j) {
            this.f6831b = j;
        }
    }

    static {
        c cVar = new c(new k("RxCachedThreadSchedulerShutdown"));
        d = cVar;
        cVar.dispose();
        int max = Math.max(1, Math.min(10, Integer.getInteger("rx2.io-priority", 5).intValue()));
        f6826b = new k("RxCachedThreadScheduler", max);
        c = new k("RxCachedWorkerPoolEvictor", max);
        a aVar = new a(0, null, f6826b);
        g = aVar;
        aVar.c();
    }

    public g() {
        this(f6826b);
    }

    public g(ThreadFactory threadFactory) {
        this.e = threadFactory;
        this.f = new AtomicReference<>(g);
        start();
    }

    public final void start() {
        a aVar = new a(h, i, this.e);
        if (!this.f.compareAndSet(g, aVar)) {
            aVar.c();
        }
    }

    public final void shutdown() {
        a aVar;
        a aVar2;
        do {
            aVar = this.f.get();
            aVar2 = g;
            if (aVar == aVar2) {
                return;
            }
        } while (!this.f.compareAndSet(aVar, aVar2));
        aVar.c();
    }

    public final ah.c createWorker() {
        return new b(this.f.get());
    }

    public final int size() {
        return this.f.get().c.size();
    }
}
