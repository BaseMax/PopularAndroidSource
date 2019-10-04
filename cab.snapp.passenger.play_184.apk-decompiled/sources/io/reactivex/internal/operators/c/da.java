package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.c;
import io.reactivex.internal.a.b;
import io.reactivex.internal.disposables.DisposableHelper;

public final class da<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final c<T, T, T> f7386b;

    static final class a<T> implements ag<T>, io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7387a;

        /* renamed from: b  reason: collision with root package name */
        final c<T, T, T> f7388b;
        io.reactivex.b.c c;
        T d;
        boolean e;

        a(ag<? super T> agVar, c<T, T, T> cVar) {
            this.f7387a = agVar;
            this.f7388b = cVar;
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7387a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void onNext(T t) {
            if (!this.e) {
                ag<? super T> agVar = this.f7387a;
                T t2 = this.d;
                if (t2 == null) {
                    this.d = t;
                    agVar.onNext(t);
                    return;
                }
                try {
                    T requireNonNull = b.requireNonNull(this.f7388b.apply(t2, t), "The value returned by the accumulator is null");
                    this.d = requireNonNull;
                    agVar.onNext(requireNonNull);
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.c.dispose();
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
            this.f7387a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                this.f7387a.onComplete();
            }
        }
    }

    public da(ae<T> aeVar, c<T, T, T> cVar) {
        super(aeVar);
        this.f7386b = cVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7386b));
    }
}
