package io.reactivex.internal.operators.maybe;

import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.f;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicReference;

public final class be<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final ah f8503b;

    static final class a<T> extends AtomicReference<c> implements c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final f f8504a = new f();

        /* renamed from: b  reason: collision with root package name */
        final t<? super T> f8505b;

        a(t<? super T> tVar) {
            this.f8505b = tVar;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
            this.f8504a.dispose();
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onSuccess(T t) {
            this.f8505b.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.f8505b.onError(th);
        }

        public final void onComplete() {
            this.f8505b.onComplete();
        }
    }

    static final class b<T> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8506a;

        /* renamed from: b  reason: collision with root package name */
        final w<T> f8507b;

        b(t<? super T> tVar, w<T> wVar) {
            this.f8506a = tVar;
            this.f8507b = wVar;
        }

        public final void run() {
            this.f8507b.subscribe(this.f8506a);
        }
    }

    public be(w<T> wVar, ah ahVar) {
        super(wVar);
        this.f8503b = ahVar;
    }

    public final void subscribeActual(t<? super T> tVar) {
        a aVar = new a(tVar);
        tVar.onSubscribe(aVar);
        aVar.f8504a.replace(this.f8503b.scheduleDirect(new b(aVar, this.f8409a)));
    }
}
