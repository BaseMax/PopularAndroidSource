package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.c;
import io.reactivex.j;
import io.reactivex.t;
import io.reactivex.w;

public final class bm<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final w<T> f8540b;

    static final class a<T> extends c<T> implements t<T> {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.b.c f8541a;

        a(org.b.c<? super T> cVar) {
            super(cVar);
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.f8541a, cVar)) {
                this.f8541a = cVar;
                this.h.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            complete(t);
        }

        public final void onError(Throwable th) {
            this.h.onError(th);
        }

        public final void onComplete() {
            this.h.onComplete();
        }

        public final void cancel() {
            super.cancel();
            this.f8541a.dispose();
        }
    }

    public bm(w<T> wVar) {
        this.f8540b = wVar;
    }

    public final w<T> source() {
        return this.f8540b;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        this.f8540b.subscribe(new a(cVar));
    }
}
