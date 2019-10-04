package io.reactivex.internal.operators.a;

import io.reactivex.b.b;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import java.util.concurrent.atomic.AtomicInteger;

public final class ac extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g[] f6895a;

    static final class a implements d {

        /* renamed from: a  reason: collision with root package name */
        final d f6896a;

        /* renamed from: b  reason: collision with root package name */
        final b f6897b;
        final io.reactivex.internal.util.b c;
        final AtomicInteger d;

        a(d dVar, b bVar, io.reactivex.internal.util.b bVar2, AtomicInteger atomicInteger) {
            this.f6896a = dVar;
            this.f6897b = bVar;
            this.c = bVar2;
            this.d = atomicInteger;
        }

        public final void onSubscribe(c cVar) {
            this.f6897b.add(cVar);
        }

        public final void onError(Throwable th) {
            if (this.c.addThrowable(th)) {
                a();
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onComplete() {
            a();
        }

        private void a() {
            if (this.d.decrementAndGet() == 0) {
                Throwable terminate = this.c.terminate();
                if (terminate == null) {
                    this.f6896a.onComplete();
                    return;
                }
                this.f6896a.onError(terminate);
            }
        }
    }

    public ac(g[] gVarArr) {
        this.f6895a = gVarArr;
    }

    public final void subscribeActual(d dVar) {
        b bVar = new b();
        AtomicInteger atomicInteger = new AtomicInteger(this.f6895a.length + 1);
        io.reactivex.internal.util.b bVar2 = new io.reactivex.internal.util.b();
        dVar.onSubscribe(bVar);
        g[] gVarArr = this.f6895a;
        int length = gVarArr.length;
        int i = 0;
        while (i < length) {
            g gVar = gVarArr[i];
            if (!bVar.isDisposed()) {
                if (gVar == null) {
                    bVar2.addThrowable(new NullPointerException("A completable source is null"));
                    atomicInteger.decrementAndGet();
                } else {
                    gVar.subscribe(new a(dVar, bVar, bVar2, atomicInteger));
                }
                i++;
            } else {
                return;
            }
        }
        if (atomicInteger.decrementAndGet() == 0) {
            Throwable terminate = bVar2.terminate();
            if (terminate == null) {
                dVar.onComplete();
                return;
            }
            dVar.onError(terminate);
        }
    }
}
