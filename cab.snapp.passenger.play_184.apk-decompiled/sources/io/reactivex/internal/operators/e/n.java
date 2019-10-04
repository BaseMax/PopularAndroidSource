package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.internal.disposables.DisposableHelper;

public final class n<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7852a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e.a f7853b;

    static final class a<T> implements al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7854a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.a f7855b;
        c c;

        a(al<? super T> alVar, io.reactivex.e.a aVar) {
            this.f7854a = alVar;
            this.f7855b = aVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7854a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f7854a.onSuccess(t);
            a();
        }

        public final void onError(Throwable th) {
            this.f7854a.onError(th);
            a();
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        private void a() {
            try {
                this.f7855b.run();
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
        }
    }

    public n(ao<T> aoVar, io.reactivex.e.a aVar) {
        this.f7852a = aoVar;
        this.f7853b = aVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7852a.subscribe(new a(alVar, this.f7853b));
    }
}
