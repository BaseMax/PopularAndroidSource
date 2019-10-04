package io.reactivex.internal.operators.flowable;

import io.reactivex.e.e;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import org.b.b;
import org.b.c;
import org.b.d;

public final class dc<T> extends a<T, T> {
    final e c;

    static final class a<T> extends AtomicInteger implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8153a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.subscriptions.e f8154b;
        final b<? extends T> c;
        final e d;
        long e;

        a(c<? super T> cVar, e eVar, io.reactivex.internal.subscriptions.e eVar2, b<? extends T> bVar) {
            this.f8153a = cVar;
            this.f8154b = eVar2;
            this.c = bVar;
            this.d = eVar;
        }

        public final void onSubscribe(d dVar) {
            this.f8154b.setSubscription(dVar);
        }

        public final void onNext(T t) {
            this.e++;
            this.f8153a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f8153a.onError(th);
        }

        public final void onComplete() {
            try {
                if (this.d.getAsBoolean()) {
                    this.f8153a.onComplete();
                } else {
                    a();
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.f8153a.onError(th);
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f8154b.isCancelled()) {
                    long j = this.e;
                    if (j != 0) {
                        this.e = 0;
                        this.f8154b.produced(j);
                    }
                    this.c.subscribe(this);
                    i = addAndGet(-i);
                    if (i == 0) {
                    }
                }
            }
        }
    }

    public dc(j<T> jVar, e eVar) {
        super(jVar);
        this.c = eVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        io.reactivex.internal.subscriptions.e eVar = new io.reactivex.internal.subscriptions.e(false);
        cVar.onSubscribe(eVar);
        new a(cVar, this.c, eVar, this.f7923b).a();
    }
}
