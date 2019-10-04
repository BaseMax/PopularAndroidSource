package io.reactivex.internal.operators.d;

import io.reactivex.e.c;
import io.reactivex.internal.a.b;
import io.reactivex.internal.f.h;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;
import org.b.d;

public final class m<T, R> extends io.reactivex.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f7696a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<R> f7697b;
    final c<R, ? super T, R> c;

    static final class a<T, R> extends h<T, R> {

        /* renamed from: a  reason: collision with root package name */
        final c<R, ? super T, R> f7698a;

        /* renamed from: b  reason: collision with root package name */
        R f7699b;
        boolean c;

        a(org.b.c<? super R> cVar, R r, c<R, ? super T, R> cVar2) {
            super(cVar);
            this.f7699b = r;
            this.f7698a = cVar2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.d, dVar)) {
                this.d = dVar;
                this.h.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.c) {
                try {
                    this.f7699b = b.requireNonNull(this.f7698a.apply(this.f7699b, t), "The reducer returned a null value");
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    cancel();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.c) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.c = true;
            this.f7699b = null;
            this.h.onError(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                R r = this.f7699b;
                this.f7699b = null;
                complete(r);
            }
        }

        public final void cancel() {
            super.cancel();
            this.d.cancel();
        }
    }

    public m(io.reactivex.parallel.a<? extends T> aVar, Callable<R> callable, c<R, ? super T, R> cVar) {
        this.f7696a = aVar;
        this.f7697b = callable;
        this.c = cVar;
    }

    public final void subscribe(org.b.c<? super R>[] cVarArr) {
        if (a(cVarArr)) {
            int length = cVarArr.length;
            org.b.c[] cVarArr2 = new org.b.c[length];
            int i = 0;
            while (i < length) {
                try {
                    cVarArr2[i] = new a(cVarArr[i], b.requireNonNull(this.f7697b.call(), "The initialSupplier returned a null value"), this.c);
                    i++;
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    for (org.b.c<? super R> error : cVarArr) {
                        EmptySubscription.error(th, error);
                    }
                    return;
                }
            }
            this.f7696a.subscribe(cVarArr2);
        }
    }

    public final int parallelism() {
        return this.f7696a.parallelism();
    }
}
