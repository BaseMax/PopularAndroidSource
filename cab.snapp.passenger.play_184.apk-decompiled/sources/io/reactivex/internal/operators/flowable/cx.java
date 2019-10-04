package io.reactivex.internal.operators.flowable;

import io.reactivex.e.c;
import io.reactivex.internal.b.b;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.t;
import org.b.d;

public final class cx<T> extends q<T> implements b<T> {

    /* renamed from: a  reason: collision with root package name */
    final j<T> f8131a;

    /* renamed from: b  reason: collision with root package name */
    final c<T, T, T> f8132b;

    static final class a<T> implements io.reactivex.b.c, o<T> {

        /* renamed from: a  reason: collision with root package name */
        final t<? super T> f8133a;

        /* renamed from: b  reason: collision with root package name */
        final c<T, T, T> f8134b;
        T c;
        d d;
        boolean e;

        a(t<? super T> tVar, c<T, T, T> cVar) {
            this.f8133a = tVar;
            this.f8134b = cVar;
        }

        public final void dispose() {
            this.d.cancel();
            this.e = true;
        }

        public final boolean isDisposed() {
            return this.e;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.d, dVar)) {
                this.d = dVar;
                this.f8133a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.e) {
                T t2 = this.c;
                if (t2 == null) {
                    this.c = t;
                    return;
                }
                try {
                    this.c = io.reactivex.internal.a.b.requireNonNull(this.f8134b.apply(t2, t), "The reducer returned a null value");
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.d.cancel();
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
            this.f8133a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                T t = this.c;
                if (t != null) {
                    this.f8133a.onSuccess(t);
                } else {
                    this.f8133a.onComplete();
                }
            }
        }
    }

    public cx(j<T> jVar, c<T, T, T> cVar) {
        this.f8131a = jVar;
        this.f8132b = cVar;
    }

    public final org.b.b<T> source() {
        return this.f8131a;
    }

    public final j<T> fuseToFlowable() {
        return io.reactivex.g.a.onAssembly(new cw(this.f8131a, this.f8132b));
    }

    public final void subscribeActual(t<? super T> tVar) {
        this.f8131a.subscribe(new a(tVar, this.f8132b));
    }
}
