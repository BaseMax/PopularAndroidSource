package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.g;
import io.reactivex.internal.disposables.EmptyDisposable;

public final class s<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7872a;

    /* renamed from: b  reason: collision with root package name */
    final g<? super c> f7873b;

    static final class a<T> implements al<T> {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7874a;

        /* renamed from: b  reason: collision with root package name */
        final g<? super c> f7875b;
        boolean c;

        a(al<? super T> alVar, g<? super c> gVar) {
            this.f7874a = alVar;
            this.f7875b = gVar;
        }

        public final void onSubscribe(c cVar) {
            try {
                this.f7875b.accept(cVar);
                this.f7874a.onSubscribe(cVar);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                this.c = true;
                cVar.dispose();
                EmptyDisposable.error(th, (al<?>) this.f7874a);
            }
        }

        public final void onSuccess(T t) {
            if (!this.c) {
                this.f7874a.onSuccess(t);
            }
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
            } else {
                this.f7874a.onError(th);
            }
        }
    }

    public s(ao<T> aoVar, g<? super c> gVar) {
        this.f7872a = aoVar;
        this.f7873b = gVar;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7872a.subscribe(new a(alVar, this.f7873b));
    }
}
