package io.reactivex.internal.operators.a;

import io.reactivex.b.b;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class ab extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g[] f6892a;

    static final class a extends AtomicInteger implements d {

        /* renamed from: a  reason: collision with root package name */
        final d f6893a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicBoolean f6894b;
        final b c;

        a(d dVar, AtomicBoolean atomicBoolean, b bVar, int i) {
            this.f6893a = dVar;
            this.f6894b = atomicBoolean;
            this.c = bVar;
            lazySet(i);
        }

        public final void onSubscribe(c cVar) {
            this.c.add(cVar);
        }

        public final void onError(Throwable th) {
            this.c.dispose();
            if (this.f6894b.compareAndSet(false, true)) {
                this.f6893a.onError(th);
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onComplete() {
            if (decrementAndGet() == 0 && this.f6894b.compareAndSet(false, true)) {
                this.f6893a.onComplete();
            }
        }
    }

    public ab(g[] gVarArr) {
        this.f6892a = gVarArr;
    }

    public final void subscribeActual(d dVar) {
        b bVar = new b();
        a aVar = new a(dVar, new AtomicBoolean(), bVar, this.f6892a.length + 1);
        dVar.onSubscribe(bVar);
        g[] gVarArr = this.f6892a;
        int length = gVarArr.length;
        int i = 0;
        while (i < length) {
            g gVar = gVarArr[i];
            if (!bVar.isDisposed()) {
                if (gVar == null) {
                    bVar.dispose();
                    aVar.onError(new NullPointerException("A completable source is null"));
                    return;
                }
                gVar.subscribe(aVar);
                i++;
            } else {
                return;
            }
        }
        aVar.onComplete();
    }
}
