package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;

public final class dp<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f7441b;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7442a;

        /* renamed from: b  reason: collision with root package name */
        boolean f7443b;
        c c;
        long d;

        a(ag<? super T> agVar, long j) {
            this.f7442a = agVar;
            this.d = j;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                if (this.d == 0) {
                    this.f7443b = true;
                    cVar.dispose();
                    EmptyDisposable.complete((ag<?>) this.f7442a);
                    return;
                }
                this.f7442a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.f7443b) {
                long j = this.d;
                this.d = j - 1;
                if (j > 0) {
                    boolean z = this.d == 0;
                    this.f7442a.onNext(t);
                    if (z) {
                        onComplete();
                    }
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.f7443b) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.f7443b = true;
            this.c.dispose();
            this.f7442a.onError(th);
        }

        public final void onComplete() {
            if (!this.f7443b) {
                this.f7443b = true;
                this.c.dispose();
                this.f7442a.onComplete();
            }
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }
    }

    public dp(ae<T> aeVar, long j) {
        super(aeVar);
        this.f7441b = j;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7441b));
    }
}
