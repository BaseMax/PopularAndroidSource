package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;

public final class l<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7845a;

    static final class a<T> implements al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        al<? super T> f7846a;

        /* renamed from: b  reason: collision with root package name */
        c f7847b;

        a(al<? super T> alVar) {
            this.f7846a = alVar;
        }

        public final void dispose() {
            this.f7846a = null;
            this.f7847b.dispose();
            this.f7847b = DisposableHelper.DISPOSED;
        }

        public final boolean isDisposed() {
            return this.f7847b.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.f7847b, cVar)) {
                this.f7847b = cVar;
                this.f7846a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f7847b = DisposableHelper.DISPOSED;
            al<? super T> alVar = this.f7846a;
            if (alVar != null) {
                this.f7846a = null;
                alVar.onSuccess(t);
            }
        }

        public final void onError(Throwable th) {
            this.f7847b = DisposableHelper.DISPOSED;
            al<? super T> alVar = this.f7846a;
            if (alVar != null) {
                this.f7846a = null;
                alVar.onError(th);
            }
        }
    }

    public l(ao<T> aoVar) {
        this.f7845a = aoVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7845a.subscribe(new a(alVar));
    }
}
