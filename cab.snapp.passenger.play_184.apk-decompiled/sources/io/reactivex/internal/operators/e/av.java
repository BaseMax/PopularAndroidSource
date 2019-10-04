package io.reactivex.internal.operators.e;

import io.reactivex.ag;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.c.l;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.z;

public final class av<T> extends z<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<? extends T> f7787a;

    static final class a<T> extends l<T> implements al<T> {
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

        public final void dispose() {
            super.dispose();
            this.c.dispose();
        }
    }

    public av(ao<? extends T> aoVar) {
        this.f7787a = aoVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7787a.subscribe(create(agVar));
    }

    public static <T> al<T> create(ag<? super T> agVar) {
        return new a(agVar);
    }
}
