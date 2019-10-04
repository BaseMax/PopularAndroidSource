package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;

public final class bb<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends Iterable<? extends R>> f7179b;

    static final class a<T, R> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7180a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends Iterable<? extends R>> f7181b;
        c c;

        a(ag<? super R> agVar, h<? super T, ? extends Iterable<? extends R>> hVar) {
            this.f7180a = agVar;
            this.f7181b = hVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7180a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (this.c != DisposableHelper.DISPOSED) {
                try {
                    ag<? super R> agVar = this.f7180a;
                    for (Object requireNonNull : (Iterable) this.f7181b.apply(t)) {
                        try {
                            try {
                                agVar.onNext(b.requireNonNull(requireNonNull, "The iterator returned a null value"));
                            } catch (Throwable th) {
                                io.reactivex.c.b.throwIfFatal(th);
                                this.c.dispose();
                                onError(th);
                            }
                        } catch (Throwable th2) {
                            io.reactivex.c.b.throwIfFatal(th2);
                            this.c.dispose();
                            onError(th2);
                            return;
                        }
                    }
                } catch (Throwable th3) {
                    io.reactivex.c.b.throwIfFatal(th3);
                    this.c.dispose();
                    onError(th3);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.c == DisposableHelper.DISPOSED) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = DisposableHelper.DISPOSED;
            this.f7180a.onError(th);
        }

        public final void onComplete() {
            if (this.c != DisposableHelper.DISPOSED) {
                this.c = DisposableHelper.DISPOSED;
                this.f7180a.onComplete();
            }
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void dispose() {
            this.c.dispose();
            this.c = DisposableHelper.DISPOSED;
        }
    }

    public bb(ae<T> aeVar, h<? super T, ? extends Iterable<? extends R>> hVar) {
        super(aeVar);
        this.f7179b = hVar;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7179b));
    }
}
