package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.Callable;

public final class bx<T, R> extends a<T, ae<? extends R>> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends ae<? extends R>> f7261b;
    final h<? super Throwable, ? extends ae<? extends R>> c;
    final Callable<? extends ae<? extends R>> d;

    static final class a<T, R> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super ae<? extends R>> f7262a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ae<? extends R>> f7263b;
        final h<? super Throwable, ? extends ae<? extends R>> c;
        final Callable<? extends ae<? extends R>> d;
        c e;

        a(ag<? super ae<? extends R>> agVar, h<? super T, ? extends ae<? extends R>> hVar, h<? super Throwable, ? extends ae<? extends R>> hVar2, Callable<? extends ae<? extends R>> callable) {
            this.f7262a = agVar;
            this.f7263b = hVar;
            this.c = hVar2;
            this.d = callable;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.e, cVar)) {
                this.e = cVar;
                this.f7262a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.e.dispose();
        }

        public final boolean isDisposed() {
            return this.e.isDisposed();
        }

        public final void onNext(T t) {
            try {
                this.f7262a.onNext((ae) b.requireNonNull(this.f7263b.apply(t), "The onNext ObservableSource returned is null"));
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f7262a.onError(th);
            }
        }

        public final void onError(Throwable th) {
            try {
                this.f7262a.onNext((ae) b.requireNonNull(this.c.apply(th), "The onError ObservableSource returned is null"));
                this.f7262a.onComplete();
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                this.f7262a.onError(new io.reactivex.c.a(th, th2));
            }
        }

        public final void onComplete() {
            try {
                this.f7262a.onNext((ae) b.requireNonNull(this.d.call(), "The onComplete ObservableSource returned is null"));
                this.f7262a.onComplete();
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f7262a.onError(th);
            }
        }
    }

    public bx(ae<T> aeVar, h<? super T, ? extends ae<? extends R>> hVar, h<? super Throwable, ? extends ae<? extends R>> hVar2, Callable<? extends ae<? extends R>> callable) {
        super(aeVar);
        this.f7261b = hVar;
        this.c = hVar2;
        this.d = callable;
    }

    public final void subscribeActual(ag<? super ae<? extends R>> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7261b, this.c, this.d));
    }
}
