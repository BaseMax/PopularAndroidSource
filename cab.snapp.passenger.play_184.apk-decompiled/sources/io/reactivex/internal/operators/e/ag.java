package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;

public final class ag<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<? extends T> f7740a;

    static final class a<T> implements al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7741a;

        /* renamed from: b  reason: collision with root package name */
        c f7742b;

        a(al<? super T> alVar) {
            this.f7741a = alVar;
        }

        public final void dispose() {
            this.f7742b.dispose();
        }

        public final boolean isDisposed() {
            return this.f7742b.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f7742b, cVar)) {
                this.f7742b = cVar;
                this.f7741a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f7741a.onSuccess(t);
        }

        public final void onError(Throwable th) {
            this.f7741a.onError(th);
        }
    }

    public ag(ao<? extends T> aoVar) {
        this.f7740a = aoVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7740a.subscribe(new a(alVar));
    }
}
