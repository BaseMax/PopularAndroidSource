package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.g;
import io.reactivex.internal.disposables.DisposableHelper;

public final class m<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7848a;

    /* renamed from: b  reason: collision with root package name */
    final g<? super T> f7849b;

    static final class a<T> implements al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7850a;

        /* renamed from: b  reason: collision with root package name */
        final g<? super T> f7851b;
        c c;

        a(al<? super T> alVar, g<? super T> gVar) {
            this.f7850a = alVar;
            this.f7851b = gVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7850a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            this.f7850a.onSuccess(t);
            try {
                this.f7851b.accept(t);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f7850a.onError(th);
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }
    }

    public m(ao<T> aoVar, g<? super T> gVar) {
        this.f7848a = aoVar;
        this.f7849b = gVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7848a.subscribe(new a(alVar, this.f7849b));
    }
}
