package io.reactivex.internal.operators.maybe;

import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.c.l;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import io.reactivex.z;

public final class bn<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f8542a;

    static final class a<T> extends l<T> implements t<T> {
        c c;

        a(ag<? super T> agVar) {
            super(agVar);
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f6774a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            complete(t);
        }

        public final void onError(Throwable th) {
            error(th);
        }

        public final void onComplete() {
            complete();
        }

        public final void dispose() {
            super.dispose();
            this.c.dispose();
        }
    }

    public bn(w<T> wVar) {
        this.f8542a = wVar;
    }

    public final w<T> source() {
        return this.f8542a;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f8542a.subscribe(create(agVar));
    }

    public static <T> t<T> create(ag<? super T> agVar) {
        return new a(agVar);
    }
}
