package io.reactivex.internal.operators.e;

import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.e.h;
import io.reactivex.g;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class y<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7895a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends g> f7896b;

    static final class a<T> extends AtomicReference<c> implements al<T>, c, d {

        /* renamed from: a  reason: collision with root package name */
        final d f7897a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends g> f7898b;

        a(d dVar, h<? super T, ? extends g> hVar) {
            this.f7897a = dVar;
            this.f7898b = hVar;
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
                g gVar = (g) b.requireNonNull(this.f7898b.apply(t), "The mapper returned a null CompletableSource");
                if (!isDisposed()) {
                    gVar.subscribe(this);
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f7897a.onError(th);
        }

        public final void onComplete() {
            this.f7897a.onComplete();
        }
    }

    public y(ao<T> aoVar, h<? super T, ? extends g> hVar) {
        this.f7895a = aoVar;
        this.f7896b = hVar;
    }

    public final void subscribeActual(d dVar) {
        a aVar = new a(dVar, this.f7896b);
        dVar.onSubscribe(aVar);
        this.f7895a.subscribe(aVar);
    }
}
