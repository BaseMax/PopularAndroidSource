package io.reactivex.internal.operators.a;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;

public final class k extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g f6980a;

    /* renamed from: b  reason: collision with root package name */
    final ah f6981b;

    static final class a implements c, d, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final d f6982a;

        /* renamed from: b  reason: collision with root package name */
        final ah f6983b;
        c c;
        volatile boolean d;

        a(d dVar, ah ahVar) {
            this.f6982a = dVar;
            this.f6983b = ahVar;
        }

        public final void onComplete() {
            if (!this.d) {
                this.f6982a.onComplete();
            }
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
            } else {
                this.f6982a.onError(th);
            }
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f6982a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.d = true;
            this.f6983b.scheduleDirect(this);
        }

        public final boolean isDisposed() {
            return this.d;
        }

        public final void run() {
            this.c.dispose();
            this.c = DisposableHelper.DISPOSED;
        }
    }

    public k(g gVar, ah ahVar) {
        this.f6980a = gVar;
        this.f6981b = ahVar;
    }

    public final void subscribeActual(d dVar) {
        this.f6980a.subscribe(new a(dVar, this.f6981b));
    }
}
