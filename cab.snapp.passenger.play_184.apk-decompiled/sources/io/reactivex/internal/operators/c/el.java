package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.d;
import java.util.concurrent.atomic.AtomicReference;

public final class el<T, U, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final c<? super T, ? super U, ? extends R> f7538b;
    final ae<? extends U> c;

    static final class a<T, U, R> extends AtomicReference<U> implements ag<T>, io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7539a;

        /* renamed from: b  reason: collision with root package name */
        final c<? super T, ? super U, ? extends R> f7540b;
        final AtomicReference<io.reactivex.b.c> c = new AtomicReference<>();
        final AtomicReference<io.reactivex.b.c> d = new AtomicReference<>();

        a(ag<? super R> agVar, c<? super T, ? super U, ? extends R> cVar) {
            this.f7539a = agVar;
            this.f7540b = cVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this.c, cVar);
        }

        public final void onNext(T t) {
            Object obj = get();
            if (obj != null) {
                try {
                    this.f7539a.onNext(io.reactivex.internal.a.b.requireNonNull(this.f7540b.apply(t, obj), "The combiner returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    dispose();
                    this.f7539a.onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            DisposableHelper.dispose(this.d);
            this.f7539a.onError(th);
        }

        public final void onComplete() {
            DisposableHelper.dispose(this.d);
            this.f7539a.onComplete();
        }

        public final void dispose() {
            DisposableHelper.dispose(this.c);
            DisposableHelper.dispose(this.d);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed(this.c.get());
        }

        public final boolean setOther(io.reactivex.b.c cVar) {
            return DisposableHelper.setOnce(this.d, cVar);
        }

        public final void otherError(Throwable th) {
            DisposableHelper.dispose(this.c);
            this.f7539a.onError(th);
        }
    }

    final class b implements ag<U> {

        /* renamed from: b  reason: collision with root package name */
        private final a<T, U, R> f7542b;

        public final void onComplete() {
        }

        b(a<T, U, R> aVar) {
            this.f7542b = aVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            this.f7542b.setOther(cVar);
        }

        public final void onNext(U u) {
            this.f7542b.lazySet(u);
        }

        public final void onError(Throwable th) {
            this.f7542b.otherError(th);
        }
    }

    public el(ae<T> aeVar, c<? super T, ? super U, ? extends R> cVar, ae<? extends U> aeVar2) {
        super(aeVar);
        this.f7538b = cVar;
        this.c = aeVar2;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        d dVar = new d(agVar);
        a aVar = new a(dVar, this.f7538b);
        dVar.onSubscribe(aVar);
        this.c.subscribe(new b(aVar));
        this.f7091a.subscribe(aVar);
    }
}
