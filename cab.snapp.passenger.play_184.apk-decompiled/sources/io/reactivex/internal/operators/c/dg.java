package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

public final class dg<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final ae<? extends T> f7407a;

    /* renamed from: b  reason: collision with root package name */
    final T f7408b;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final al<? super T> f7409a;

        /* renamed from: b  reason: collision with root package name */
        final T f7410b;
        c c;
        T d;
        boolean e;

        a(al<? super T> alVar, T t) {
            this.f7409a = alVar;
            this.f7410b = t;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7409a.onSubscribe(this);
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
                if (this.d != null) {
                    this.e = true;
                    this.c.dispose();
                    this.f7409a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                    return;
                }
                this.d = t;
            }
        }

        public final void onError(Throwable th) {
            if (this.e) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.e = true;
            this.f7409a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                T t = this.d;
                this.d = null;
                if (t == null) {
                    t = this.f7410b;
                }
                if (t != null) {
                    this.f7409a.onSuccess(t);
                } else {
                    this.f7409a.onError(new NoSuchElementException());
                }
            }
        }
    }

    public dg(ae<? extends T> aeVar, T t) {
        this.f7407a = aeVar;
        this.f7408b = t;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7407a.subscribe(new a(alVar, this.f7408b));
    }
}
