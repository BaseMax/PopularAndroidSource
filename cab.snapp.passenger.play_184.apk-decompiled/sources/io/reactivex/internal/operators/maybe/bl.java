package io.reactivex.internal.operators.maybe;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class bl extends q<Long> {

    /* renamed from: a  reason: collision with root package name */
    final long f8537a;

    /* renamed from: b  reason: collision with root package name */
    final TimeUnit f8538b;
    final ah c;

    static final class a extends AtomicReference<c> implements c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final t<? super Long> f8539a;

        a(t<? super Long> tVar) {
            this.f8539a = tVar;
        }

        public final void run() {
            this.f8539a.onSuccess(0L);
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public bl(long j, TimeUnit timeUnit, ah ahVar) {
        this.f8537a = j;
        this.f8538b = timeUnit;
        this.c = ahVar;
    }

    public final void subscribeActual(t<? super Long> tVar) {
        a aVar = new a(tVar);
        tVar.onSubscribe(aVar);
        DisposableHelper.replace(aVar, this.c.scheduleDirect(aVar, this.f8537a, this.f8538b));
    }
}
