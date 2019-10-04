package io.reactivex.internal.operators.a;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class ag extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g f6902a;

    /* renamed from: b  reason: collision with root package name */
    final ah f6903b;

    static final class a extends AtomicReference<c> implements c, d, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final d f6904a;

        /* renamed from: b  reason: collision with root package name */
        final ah f6905b;
        Throwable c;

        a(d dVar, ah ahVar) {
            this.f6904a = dVar;
            this.f6905b = ahVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f6904a.onSubscribe(this);
            }
        }

        public final void onError(Throwable th) {
            this.c = th;
            DisposableHelper.replace(this, this.f6905b.scheduleDirect(this));
        }

        public final void onComplete() {
            DisposableHelper.replace(this, this.f6905b.scheduleDirect(this));
        }

        public final void run() {
            Throwable th = this.c;
            if (th != null) {
                this.c = null;
                this.f6904a.onError(th);
                return;
            }
            this.f6904a.onComplete();
        }
    }

    public ag(g gVar, ah ahVar) {
        this.f6902a = gVar;
        this.f6903b = ahVar;
    }

    public final void subscribeActual(d dVar) {
        this.f6902a.subscribe(new a(dVar, this.f6903b));
    }
}
