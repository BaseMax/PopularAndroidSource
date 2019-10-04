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

public final class bs extends j<Long> {

    /* renamed from: b  reason: collision with root package name */
    final ah f8055b;
    final long c;
    final long d;
    final TimeUnit e;

    static final class a extends AtomicLong implements Runnable, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super Long> f8056a;

        /* renamed from: b  reason: collision with root package name */
        long f8057b;
        final AtomicReference<io.reactivex.b.c> c = new AtomicReference<>();

        a(c<? super Long> cVar) {
            this.f8056a = cVar;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this, j);
            }
        }

        public final void cancel() {
            DisposableHelper.dispose(this.c);
        }

        public final void run() {
            if (this.c.get() != DisposableHelper.DISPOSED) {
                if (get() != 0) {
                    c<? super Long> cVar = this.f8056a;
                    long j = this.f8057b;
                    this.f8057b = j + 1;
                    cVar.onNext(Long.valueOf(j));
                    io.reactivex.internal.util.c.produced(this, 1);
                    return;
                }
                c<? super Long> cVar2 = this.f8056a;
                cVar2.onError(new io.reactivex.c.c("Can't deliver value " + this.f8057b + " due to lack of requests"));
                DisposableHelper.dispose(this.c);
            }
        }

        public final void setResource(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this.c, cVar);
        }
    }

    public bs(long j, long j2, TimeUnit timeUnit, ah ahVar) {
        this.c = j;
        this.d = j2;
        this.e = timeUnit;
        this.f8055b = ahVar;
    }

    public final void subscribeActual(c<? super Long> cVar) {
        a aVar = new a(cVar);
        cVar.onSubscribe(aVar);
        ah ahVar = this.f8055b;
        if (ahVar instanceof s) {
            ah.c createWorker = ahVar.createWorker();
            aVar.setResource(createWorker);
            createWorker.schedulePeriodically(aVar, this.c, this.d, this.e);
            return;
        }
        aVar.setResource(ahVar.schedulePeriodicallyDirect(aVar, this.c, this.d, this.e));
    }
}
