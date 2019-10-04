package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;

public final class cf<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super Throwable, ? extends T> f7287b;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7288a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super Throwable, ? extends T> f7289b;
        c c;

        a(ag<? super T> agVar, h<? super Throwable, ? extends T> hVar) {
            this.f7288a = agVar;
            this.f7289b = hVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7288a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        public final void onNext(T t) {
            this.f7288a.onNext(t);
        }

        public final void onError(Throwable th) {
            try {
                Object apply = this.f7289b.apply(th);
                if (apply == null) {
                    NullPointerException nullPointerException = new NullPointerException("The supplied value is null");
                    nullPointerException.initCause(th);
                    this.f7288a.onError(nullPointerException);
                    return;
                }
                this.f7288a.onNext(apply);
                this.f7288a.onComplete();
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                this.f7288a.onError(new io.reactivex.c.a(th, th2));
            }
        }

        public final void onComplete() {
            this.f7288a.onComplete();
        }
    }

    public cf(ae<T> aeVar, h<? super Throwable, ? extends T> hVar) {
        super(aeVar);
        this.f7287b = hVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7287b));
    }
}
