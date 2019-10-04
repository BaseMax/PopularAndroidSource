package io.reactivex.internal.operators.flowable;

import io.reactivex.e.c;
import io.reactivex.internal.a.b;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import org.b.d;

public final class dl<T> extends a<T, T> {
    final c<T, T, T> c;

    static final class a<T> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f8189a;

        /* renamed from: b  reason: collision with root package name */
        final c<T, T, T> f8190b;
        d c;
        T d;
        boolean e;

        a(org.b.c<? super T> cVar, c<T, T, T> cVar2) {
            this.f8189a = cVar;
            this.f8190b = cVar2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f8189a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.e) {
                org.b.c<? super T> cVar = this.f8189a;
                T t2 = this.d;
                if (t2 == null) {
                    this.d = t;
                    cVar.onNext(t);
                    return;
                }
                try {
                    T requireNonNull = b.requireNonNull(this.f8190b.apply(t2, t), "The value returned by the accumulator is null");
                    this.d = requireNonNull;
                    cVar.onNext(requireNonNull);
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.c.cancel();
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
            this.f8189a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                this.f8189a.onComplete();
            }
        }

        public final void request(long j) {
            this.c.request(j);
        }

        public final void cancel() {
            this.c.cancel();
        }
    }

    public dl(j<T> jVar, c<T, T, T> cVar) {
        super(jVar);
        this.c = cVar;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
