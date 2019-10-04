package io.reactivex.internal.operators.b;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicReference;

public final class j<T, R> extends z<R> {

    /* renamed from: a  reason: collision with root package name */
    final w<T> f7048a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends ae<? extends R>> f7049b;

    static final class a<T, R> extends AtomicReference<c> implements ag<R>, c, t<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7050a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ae<? extends R>> f7051b;

        a(ag<? super R> agVar, h<? super T, ? extends ae<? extends R>> hVar) {
            this.f7050a = agVar;
            this.f7051b = hVar;
        }

        public final void onNext(R r) {
            this.f7050a.onNext(r);
        }

        public final void onError(Throwable th) {
            this.f7050a.onError(th);
        }

        public final void onComplete() {
            this.f7050a.onComplete();
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
                ((ae) b.requireNonNull(this.f7051b.apply(t), "The mapper returned a null Publisher")).subscribe(this);
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f7050a.onError(th);
            }
        }
    }

    public j(w<T> wVar, h<? super T, ? extends ae<? extends R>> hVar) {
        this.f7048a = wVar;
        this.f7049b = hVar;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        a aVar = new a(agVar, this.f7049b);
        agVar.onSubscribe(aVar);
        this.f7048a.subscribe(aVar);
    }
}
