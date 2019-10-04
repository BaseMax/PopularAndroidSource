package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.internal.c.y;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class g<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7825a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f7826b;

    static final class a<T> extends AtomicReference<c> implements c, d {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7827a;

        /* renamed from: b  reason: collision with root package name */
        final ao<T> f7828b;

        a(al<? super T> alVar, ao<T> aoVar) {
            this.f7827a = alVar;
            this.f7828b = aoVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f7827a.onSubscribe(this);
            }
        }

        public final void onError(Throwable th) {
            this.f7827a.onError(th);
        }

        public final void onComplete() {
            this.f7828b.subscribe(new y(this, this.f7827a));
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public g(ao<T> aoVar, io.reactivex.g gVar) {
        this.f7825a = aoVar;
        this.f7826b = gVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7826b.subscribe(new a(alVar, this.f7825a));
    }
}
