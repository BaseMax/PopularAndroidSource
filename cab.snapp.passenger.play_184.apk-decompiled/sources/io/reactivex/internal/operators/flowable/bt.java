package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.e.s;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class bt extends j<Long> {

    /* renamed from: b  reason: collision with root package name */
    final ah f8058b;
    final long c;
    final long d;
    final long e;
    final long f;
    final TimeUnit g;

    static final class a extends AtomicLong implements Runnable, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super Long> f8059a;

        /* renamed from: b  reason: collision with root package name */
        final long f8060b;
        long c;
        final AtomicReference<io.reactivex.b.c> d = new AtomicReference<>();

        a(c<? super Long> cVar, long j, long j2) {
            this.f8059a = cVar;
            this.c = j;
            this.f8060b = j2;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this, j);
            }
        }

        public final void cancel() {
            DisposableHelper.dispose(this.d);
        }

        public final void run() {
            if (this.d.get() != DisposableHelper.DISPOSED) {
                long j = get();
                if (j != 0) {
                    long j2 = this.c;
                    this.f8059a.onNext(Long.valueOf(j2));
                    if (j2 == this.f8060b) {
                        if (this.d.get() != DisposableHelper.DISPOSED) {
                            this.f8059a.onComplete();
                        }
                        DisposableHelper.dispose(this.d);
                        return;
                    }
                    this.c = j2 + 1;
                    if (j != Long.MAX_VALUE) {
                        decrementAndGet();
                    }
                    return;
                }
                c<? super Long> cVar = this.f8059a;
                cVar.onError(new io.reactivex.c.c("Can't deliver value " + this.c + " due to lack of requests"));
                DisposableHelper.dispose(this.d);
            }
        }

        public final void setResource(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this.d, cVar);
        }
    }

    public bt(long j, long j2, long j3, long j4, TimeUnit timeUnit, ah ahVar) {
        this.e = j3;
        this.f = j4;
        this.g = timeUnit;
        this.f8058b = ahVar;
        this.c = j;
        this.d = j2;
    }

    public final void subscribeActual(c<? super Long> cVar) {
        a aVar = new a(cVar, this.c, this.d);
        cVar.onSubscribe(aVar);
        ah ahVar = this.f8058b;
        if (ahVar instanceof s) {
            ah.c createWorker = ahVar.createWorker();
            aVar.setResource(createWorker);
            createWorker.schedulePeriodically(aVar, this.e, this.f, this.g);
            return;
        }
        aVar.setResource(ahVar.schedulePeriodicallyDirect(aVar, this.e, this.f, this.g));
    }
}
