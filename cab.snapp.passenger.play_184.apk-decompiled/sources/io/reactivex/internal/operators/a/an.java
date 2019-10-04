package io.reactivex.internal.operators.a;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class an extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final long f6934a;

    /* renamed from: b  reason: collision with root package name */
    final TimeUnit f6935b;
    final ah c;

    static final class a extends AtomicReference<c> implements c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final d f6936a;

        a(d dVar) {
            this.f6936a = dVar;
        }

        public final void run() {
            this.f6936a.onComplete();
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public an(long j, TimeUnit timeUnit, ah ahVar) {
        this.f6934a = j;
        this.f6935b = timeUnit;
        this.c = ahVar;
    }

    public final void subscribeActual(d dVar) {
        a aVar = new a(dVar);
        dVar.onSubscribe(aVar);
        DisposableHelper.replace(aVar, this.c.scheduleDirect(aVar, this.f6934a, this.f6935b));
    }
}
