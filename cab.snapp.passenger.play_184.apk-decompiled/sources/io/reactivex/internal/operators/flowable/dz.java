package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.e;
import io.reactivex.j;
import io.reactivex.o;
import org.b.b;
import org.b.c;
import org.b.d;

public final class dz<T> extends a<T, T> {
    final b<? extends T> c;

    static final class a<T> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8226a;

        /* renamed from: b  reason: collision with root package name */
        final b<? extends T> f8227b;
        final e c = new e(false);
        boolean d = true;

        a(c<? super T> cVar, b<? extends T> bVar) {
            this.f8226a = cVar;
            this.f8227b = bVar;
        }

        public final void onSubscribe(d dVar) {
            this.c.setSubscription(dVar);
        }

        public final void onNext(T t) {
            if (this.d) {
                this.d = false;
            }
            this.f8226a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f8226a.onError(th);
        }

        public final void onComplete() {
            if (this.d) {
                this.d = false;
                this.f8227b.subscribe(this);
                return;
            }
            this.f8226a.onComplete();
        }
    }

    public dz(j<T> jVar, b<? extends T> bVar) {
        super(jVar);
        this.c = bVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        a aVar = new a(cVar, this.c);
        cVar.onSubscribe(aVar.c);
        this.f7923b.subscribe(aVar);
    }
}
