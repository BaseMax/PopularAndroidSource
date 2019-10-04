package io.reactivex.internal.e;

import io.reactivex.ah;
import io.reactivex.b.d;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class s extends ah {

    /* renamed from: b  reason: collision with root package name */
    private static final s f6857b = new s();

    static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f6858a;

        /* renamed from: b  reason: collision with root package name */
        private final c f6859b;
        private final long c;

        a(Runnable runnable, c cVar, long j) {
            this.f6858a = runnable;
            this.f6859b = cVar;
            this.c = j;
        }

        public final void run() {
            if (!this.f6859b.c) {
                long now = this.f6859b.now(TimeUnit.MILLISECONDS);
                long j = this.c;
                if (j > now) {
                    try {
                        Thread.sleep(j - now);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        io.reactivex.g.a.onError(e);
                        return;
                    }
                }
                if (!this.f6859b.c) {
                    this.f6858a.run();
                }
            }
        }
    }

    static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f6860a;

        /* renamed from: b  reason: collision with root package name */
        final long f6861b;
        final int c;
        volatile boolean d;

        b(Runnable runnable, Long l, int i) {
            this.f6860a = runnable;
            this.f6861b = l.longValue();
            this.c = i;
        }

        public final int compareTo(b bVar) {
            int compare = io.reactivex.internal.a.b.compare(this.f6861b, bVar.f6861b);
            return compare == 0 ? io.reactivex.internal.a.b.compare(this.c, bVar.c) : compare;
        }
    }

    static final class c extends ah.c implements io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final PriorityBlockingQueue<b> f6862a = new PriorityBlockingQueue<>();

        /* renamed from: b  reason: collision with root package name */
        final AtomicInteger f6863b = new AtomicInteger();
        volatile boolean c;
        private final AtomicInteger d = new AtomicInteger();

        final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final b f6864a;

            a(b bVar) {
                this.f6864a = bVar;
            }

            public final void run() {
                this.f6864a.d = true;
                c.this.f6862a.remove(this.f6864a);
            }
        }

        c() {
        }

        public final io.reactivex.b.c schedule(Runnable runnable) {
            return a(runnable, now(TimeUnit.MILLISECONDS));
        }

        public final io.reactivex.b.c schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            long now = now(TimeUnit.MILLISECONDS) + timeUnit.toMillis(j);
            return a(new a(runnable, this, now), now);
        }

        private io.reactivex.b.c a(Runnable runnable, long j) {
            if (this.c) {
                return EmptyDisposable.INSTANCE;
            }
            b bVar = new b(runnable, Long.valueOf(j), this.f6863b.incrementAndGet());
            this.f6862a.add(bVar);
            if (this.d.getAndIncrement() != 0) {
                return d.fromRunnable(new a(bVar));
            }
            int i = 1;
            while (!this.c) {
                b poll = this.f6862a.poll();
                if (poll == null) {
                    i = this.d.addAndGet(-i);
                    if (i == 0) {
                        return EmptyDisposable.INSTANCE;
                    }
                } else if (!poll.d) {
                    poll.f6860a.run();
                }
            }
            this.f6862a.clear();
            return EmptyDisposable.INSTANCE;
        }

        public final void dispose() {
            this.c = true;
        }

        public final boolean isDisposed() {
            return this.c;
        }
    }

    public static s instance() {
        return f6857b;
    }

    public final ah.c createWorker() {
        return new c();
    }

    s() {
    }

    public final io.reactivex.b.c scheduleDirect(Runnable runnable) {
        io.reactivex.g.a.onSchedule(runnable).run();
        return EmptyDisposable.INSTANCE;
    }

    public final io.reactivex.b.c scheduleDirect(Runnable runnable, long j, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j);
            io.reactivex.g.a.onSchedule(runnable).run();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            io.reactivex.g.a.onError(e);
        }
        return EmptyDisposable.INSTANCE;
    }
}
