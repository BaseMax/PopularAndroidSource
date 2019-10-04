package io.reactivex.internal.operators.flowable;

import io.reactivex.e.q;
import io.reactivex.internal.subscriptions.e;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import org.b.b;
import org.b.c;
import org.b.d;

public final class dg<T> extends a<T, T> {
    final q<? super Throwable> c;
    final long d;

    static final class a<T> extends AtomicInteger implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8180a;

        /* renamed from: b  reason: collision with root package name */
        final e f8181b;
        final b<? extends T> c;
        final q<? super Throwable> d;
        long e;
        long f;

        a(c<? super T> cVar, long j, q<? super Throwable> qVar, e eVar, b<? extends T> bVar) {
            this.f8180a = cVar;
            this.f8181b = eVar;
            this.c = bVar;
            this.d = qVar;
            this.e = j;
        }

        public final void onSubscribe(d dVar) {
            this.f8181b.setSubscription(dVar);
        }

        public final void onNext(T t) {
            this.f++;
            this.f8180a.onNext(t);
        }

        public final void onError(Throwable th) {
            long j = this.e;
            if (j != Long.MAX_VALUE) {
                this.e = j - 1;
            }
            if (j == 0) {
                this.f8180a.onError(th);
                return;
            }
            try {
                if (!this.d.test(th)) {
                    this.f8180a.onError(th);
                } else {
                    a();
                }
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                this.f8180a.onError(new io.reactivex.c.a(th, th2));
            }
        }

        public final void onComplete() {
            this.f8180a.onComplete();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f8181b.isCancelled()) {
                    long j = this.f;
                    if (j != 0) {
                        this.f = 0;
                        this.f8181b.produced(j);
                    }
                    this.c.subscribe(this);
                    i = addAndGet(-i);
                    if (i == 0) {
                    }
                }
            }
        }
    }

    public dg(j<T> jVar, long j, q<? super Throwable> qVar) {
        super(jVar);
        this.c = qVar;
        this.d = j;
    }

    public final void subscribeActual(c<? super T> cVar) {
        e eVar = new e(false);
        cVar.onSubscribe(eVar);
        a aVar = new a(cVar, this.d, this.c, eVar, this.f7923b);
        aVar.a();
    }
}
