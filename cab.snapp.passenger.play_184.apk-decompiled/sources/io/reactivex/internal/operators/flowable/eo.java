package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class eo extends j<Long> {

    /* renamed from: b  reason: collision with root package name */
    final ah f8272b;
    final long c;
    final TimeUnit d;

    static final class a extends AtomicReference<c> implements Runnable, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super Long> f8273a;

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f8274b;

        a(org.b.c<? super Long> cVar) {
            this.f8273a = cVar;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                this.f8274b = true;
            }
        }

        public final void cancel() {
            DisposableHelper.dispose(this);
        }

        public final void run() {
            if (get() != DisposableHelper.DISPOSED) {
                if (this.f8274b) {
                    this.f8273a.onNext(0L);
                    lazySet(EmptyDisposable.INSTANCE);
                    this.f8273a.onComplete();
                    return;
                }
                lazySet(EmptyDisposable.INSTANCE);
                this.f8273a.onError(new io.reactivex.c.c("Can't deliver value due to lack of requests"));
            }
        }

        public final void setResource(c cVar) {
            DisposableHelper.trySet(this, cVar);
        }
    }

    public eo(long j, TimeUnit timeUnit, ah ahVar) {
        this.c = j;
        this.d = timeUnit;
        this.f8272b = ahVar;
    }

    public final void subscribeActual(org.b.c<? super Long> cVar) {
        a aVar = new a(cVar);
        cVar.onSubscribe(aVar);
        aVar.setResource(this.f8272b.scheduleDirect(aVar, this.c, this.d));
    }
}
