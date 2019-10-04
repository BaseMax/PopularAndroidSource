package io.reactivex.internal.e;

import io.reactivex.ah;
import io.reactivex.e.h;
import io.reactivex.j;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class q extends ah implements io.reactivex.b.c {

    /* renamed from: b  reason: collision with root package name */
    static final io.reactivex.b.c f6843b = new g();
    static final io.reactivex.b.c c = io.reactivex.b.d.disposed();
    private final ah d;
    private final io.reactivex.h.a<j<io.reactivex.a>> e = io.reactivex.h.c.create().toSerialized();
    private io.reactivex.b.c f;

    static final class a implements h<f, io.reactivex.a> {

        /* renamed from: a  reason: collision with root package name */
        final ah.c f6844a;

        /* renamed from: io.reactivex.internal.e.q$a$a  reason: collision with other inner class name */
        final class C0135a extends io.reactivex.a {

            /* renamed from: a  reason: collision with root package name */
            final f f6845a;

            C0135a(f fVar) {
                this.f6845a = fVar;
            }

            public final void subscribeActual(io.reactivex.d dVar) {
                dVar.onSubscribe(this.f6845a);
                this.f6845a.b(a.this.f6844a, dVar);
            }
        }

        a(ah.c cVar) {
            this.f6844a = cVar;
        }

        public final io.reactivex.a apply(f fVar) {
            return new C0135a(fVar);
        }
    }

    static class b extends f {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f6847a;

        /* renamed from: b  reason: collision with root package name */
        private final long f6848b;
        private final TimeUnit c;

        b(Runnable runnable, long j, TimeUnit timeUnit) {
            this.f6847a = runnable;
            this.f6848b = j;
            this.c = timeUnit;
        }

        /* access modifiers changed from: protected */
        public final io.reactivex.b.c a(ah.c cVar, io.reactivex.d dVar) {
            return cVar.schedule(new d(this.f6847a, dVar), this.f6848b, this.c);
        }
    }

    static class c extends f {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f6849a;

        c(Runnable runnable) {
            this.f6849a = runnable;
        }

        /* access modifiers changed from: protected */
        public final io.reactivex.b.c a(ah.c cVar, io.reactivex.d dVar) {
            return cVar.schedule(new d(this.f6849a, dVar));
        }
    }

    static class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f6850a;

        /* renamed from: b  reason: collision with root package name */
        final Runnable f6851b;

        d(Runnable runnable, io.reactivex.d dVar) {
            this.f6851b = runnable;
            this.f6850a = dVar;
        }

        public final void run() {
            try {
                this.f6851b.run();
            } finally {
                this.f6850a.onComplete();
            }
        }
    }

    static final class e extends ah.c {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicBoolean f6852a = new AtomicBoolean();

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.h.a<f> f6853b;
        private final ah.c c;

        e(io.reactivex.h.a<f> aVar, ah.c cVar) {
            this.f6853b = aVar;
            this.c = cVar;
        }

        public final void dispose() {
            if (this.f6852a.compareAndSet(false, true)) {
                this.f6853b.onComplete();
                this.c.dispose();
            }
        }

        public final boolean isDisposed() {
            return this.f6852a.get();
        }

        public final io.reactivex.b.c schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            b bVar = new b(runnable, j, timeUnit);
            this.f6853b.onNext(bVar);
            return bVar;
        }

        public final io.reactivex.b.c schedule(Runnable runnable) {
            c cVar = new c(runnable);
            this.f6853b.onNext(cVar);
            return cVar;
        }
    }

    static abstract class f extends AtomicReference<io.reactivex.b.c> implements io.reactivex.b.c {
        /* access modifiers changed from: protected */
        public abstract io.reactivex.b.c a(ah.c cVar, io.reactivex.d dVar);

        f() {
            super(q.f6843b);
        }

        /* access modifiers changed from: package-private */
        public final void b(ah.c cVar, io.reactivex.d dVar) {
            io.reactivex.b.c cVar2 = (io.reactivex.b.c) get();
            if (cVar2 != q.c && cVar2 == q.f6843b) {
                io.reactivex.b.c a2 = a(cVar, dVar);
                if (!compareAndSet(q.f6843b, a2)) {
                    a2.dispose();
                }
            }
        }

        public boolean isDisposed() {
            return ((io.reactivex.b.c) get()).isDisposed();
        }

        public void dispose() {
            io.reactivex.b.c cVar;
            io.reactivex.b.c cVar2 = q.c;
            do {
                cVar = (io.reactivex.b.c) get();
                if (cVar == q.c) {
                    return;
                }
            } while (!compareAndSet(cVar, cVar2));
            if (cVar != q.f6843b) {
                cVar.dispose();
            }
        }
    }

    static final class g implements io.reactivex.b.c {
        public final void dispose() {
        }

        public final boolean isDisposed() {
            return false;
        }

        g() {
        }
    }

    public q(h<j<j<io.reactivex.a>>, io.reactivex.a> hVar, ah ahVar) {
        this.d = ahVar;
        try {
            this.f = hVar.apply(this.e).subscribe();
        } catch (Throwable th) {
            throw io.reactivex.internal.util.h.wrapOrThrow(th);
        }
    }

    public final void dispose() {
        this.f.dispose();
    }

    public final boolean isDisposed() {
        return this.f.isDisposed();
    }

    public final ah.c createWorker() {
        ah.c createWorker = this.d.createWorker();
        io.reactivex.h.a serialized = io.reactivex.h.c.create().toSerialized();
        j map = serialized.map(new a(createWorker));
        e eVar = new e(serialized, createWorker);
        this.e.onNext(map);
        return eVar;
    }
}
