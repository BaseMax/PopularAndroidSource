package io.reactivex.internal.operators.a;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.util.h;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

public final class am extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g f6927a;

    /* renamed from: b  reason: collision with root package name */
    final long f6928b;
    final TimeUnit c;
    final ah d;
    final g e;

    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.b.b f6929a;

        /* renamed from: b  reason: collision with root package name */
        final d f6930b;
        private final AtomicBoolean d;

        /* renamed from: io.reactivex.internal.operators.a.am$a$a  reason: collision with other inner class name */
        final class C0139a implements d {
            C0139a() {
            }

            public final void onSubscribe(c cVar) {
                a.this.f6929a.add(cVar);
            }

            public final void onError(Throwable th) {
                a.this.f6929a.dispose();
                a.this.f6930b.onError(th);
            }

            public final void onComplete() {
                a.this.f6929a.dispose();
                a.this.f6930b.onComplete();
            }
        }

        a(AtomicBoolean atomicBoolean, io.reactivex.b.b bVar, d dVar) {
            this.d = atomicBoolean;
            this.f6929a = bVar;
            this.f6930b = dVar;
        }

        public final void run() {
            if (this.d.compareAndSet(false, true)) {
                this.f6929a.clear();
                if (am.this.e == null) {
                    this.f6930b.onError(new TimeoutException(h.timeoutMessage(am.this.f6928b, am.this.c)));
                    return;
                }
                am.this.e.subscribe(new C0139a());
            }
        }
    }

    static final class b implements d {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.b.b f6932a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicBoolean f6933b;
        private final d c;

        b(io.reactivex.b.b bVar, AtomicBoolean atomicBoolean, d dVar) {
            this.f6932a = bVar;
            this.f6933b = atomicBoolean;
            this.c = dVar;
        }

        public final void onSubscribe(c cVar) {
            this.f6932a.add(cVar);
        }

        public final void onError(Throwable th) {
            if (this.f6933b.compareAndSet(false, true)) {
                this.f6932a.dispose();
                this.c.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (this.f6933b.compareAndSet(false, true)) {
                this.f6932a.dispose();
                this.c.onComplete();
            }
        }
    }

    public am(g gVar, long j, TimeUnit timeUnit, ah ahVar, g gVar2) {
        this.f6927a = gVar;
        this.f6928b = j;
        this.c = timeUnit;
        this.d = ahVar;
        this.e = gVar2;
    }

    public final void subscribeActual(d dVar) {
        io.reactivex.b.b bVar = new io.reactivex.b.b();
        dVar.onSubscribe(bVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        bVar.add(this.d.scheduleDirect(new a(atomicBoolean, bVar, dVar), this.f6928b, this.c));
        this.f6927a.subscribe(new b(bVar, atomicBoolean, dVar));
    }
}
