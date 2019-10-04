package io.reactivex.internal.operators.a;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;

public final class l extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final g f6984a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e.a f6985b;

    static final class a extends AtomicInteger implements c, d {

        /* renamed from: a  reason: collision with root package name */
        final d f6986a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.a f6987b;
        c c;

        a(d dVar, io.reactivex.e.a aVar) {
            this.f6986a = dVar;
            this.f6987b = aVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f6986a.onSubscribe(this);
            }
        }

        public final void onError(Throwable th) {
            this.f6986a.onError(th);
            a();
        }

        public final void onComplete() {
            this.f6986a.onComplete();
            a();
        }

        public final void dispose() {
            this.c.dispose();
            a();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        private void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f6987b.run();
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    io.reactivex.g.a.onError(th);
                }
            }
        }
    }

    public l(g gVar, io.reactivex.e.a aVar) {
        this.f6984a = gVar;
        this.f6985b = aVar;
    }

    public final void subscribeActual(d dVar) {
        this.f6984a.subscribe(new a(dVar, this.f6985b));
    }
}
