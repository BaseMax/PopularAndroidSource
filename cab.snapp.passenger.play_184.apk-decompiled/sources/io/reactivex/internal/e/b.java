package io.reactivex.internal.e;

import io.reactivex.ah;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.d;
import io.reactivex.internal.e.o;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class b extends ah implements o {

    /* renamed from: b  reason: collision with root package name */
    static final C0133b f6805b;
    static final k c = new k("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx2.computation-priority", 5).intValue())), true);
    static final int d;
    static final c e;
    final ThreadFactory f;
    final AtomicReference<C0133b> g;

    static final class a extends ah.c {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f6806a;

        /* renamed from: b  reason: collision with root package name */
        private final d f6807b = new d();
        private final io.reactivex.b.b c = new io.reactivex.b.b();
        private final d d = new d();
        private final c e;

        a(c cVar) {
            this.e = cVar;
            this.d.add(this.f6807b);
            this.d.add(this.c);
        }

        public final void dispose() {
            if (!this.f6806a) {
                this.f6806a = true;
                this.d.dispose();
            }
        }

        public final boolean isDisposed() {
            return this.f6806a;
        }

        public final io.reactivex.b.c schedule(Runnable runnable) {
            if (this.f6806a) {
                return EmptyDisposable.INSTANCE;
            }
            return this.e.scheduleActual(runnable, 0, TimeUnit.MILLISECONDS, this.f6807b);
        }

        public final io.reactivex.b.c schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            if (this.f6806a) {
                return EmptyDisposable.INSTANCE;
            }
            return this.e.scheduleActual(runnable, j, timeUnit, this.c);
        }
    }

    /* renamed from: io.reactivex.internal.e.b$b  reason: collision with other inner class name */
    static final class C0133b implements o {

        /* renamed from: a  reason: collision with root package name */
        final int f6808a;

        /* renamed from: b  reason: collision with root package name */
        final c[] f6809b;
        long c;

        C0133b(int i, ThreadFactory threadFactory) {
            this.f6808a = i;
            this.f6809b = new c[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.f6809b[i2] = new c(threadFactory);
            }
        }

        public final c getEventLoop() {
            int i = this.f6808a;
            if (i == 0) {
                return b.e;
            }
            c[] cVarArr = this.f6809b;
            long j = this.c;
            this.c = 1 + j;
            return cVarArr[(int) (j % ((long) i))];
        }

        public final void shutdown() {
            for (c dispose : this.f6809b) {
                dispose.dispose();
            }
        }

        public final void createWorkers(int i, o.a aVar) {
            int i2 = this.f6808a;
            if (i2 == 0) {
                for (int i3 = 0; i3 < i; i3++) {
                    aVar.onWorker(i3, b.e);
                }
                return;
            }
            int i4 = ((int) this.c) % i2;
            for (int i5 = 0; i5 < i; i5++) {
                aVar.onWorker(i5, new a(this.f6809b[i4]));
                i4++;
                if (i4 == i2) {
                    i4 = 0;
                }
            }
            this.c = (long) i4;
        }
    }

    static final class c extends i {
        c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        int intValue = Integer.getInteger("rx2.computation-threads", 0).intValue();
        if (intValue > 0 && intValue <= availableProcessors) {
            availableProcessors = intValue;
        }
        d = availableProcessors;
        c cVar = new c(new k("RxComputationShutdown"));
        e = cVar;
        cVar.dispose();
        C0133b bVar = new C0133b(0, c);
        f6805b = bVar;
        bVar.shutdown();
    }

    public b() {
        this(c);
    }

    public b(ThreadFactory threadFactory) {
        this.f = threadFactory;
        this.g = new AtomicReference<>(f6805b);
        start();
    }

    public final ah.c createWorker() {
        return new a(this.g.get().getEventLoop());
    }

    public final void createWorkers(int i, o.a aVar) {
        io.reactivex.internal.a.b.verifyPositive(i, "number > 0 required");
        this.g.get().createWorkers(i, aVar);
    }

    public final io.reactivex.b.c scheduleDirect(Runnable runnable, long j, TimeUnit timeUnit) {
        return this.g.get().getEventLoop().scheduleDirect(runnable, j, timeUnit);
    }

    public final io.reactivex.b.c schedulePeriodicallyDirect(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        return this.g.get().getEventLoop().schedulePeriodicallyDirect(runnable, j, j2, timeUnit);
    }

    public final void start() {
        C0133b bVar = new C0133b(d, this.f);
        if (!this.g.compareAndSet(f6805b, bVar)) {
            bVar.shutdown();
        }
    }

    public final void shutdown() {
        C0133b bVar;
        C0133b bVar2;
        do {
            bVar = this.g.get();
            bVar2 = f6805b;
            if (bVar == bVar2) {
                return;
            }
        } while (!this.g.compareAndSet(bVar, bVar2));
        bVar.shutdown();
    }
}
