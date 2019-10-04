package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicReference;

public final class y<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final w<? extends T> f7637b;

    static final class a<T> extends AtomicReference<c> implements ag<T>, c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7638a;

        /* renamed from: b  reason: collision with root package name */
        w<? extends T> f7639b;
        boolean c;

        a(ag<? super T> agVar, w<? extends T> wVar) {
            this.f7638a = agVar;
            this.f7639b = wVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar) && !this.c) {
                this.f7638a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.f7638a.onNext(t);
        }

        public final void onSuccess(T t) {
            this.f7638a.onNext(t);
            this.f7638a.onComplete();
        }

        public final void onError(Throwable th) {
            this.f7638a.onError(th);
        }

        public final void onComplete() {
            if (this.c) {
                this.f7638a.onComplete();
                return;
            }
            this.c = true;
            DisposableHelper.replace(this, null);
            w<? extends T> wVar = this.f7639b;
            this.f7639b = null;
            wVar.subscribe(this);
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }
    }

    public y(z<T> zVar, w<? extends T> wVar) {
        super(zVar);
        this.f7637b = wVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7637b));
    }
}
