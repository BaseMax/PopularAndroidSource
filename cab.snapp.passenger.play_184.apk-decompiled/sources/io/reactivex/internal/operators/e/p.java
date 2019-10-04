package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class p<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7860a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e.a f7861b;

    static final class a<T> extends AtomicReference<io.reactivex.e.a> implements al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7862a;

        /* renamed from: b  reason: collision with root package name */
        c f7863b;

        a(al<? super T> alVar, io.reactivex.e.a aVar) {
            this.f7862a = alVar;
            lazySet(aVar);
        }

        public final void dispose() {
            io.reactivex.e.a aVar = (io.reactivex.e.a) getAndSet(null);
            if (aVar != null) {
                try {
                    aVar.run();
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    io.reactivex.g.a.onError(th);
                }
                this.f7863b.dispose();
            }
        }

        public final boolean isDisposed() {
            return this.f7863b.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f7863b, cVar)) {
                this.f7863b = cVar;
                this.f7862a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f7862a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.f7862a.onError(th);
        }
    }

    public p(ao<T> aoVar, io.reactivex.e.a aVar) {
        this.f7860a = aoVar;
        this.f7861b = aVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7860a.subscribe(new a(alVar, this.f7861b));
    }
}
