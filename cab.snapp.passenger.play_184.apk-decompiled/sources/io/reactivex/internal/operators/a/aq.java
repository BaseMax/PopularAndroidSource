package io.reactivex.internal.operators.a;

import io.reactivex.ai;
import io.reactivex.al;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.d;
import io.reactivex.g;
import java.util.concurrent.Callable;

public final class aq<T> extends ai<T> {

    /* renamed from: a  reason: collision with root package name */
    final g f6941a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends T> f6942b;
    final T c;

    final class a implements d {

        /* renamed from: b  reason: collision with root package name */
        private final al<? super T> f6944b;

        a(al<? super T> alVar) {
            this.f6944b = alVar;
        }

        public final void onComplete() {
            T t;
            if (aq.this.f6942b != null) {
                try {
                    t = aq.this.f6942b.call();
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    this.f6944b.onError(th);
                    return;
                }
            } else {
                t = aq.this.c;
            }
            if (t == null) {
                this.f6944b.onError(new NullPointerException("The value supplied is null"));
            } else {
                this.f6944b.onSuccess(t);
            }
        }

        public final void onError(Throwable th) {
            this.f6944b.onError(th);
        }

        public final void onSubscribe(c cVar) {
            this.f6944b.onSubscribe(cVar);
        }
    }

    public aq(g gVar, Callable<? extends T> callable, T t) {
        this.f6941a = gVar;
        this.c = t;
        this.f6942b = callable;
    }

    public final void subscribeActual(al<? super T> alVar) {
        this.f6941a.subscribe(new a(alVar));
    }
}
