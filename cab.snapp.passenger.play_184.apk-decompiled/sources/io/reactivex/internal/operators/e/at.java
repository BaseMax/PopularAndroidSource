package io.reactivex.internal.operators.e;

import io.reactivex.ah;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class at extends ai<Long> {

    /* renamed from: a  reason: collision with root package name */
    final long f7782a;

    /* renamed from: b  reason: collision with root package name */
    final TimeUnit f7783b;
    final ah c;

    static final class a extends AtomicReference<c> implements c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final al<? super Long> f7784a;

        a(al<? super Long> alVar) {
            this.f7784a = alVar;
        }

        public final void run() {
            this.f7784a.onSuccess(0L);
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public at(long j, TimeUnit timeUnit, ah ahVar) {
        this.f7782a = j;
        this.f7783b = timeUnit;
        this.c = ahVar;
    }

    public final void subscribeActual(al<? super Long> alVar) {
        a aVar = new a(alVar);
        alVar.onSubscribe(aVar);
        DisposableHelper.replace(aVar, this.c.scheduleDirect(aVar, this.f7782a, this.f7783b));
    }
}
