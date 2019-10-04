package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.e.s;
import io.reactivex.z;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class bp extends z<Long> {

    /* renamed from: a  reason: collision with root package name */
    final ah f7240a;

    /* renamed from: b  reason: collision with root package name */
    final long f7241b;
    final long c;
    final TimeUnit d;

    static final class a extends AtomicReference<c> implements c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super Long> f7242a;

        /* renamed from: b  reason: collision with root package name */
        long f7243b;

        a(ag<? super Long> agVar) {
            this.f7242a = agVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        public final void run() {
            if (get() != DisposableHelper.DISPOSED) {
                ag<? super Long> agVar = this.f7242a;
                long j = this.f7243b;
                this.f7243b = 1 + j;
                agVar.onNext(Long.valueOf(j));
            }
        }

        public final void setResource(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }
    }

    public bp(long j, long j2, TimeUnit timeUnit, ah ahVar) {
        this.f7241b = j;
        this.c = j2;
        this.d = timeUnit;
        this.f7240a = ahVar;
    }

    public final void subscribeActual(ag<? super Long> agVar) {
        a aVar = new a(agVar);
        agVar.onSubscribe(aVar);
        ah ahVar = this.f7240a;
        if (ahVar instanceof s) {
            ah.c createWorker = ahVar.createWorker();
            aVar.setResource(createWorker);
            createWorker.schedulePeriodically(aVar, this.f7241b, this.c, this.d);
            return;
        }
        aVar.setResource(ahVar.schedulePeriodicallyDirect(aVar, this.f7241b, this.c, this.d));
    }
}
