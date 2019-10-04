package io.reactivex;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.f;
import io.reactivex.internal.e.i;
import io.reactivex.internal.e.q;
import io.reactivex.internal.util.h;
import java.util.concurrent.TimeUnit;

public abstract class ah {

    /* renamed from: a  reason: collision with root package name */
    static final long f6700a = TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15).longValue());

    static final class a implements io.reactivex.b.c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f6701a;

        /* renamed from: b  reason: collision with root package name */
        final c f6702b;
        Thread c;

        a(Runnable runnable, c cVar) {
            this.f6701a = runnable;
            this.f6702b = cVar;
        }

        public final void run() {
            this.c = Thread.currentThread();
            try {
                this.f6701a.run();
            } finally {
                dispose();
                this.c = null;
            }
        }

        public final void dispose() {
            if (this.c == Thread.currentThread()) {
                c cVar = this.f6702b;
                if (cVar instanceof i) {
                    ((i) cVar).shutdown();
                    return;
                }
            }
            this.f6702b.dispose();
        }

        public final boolean isDisposed() {
            return this.f6702b.isDisposed();
        }

        public final Runnable getWrappedRunnable() {
            return this.f6701a;
        }
    }

    static final class b implements io.reactivex.b.c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f6703a;

        /* renamed from: b  reason: collision with root package name */
        final c f6704b;
        volatile boolean c;

        b(Runnable runnable, c cVar) {
            this.f6703a = runnable;
            this.f6704b = cVar;
        }

        public final void run() {
            if (!this.c) {
                try {
                    this.f6703a.run();
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.f6704b.dispose();
                    throw h.wrapOrThrow(th);
                }
            }
        }

        public final void dispose() {
            this.c = true;
            this.f6704b.dispose();
        }

        public final boolean isDisposed() {
            return this.c;
        }

        public final Runnable getWrappedRunnable() {
            return this.f6703a;
        }
    }

    public static abstract class c implements io.reactivex.b.c {

        final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final Runnable f6705a;

            /* renamed from: b  reason: collision with root package name */
            final f f6706b;
            final long c;
            long d;
            long e;
            long f;

            a(long j, Runnable runnable, long j2, f fVar, long j3) {
                this.f6705a = runnable;
                this.f6706b = fVar;
                this.c = j3;
                this.e = j2;
                this.f = j;
            }

            public final void run() {
                long j;
                this.f6705a.run();
                if (!this.f6706b.isDisposed()) {
                    long now = c.this.now(TimeUnit.NANOSECONDS);
                    long j2 = this.e;
                    if (ah.f6700a + now < j2 || now >= j2 + this.c + ah.f6700a) {
                        long j3 = this.c;
                        long j4 = now + j3;
                        long j5 = this.d + 1;
                        this.d = j5;
                        this.f = j4 - (j3 * j5);
                        j = j4;
                    } else {
                        long j6 = this.f;
                        long j7 = this.d + 1;
                        this.d = j7;
                        j = j6 + (j7 * this.c);
                    }
                    this.e = now;
                    this.f6706b.replace(c.this.schedule(this, j - now, TimeUnit.NANOSECONDS));
                }
            }

            public final Runnable getWrappedRunnable() {
                return this.f6705a;
            }
        }

        public abstract io.reactivex.b.c schedule(Runnable runnable, long j, TimeUnit timeUnit);

        public io.reactivex.b.c schedule(Runnable runnable) {
            return schedule(runnable, 0, TimeUnit.NANOSECONDS);
        }

        public io.reactivex.b.c schedulePeriodically(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            long j3 = j;
            TimeUnit timeUnit2 = timeUnit;
            f fVar = new f();
            f fVar2 = new f(fVar);
            Runnable onSchedule = io.reactivex.g.a.onSchedule(runnable);
            long nanos = timeUnit2.toNanos(j2);
            long now = now(TimeUnit.NANOSECONDS);
            f fVar3 = fVar;
            a aVar = r0;
            a aVar2 = new a(now + timeUnit2.toNanos(j3), onSchedule, now, fVar2, nanos);
            io.reactivex.b.c schedule = schedule(aVar, j3, timeUnit2);
            if (schedule == EmptyDisposable.INSTANCE) {
                return schedule;
            }
            fVar3.replace(schedule);
            return fVar2;
        }

        public long now(TimeUnit timeUnit) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }
    }

    public abstract c createWorker();

    public void shutdown() {
    }

    public void start() {
    }

    public static long clockDriftTolerance() {
        return f6700a;
    }

    public long now(TimeUnit timeUnit) {
        return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
    }

    public io.reactivex.b.c scheduleDirect(Runnable runnable) {
        return scheduleDirect(runnable, 0, TimeUnit.NANOSECONDS);
    }

    public io.reactivex.b.c scheduleDirect(Runnable runnable, long j, TimeUnit timeUnit) {
        c createWorker = createWorker();
        a aVar = new a(io.reactivex.g.a.onSchedule(runnable), createWorker);
        createWorker.schedule(aVar, j, timeUnit);
        return aVar;
    }

    public io.reactivex.b.c schedulePeriodicallyDirect(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        c createWorker = createWorker();
        b bVar = new b(io.reactivex.g.a.onSchedule(runnable), createWorker);
        io.reactivex.b.c schedulePeriodically = createWorker.schedulePeriodically(bVar, j, j2, timeUnit);
        return schedulePeriodically == EmptyDisposable.INSTANCE ? schedulePeriodically : bVar;
    }

    public <S extends ah & io.reactivex.b.c> S when(io.reactivex.e.h<j<j<a>>, a> hVar) {
        return new q(hVar, this);
    }
}
