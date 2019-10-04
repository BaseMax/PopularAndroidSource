package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.e.s;
import io.reactivex.z;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class bq extends z<Long> {

    /* renamed from: a  reason: collision with root package name */
    final ah f7244a;

    /* renamed from: b  reason: collision with root package name */
    final long f7245b;
    final long c;
    final long d;
    final long e;
    final TimeUnit f;

    static final class a extends AtomicReference<c> implements c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super Long> f7246a;

        /* renamed from: b  reason: collision with root package name */
        final long f7247b;
        long c;

        a(ag<? super Long> agVar, long j, long j2) {
            this.f7246a = agVar;
            this.c = j;
            this.f7247b = j2;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        public final void run() {
            if (!isDisposed()) {
                long j = this.c;
                this.f7246a.onNext(Long.valueOf(j));
                if (j == this.f7247b) {
                    DisposableHelper.dispose(this);
                    this.f7246a.onComplete();
                    return;
                }
                this.c = j + 1;
            }
        }

        public final void setResource(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }
    }

    public bq(long j, long j2, long j3, long j4, TimeUnit timeUnit, ah ahVar) {
        this.d = j3;
        this.e = j4;
        this.f = timeUnit;
        this.f7244a = ahVar;
        this.f7245b = j;
        this.c = j2;
    }

    public final void subscribeActual(ag<? super Long> agVar) {
        a aVar = new a(agVar, this.f7245b, this.c);
        agVar.onSubscribe(aVar);
        ah ahVar = this.f7244a;
        if (ahVar instanceof s) {
            ah.c createWorker = ahVar.createWorker();
            aVar.setResource(createWorker);
            createWorker.schedulePeriodically(aVar, this.d, this.e, this.f);
            return;
        }
        aVar.setResource(ahVar.schedulePeriodicallyDirect(aVar, this.d, this.e, this.f));
    }
}
