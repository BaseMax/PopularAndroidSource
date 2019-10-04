package io.reactivex.internal.operators.maybe;

import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.e.h;
import io.reactivex.g;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class ab<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f8415a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends g> f8416b;

    static final class a<T> extends AtomicReference<c> implements c, d, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final d f8417a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends g> f8418b;

        a(d dVar, h<? super T, ? extends g> hVar) {
            this.f8417a = dVar;
            this.f8418b = hVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.replace(this, cVar);
        }

        public final void onSuccess(T t) {
            try {
                g gVar = (g) b.requireNonNull(this.f8418b.apply(t), "The mapper returned a null CompletableSource");
                if (!isDisposed()) {
                    gVar.subscribe(this);
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f8417a.onError(th);
        }

        public final void onComplete() {
            this.f8417a.onComplete();
        }
    }

    public ab(w<T> wVar, h<? super T, ? extends g> hVar) {
        this.f8415a = wVar;
        this.f8416b = hVar;
    }

    public final void subscribeActual(d dVar) {
        a aVar = new a(dVar, this.f8416b);
        dVar.onSubscribe(aVar);
        this.f8415a.subscribe(aVar);
    }
}
