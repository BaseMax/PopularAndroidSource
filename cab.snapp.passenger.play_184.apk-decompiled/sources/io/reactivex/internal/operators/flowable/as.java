package io.reactivex.internal.operators.flowable;

import io.reactivex.c.b;
import io.reactivex.e.g;
import io.reactivex.e.p;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import org.b.c;
import org.b.d;

public final class as<T> extends a<T, T> {
    private final g<? super d> c;
    private final p d;
    private final io.reactivex.e.a e;

    static final class a<T> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f7981a;

        /* renamed from: b  reason: collision with root package name */
        final g<? super d> f7982b;
        final p c;
        final io.reactivex.e.a d;
        d e;

        a(c<? super T> cVar, g<? super d> gVar, p pVar, io.reactivex.e.a aVar) {
            this.f7981a = cVar;
            this.f7982b = gVar;
            this.d = aVar;
            this.c = pVar;
        }

        public final void onSubscribe(d dVar) {
            try {
                this.f7982b.accept(dVar);
                if (SubscriptionHelper.validate(this.e, dVar)) {
                    this.e = dVar;
                    this.f7981a.onSubscribe(this);
                }
            } catch (Throwable th) {
                b.throwIfFatal(th);
                dVar.cancel();
                this.e = SubscriptionHelper.CANCELLED;
                EmptySubscription.error(th, this.f7981a);
            }
        }

        public final void onNext(T t) {
            this.f7981a.onNext(t);
        }

        public final void onError(Throwable th) {
            if (this.e != SubscriptionHelper.CANCELLED) {
                this.f7981a.onError(th);
            } else {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onComplete() {
            if (this.e != SubscriptionHelper.CANCELLED) {
                this.f7981a.onComplete();
            }
        }

        public final void request(long j) {
            try {
                this.c.accept(j);
            } catch (Throwable th) {
                b.throwIfFatal(th);
                io.reactivex.g.a.onError(th);
            }
            this.e.request(j);
        }

        public final void cancel() {
            d dVar = this.e;
            if (dVar != SubscriptionHelper.CANCELLED) {
                this.e = SubscriptionHelper.CANCELLED;
                try {
                    this.d.run();
                } catch (Throwable th) {
                    b.throwIfFatal(th);
                    io.reactivex.g.a.onError(th);
                }
                dVar.cancel();
            }
        }
    }

    public as(j<T> jVar, g<? super d> gVar, p pVar, io.reactivex.e.a aVar) {
        super(jVar);
        this.c = gVar;
        this.d = pVar;
        this.e = aVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c, this.d, this.e));
    }
}
