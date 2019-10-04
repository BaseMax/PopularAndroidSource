package io.reactivex.internal.operators.a;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class i extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g f6973a;

    /* renamed from: b  reason: collision with root package name */
    final long f6974b;
    final TimeUnit c;
    final ah d;
    final boolean e;

    static final class a extends AtomicReference<c> implements c, d, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final d f6975a;

        /* renamed from: b  reason: collision with root package name */
        final long f6976b;
        final TimeUnit c;
        final ah d;
        final boolean e;
        Throwable f;

        a(d dVar, long j, TimeUnit timeUnit, ah ahVar, boolean z) {
            this.f6975a = dVar;
            this.f6976b = j;
            this.c = timeUnit;
            this.d = ahVar;
            this.e = z;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f6975a.onSubscribe(this);
            }
        }

        public final void onComplete() {
            DisposableHelper.replace(this, this.d.scheduleDirect(this, this.f6976b, this.c));
        }

        public final void onError(Throwable th) {
            this.f = th;
            DisposableHelper.replace(this, this.d.scheduleDirect(this, this.e ? this.f6976b : 0, this.c));
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void run() {
            Throwable th = this.f;
            this.f = null;
            if (th != null) {
                this.f6975a.onError(th);
            } else {
                this.f6975a.onComplete();
            }
        }
    }

    public i(g gVar, long j, TimeUnit timeUnit, ah ahVar, boolean z) {
        this.f6973a = gVar;
        this.f6974b = j;
        this.c = timeUnit;
        this.d = ahVar;
        this.e = z;
    }

    public final void subscribeActual(d dVar) {
        g gVar = this.f6973a;
        a aVar = new a(dVar, this.f6974b, this.c, this.d, this.e);
        gVar.subscribe(aVar);
    }
}
