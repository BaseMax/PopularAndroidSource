package io.reactivex.internal.operators.maybe;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class az<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final ah f8482b;

    static final class a<T> extends AtomicReference<c> implements c, t<T>, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8483a;

        /* renamed from: b  reason: collision with root package name */
        final ah f8484b;
        T c;
        Throwable d;

        a(t<? super T> tVar, ah ahVar) {
            this.f8483a = tVar;
            this.f8484b = ahVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f8483a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.c = t;
            DisposableHelper.replace(this, this.f8484b.scheduleDirect(this));
        }

        public final void onError(Throwable th) {
            this.d = th;
            DisposableHelper.replace(this, this.f8484b.scheduleDirect(this));
        }

        public final void onComplete() {
            DisposableHelper.replace(this, this.f8484b.scheduleDirect(this));
        }

        public final void run() {
            Throwable th = this.d;
            if (th != null) {
                this.d = null;
                this.f8483a.onError(th);
                return;
            }
            T t = this.c;
            if (t != null) {
                this.c = null;
                this.f8483a.onSuccess(t);
                return;
            }
            this.f8483a.onComplete();
        }
    }

    public az(w<T> wVar, ah ahVar) {
        super(wVar);
        this.f8482b = ahVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8409a.subscribe(new a(tVar, this.f8482b));
    }
}
