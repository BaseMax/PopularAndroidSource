package io.reactivex.internal.operators.e;

import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.c;
import io.reactivex.j;

public final class au<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final ao<? extends T> f7785b;

    static final class a<T> extends c<T> implements al<T> {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.b.c f7786a;

        a(org.b.c<? super T> cVar) {
            super(cVar);
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.f7786a, cVar)) {
                this.f7786a = cVar;
                this.h.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            complete(t);
        }

        public final void onError(Throwable th) {
            this.h.onError(th);
        }

        public final void cancel() {
            super.cancel();
            this.f7786a.dispose();
        }
    }

    public au(ao<? extends T> aoVar) {
        this.f7785b = aoVar;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        this.f7785b.subscribe(new a(cVar));
    }
}
