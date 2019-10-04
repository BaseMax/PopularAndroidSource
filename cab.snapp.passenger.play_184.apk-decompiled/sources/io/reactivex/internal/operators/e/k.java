package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.q;
import io.reactivex.t;
import io.reactivex.y;

public final class k<T, R> extends q<R> {

    /* renamed from: a  reason: collision with root package name */
    final ai<T> f7841a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, y<R>> f7842b;

    static final class a<T, R> implements al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final t<? super R> f7843a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, y<R>> f7844b;
        c c;

        a(t<? super R> tVar, h<? super T, y<R>> hVar) {
            this.f7843a = tVar;
            this.f7844b = hVar;
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7843a.onSubscribe(this);
            }
        }

        public final void onSuccess(T t) {
            try {
                y yVar = (y) b.requireNonNull(this.f7844b.apply(t), "The selector returned a null Notification");
                if (yVar.isOnNext()) {
                    this.f7843a.onSuccess(yVar.getValue());
                } else if (yVar.isOnComplete()) {
                    this.f7843a.onComplete();
                } else {
                    this.f7843a.onError(yVar.getError());
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f7843a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f7843a.onError(th);
        }
    }

    public k(ai<T> aiVar, h<? super T, y<R>> hVar) {
        this.f7841a = aiVar;
        this.f7842b = hVar;
    }

    public final void subscribeActual(t<? super R> tVar) {
        this.f7841a.subscribe(new a(tVar, this.f7842b));
    }
}
