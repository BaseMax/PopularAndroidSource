package io.reactivex.internal.operators.maybe;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class l<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f8588b;
    final TimeUnit c;
    final ah d;

    static final class a<T> extends AtomicReference<c> implements c, t<T>, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8589a;

        /* renamed from: b  reason: collision with root package name */
        final long f8590b;
        final TimeUnit c;
        final ah d;
        T e;
        Throwable f;

        a(t<? super T> tVar, long j, TimeUnit timeUnit, ah ahVar) {
            this.f8589a = tVar;
            this.f8590b = j;
            this.c = timeUnit;
            this.d = ahVar;
        }

        public final void run() {
            Throwable th = this.f;
            if (th != null) {
                this.f8589a.onError(th);
                return;
            }
            T t = this.e;
            if (t != null) {
                this.f8589a.onSuccess(t);
            } else {
                this.f8589a.onComplete();
            }
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f8589a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.e = t;
            a();
        }

        public final void onError(Throwable th) {
            this.f = th;
            a();
        }

        public final void onComplete() {
            a();
        }

        private void a() {
            DisposableHelper.replace(this, this.d.scheduleDirect(this, this.f8590b, this.c));
        }
    }

    public l(w<T> wVar, long j, TimeUnit timeUnit, ah ahVar) {
        super(wVar);
        this.f8588b = j;
        this.c = timeUnit;
        this.d = ahVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        w wVar = this.f8409a;
        a aVar = new a(tVar, this.f8588b, this.c, this.d);
        wVar.subscribe(aVar);
    }
}
