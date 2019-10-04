package io.reactivex.internal.operators.b;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicReference;

public final class s<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final ao<T> f7087a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends ae<? extends R>> f7088b;

    static final class a<T, R> extends AtomicReference<c> implements ag<R>, al<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7089a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ae<? extends R>> f7090b;

        a(ag<? super R> agVar, h<? super T, ? extends ae<? extends R>> hVar) {
            this.f7089a = agVar;
            this.f7090b = hVar;
        }

        public final void onNext(R r) {
            this.f7089a.onNext(r);
        }

        public final void onError(Throwable th) {
            this.f7089a.onError(th);
        }

        public final void onComplete() {
            this.f7089a.onComplete();
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((c) get());
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.replace(this, cVar);
        }

        public final void onSuccess(T t) {
            try {
                ((ae) b.requireNonNull(this.f7090b.apply(t), "The mapper returned a null Publisher")).subscribe(this);
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f7089a.onError(th);
            }
        }
    }

    public s(ao<T> aoVar, h<? super T, ? extends ae<? extends R>> hVar) {
        this.f7087a = aoVar;
        this.f7088b = hVar;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        a aVar = new a(agVar, this.f7088b);
        agVar.onSubscribe(aVar);
        this.f7087a.subscribe(aVar);
    }
}
