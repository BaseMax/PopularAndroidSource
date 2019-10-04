package io.reactivex.internal.operators.d;

import io.reactivex.e.b;
import io.reactivex.internal.f.h;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;
import org.b.c;
import org.b.d;

public final class a<T, C> extends io.reactivex.parallel.a<C> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f7643a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends C> f7644b;
    final b<? super C, ? super T> c;

    /* renamed from: io.reactivex.internal.operators.d.a$a  reason: collision with other inner class name */
    static final class C0173a<T, C> extends h<T, C> {

        /* renamed from: a  reason: collision with root package name */
        final b<? super C, ? super T> f7645a;

        /* renamed from: b  reason: collision with root package name */
        C f7646b;
        boolean c;

        C0173a(c<? super C> cVar, C c2, b<? super C, ? super T> bVar) {
            super(cVar);
            this.f7646b = c2;
            this.f7645a = bVar;
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
                    this.f7645a.accept(this.f7646b, t);
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
            this.f7646b = null;
            this.h.onError(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                C c2 = this.f7646b;
                this.f7646b = null;
                complete(c2);
            }
        }

        public final void cancel() {
            super.cancel();
            this.d.cancel();
        }
    }

    public a(io.reactivex.parallel.a<? extends T> aVar, Callable<? extends C> callable, b<? super C, ? super T> bVar) {
        this.f7643a = aVar;
        this.f7644b = callable;
        this.c = bVar;
    }

    public final void subscribe(c<? super C>[] cVarArr) {
        if (a(cVarArr)) {
            int length = cVarArr.length;
            c[] cVarArr2 = new c[length];
            int i = 0;
            while (i < length) {
                try {
                    cVarArr2[i] = new C0173a(cVarArr[i], io.reactivex.internal.a.b.requireNonNull(this.f7644b.call(), "The initialSupplier returned a null value"), this.c);
                    i++;
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    for (c<? super C> error : cVarArr) {
                        EmptySubscription.error(th, error);
                    }
                    return;
                }
            }
            this.f7643a.subscribe(cVarArr2);
        }
    }

    public final int parallelism() {
        return this.f7643a.parallelism();
    }
}
