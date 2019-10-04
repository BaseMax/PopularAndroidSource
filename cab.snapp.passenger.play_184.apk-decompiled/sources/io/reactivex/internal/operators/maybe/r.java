package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicInteger;

public final class r<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e.a f8611b;

    static final class a<T> extends AtomicInteger implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8612a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.a f8613b;
        c c;

        a(t<? super T> tVar, io.reactivex.e.a aVar) {
            this.f8612a = tVar;
            this.f8613b = aVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f8612a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f8612a.onSuccess(t);
            a();
        }

        public final void onError(Throwable th) {
            this.f8612a.onError(th);
            a();
        }

        public final void onComplete() {
            this.f8612a.onComplete();
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
                    this.f8613b.run();
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    io.reactivex.g.a.onError(th);
                }
            }
        }
    }

    public r(w<T> wVar, io.reactivex.e.a aVar) {
        super(wVar);
        this.f8611b = aVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8611b));
    }
}
