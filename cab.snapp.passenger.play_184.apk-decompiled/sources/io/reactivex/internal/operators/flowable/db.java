package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.e;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import org.b.b;
import org.b.c;
import org.b.d;

public final class db<T> extends a<T, T> {
    final long c;

    static final class a<T> extends AtomicInteger implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8151a;

        /* renamed from: b  reason: collision with root package name */
        final e f8152b;
        final b<? extends T> c;
        long d;
        long e;

        a(c<? super T> cVar, long j, e eVar, b<? extends T> bVar) {
            this.f8151a = cVar;
            this.f8152b = eVar;
            this.c = bVar;
            this.d = j;
        }

        public final void onSubscribe(d dVar) {
            this.f8152b.setSubscription(dVar);
        }

        public final void onNext(T t) {
            this.e++;
            this.f8151a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f8151a.onError(th);
        }

        public final void onComplete() {
            long j = this.d;
            if (j != Long.MAX_VALUE) {
                this.d = j - 1;
            }
            if (j != 0) {
                a();
            } else {
                this.f8151a.onComplete();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f8152b.isCancelled()) {
                    long j = this.e;
                    if (j != 0) {
                        this.e = 0;
                        this.f8152b.produced(j);
                    }
                    this.c.subscribe(this);
                    i = addAndGet(-i);
                    if (i == 0) {
                    }
                }
            }
        }
    }

    public db(j<T> jVar, long j) {
        super(jVar);
        this.c = j;
    }

    public final void subscribeActual(c<? super T> cVar) {
        e eVar = new e(false);
        cVar.onSubscribe(eVar);
        long j = this.c;
        long j2 = Long.MAX_VALUE;
        if (j != Long.MAX_VALUE) {
            j2 = j - 1;
        }
        a aVar = new a(cVar, j2, eVar, this.f7923b);
        aVar.a();
    }
}
