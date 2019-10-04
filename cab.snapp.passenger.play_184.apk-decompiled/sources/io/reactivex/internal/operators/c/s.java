package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;

public final class s<T, U> extends a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends U> f7609b;
    final b<? super U, ? super T> c;

    static final class a<T, U> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super U> f7610a;

        /* renamed from: b  reason: collision with root package name */
        final b<? super U, ? super T> f7611b;
        final U c;
        c d;
        boolean e;

        a(ag<? super U> agVar, U u, b<? super U, ? super T> bVar) {
            this.f7610a = agVar;
            this.f7611b = bVar;
            this.c = u;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.d, cVar)) {
                this.d = cVar;
                this.f7610a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.d.dispose();
        }

        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        public final void onNext(T t) {
            if (!this.e) {
                try {
                    this.f7611b.accept(this.c, t);
                } catch (Throwable th) {
                    this.d.dispose();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.e) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.e = true;
            this.f7610a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                this.f7610a.onNext(this.c);
                this.f7610a.onComplete();
            }
        }
    }

    public s(ae<T> aeVar, Callable<? extends U> callable, b<? super U, ? super T> bVar) {
        super(aeVar);
        this.f7609b = callable;
        this.c = bVar;
    }

    public final void subscribeActual(ag<? super U> agVar) {
        try {
            this.f7091a.subscribe(new a(agVar, io.reactivex.internal.a.b.requireNonNull(this.f7609b.call(), "The initialSupplier returned a null value"), this.c));
        } catch (Throwable th) {
            EmptyDisposable.error(th, (ag<?>) agVar);
        }
    }
}
