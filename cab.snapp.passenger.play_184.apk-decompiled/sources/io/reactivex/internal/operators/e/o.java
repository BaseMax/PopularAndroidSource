package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;

public final class o<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7856a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e.a f7857b;

    static final class a<T> extends AtomicInteger implements al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7858a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.a f7859b;
        c c;

        a(al<? super T> alVar, io.reactivex.e.a aVar) {
            this.f7858a = alVar;
            this.f7859b = aVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7858a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f7858a.onSuccess(t);
            a();
        }

        public final void onError(Throwable th) {
            this.f7858a.onError(th);
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
                    this.f7859b.run();
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    io.reactivex.g.a.onError(th);
                }
            }
        }
    }

    public o(ao<T> aoVar, io.reactivex.e.a aVar) {
        this.f7856a = aoVar;
        this.f7857b = aVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7856a.subscribe(new a(alVar, this.f7857b));
    }
}
