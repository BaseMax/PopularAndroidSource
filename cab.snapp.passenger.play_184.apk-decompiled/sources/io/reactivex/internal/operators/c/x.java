package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.d;
import io.reactivex.g;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicReference;

public final class x<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final g f7634b;

    static final class a<T> extends AtomicReference<c> implements ag<T>, c, d {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7635a;

        /* renamed from: b  reason: collision with root package name */
        g f7636b;
        boolean c;

        a(ag<? super T> agVar, g gVar) {
            this.f7635a = agVar;
            this.f7636b = gVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar) && !this.c) {
                this.f7635a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.f7635a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f7635a.onError(th);
        }

        public final void onComplete() {
            if (this.c) {
                this.f7635a.onComplete();
                return;
            }
            this.c = true;
            DisposableHelper.replace(this, null);
            g gVar = this.f7636b;
            this.f7636b = null;
            gVar.subscribe(this);
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public x(z<T> zVar, g gVar) {
        super(zVar);
        this.f7634b = gVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7634b));
    }
}
