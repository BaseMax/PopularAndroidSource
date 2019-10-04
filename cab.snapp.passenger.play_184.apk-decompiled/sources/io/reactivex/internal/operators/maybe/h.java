package io.reactivex.internal.operators.maybe;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;

public final class h<T> extends ai<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f8578a;

    /* renamed from: b  reason: collision with root package name */
    final Object f8579b;

    static final class a implements c, t<Object> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super Boolean> f8580a;

        /* renamed from: b  reason: collision with root package name */
        final Object f8581b;
        c c;

        a(al<? super Boolean> alVar, Object obj) {
            this.f8580a = alVar;
            this.f8581b = obj;
        }

        public final void dispose() {
            this.c.dispose();
            this.c = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f8580a.onSubscribe(this);
            }
        }

        public final void onSuccess(Object obj) {
            this.c = DisposableHelper.DISPOSED;
            this.f8580a.onSuccess(Boolean.valueOf(b.equals(obj, this.f8581b)));
        }

        public final void onError(Throwable th) {
            this.c = DisposableHelper.DISPOSED;
            this.f8580a.onError(th);
        }

        public final void onComplete() {
            this.c = DisposableHelper.DISPOSED;
            this.f8580a.onSuccess(Boolean.FALSE);
        }
    }

    public h(w<T> wVar, Object obj) {
        this.f8578a = wVar;
        this.f8579b = obj;
    }

    public final w<T> source() {
        return this.f8578a;
    }

    public final void subscribeActual(al<? super Boolean> alVar) {
        this.f8578a.subscribe(new a(alVar, this.f8579b));
    }
}
