package io.reactivex.internal.operators.e;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.h;

public final class ao<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.ao<? extends T> f7760a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super Throwable, ? extends T> f7761b;
    final T c;

    final class a implements al<T> {

        /* renamed from: b  reason: collision with root package name */
        private final al<? super T> f7763b;

        a(al<? super T> alVar) {
            this.f7763b = alVar;
        }

        public final void onError(Throwable th) {
            T t;
            if (ao.this.f7761b != null) {
                try {
                    t = ao.this.f7761b.apply(th);
                } catch (Throwable th2) {
                    b.throwIfFatal(th2);
                    this.f7763b.onError(new io.reactivex.c.a(th, th2));
                    return;
                }
            } else {
                t = ao.this.c;
            }
            if (t == null) {
                NullPointerException nullPointerException = new NullPointerException("Value supplied was null");
                nullPointerException.initCause(th);
                this.f7763b.onError(nullPointerException);
                return;
            }
            this.f7763b.onSuccess(t);
        }

        public final void onSubscribe(c cVar) {
            this.f7763b.onSubscribe(cVar);
        }

        public final void onSuccess(T t) {
            this.f7763b.onSuccess(t);
        }
    }

    public ao(io.reactivex.ao<? extends T> aoVar, h<? super Throwable, ? extends T> hVar, T t) {
        this.f7760a = aoVar;
        this.f7761b = hVar;
        this.c = t;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f7760a.subscribe(new a(alVar));
    }
}
