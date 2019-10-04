package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;

public final class x extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g f7005a;

    static final class a implements c, d {

        /* renamed from: a  reason: collision with root package name */
        final d f7006a;

        /* renamed from: b  reason: collision with root package name */
        c f7007b;

        a(d dVar) {
            this.f7006a = dVar;
        }

        public final void dispose() {
            this.f7007b.dispose();
            this.f7007b = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.f7007b.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f7007b, cVar)) {
                this.f7007b = cVar;
                this.f7006a.onSubscribe(this);
            }
        }

        public final void onError(Throwable th) {
            this.f7006a.onError(th);
        }

        public final void onComplete() {
            this.f7006a.onComplete();
        }
    }

    public x(g gVar) {
        this.f7005a = gVar;
    }

    public final void subscribeActual(d dVar) {
        this.f7005a.subscribe(new a(dVar));
    }
}
