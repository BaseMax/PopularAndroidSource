package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.z;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class eb extends z<Long> {

    /* renamed from: a  reason: collision with root package name */
    final ah f7492a;

    /* renamed from: b  reason: collision with root package name */
    final long f7493b;
    final TimeUnit c;

    static final class a extends AtomicReference<c> implements c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super Long> f7494a;

        a(ag<? super Long> agVar) {
            this.f7494a = agVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        public final void run() {
            if (!isDisposed()) {
                this.f7494a.onNext(0L);
                lazySet(EmptyDisposable.INSTANCE);
                this.f7494a.onComplete();
            }
        }

        public final void setResource(c cVar) {
            DisposableHelper.trySet(this, cVar);
        }
    }

    public eb(long j, TimeUnit timeUnit, ah ahVar) {
        this.f7493b = j;
        this.c = timeUnit;
        this.f7492a = ahVar;
    }

    public final void subscribeActual(ag<? super Long> agVar) {
        a aVar = new a(agVar);
        agVar.onSubscribe(aVar);
        aVar.setResource(this.f7492a.scheduleDirect(aVar, this.f7493b, this.c));
    }
}
