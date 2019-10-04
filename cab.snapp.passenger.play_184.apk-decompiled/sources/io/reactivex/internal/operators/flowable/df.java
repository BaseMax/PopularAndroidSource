package io.reactivex.internal.operators.flowable;

import io.reactivex.e.d;
import io.reactivex.internal.subscriptions.e;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import org.b.b;
import org.b.c;

public final class df<T> extends a<T, T> {
    final d<? super Integer, ? super Throwable> c;

    static final class a<T> extends AtomicInteger implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8178a;

        /* renamed from: b  reason: collision with root package name */
        final e f8179b;
        final b<? extends T> c;
        final d<? super Integer, ? super Throwable> d;
        int e;
        long f;

        a(c<? super T> cVar, d<? super Integer, ? super Throwable> dVar, e eVar, b<? extends T> bVar) {
            this.f8178a = cVar;
            this.f8179b = eVar;
            this.c = bVar;
            this.d = dVar;
        }

        public final void onSubscribe(org.b.d dVar) {
            this.f8179b.setSubscription(dVar);
        }

        public final void onNext(T t) {
            this.f++;
            this.f8178a.onNext(t);
        }

        public final void onError(Throwable th) {
            try {
                d<? super Integer, ? super Throwable> dVar = this.d;
                int i = this.e + 1;
                this.e = i;
                if (!dVar.test(Integer.valueOf(i), th)) {
                    this.f8178a.onError(th);
                } else {
                    a();
                }
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                this.f8178a.onError(new io.reactivex.c.a(th, th2));
            }
        }

        public final void onComplete() {
            this.f8178a.onComplete();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f8179b.isCancelled()) {
                    long j = this.f;
                    if (j != 0) {
                        this.f = 0;
                        this.f8179b.produced(j);
                    }
                    this.c.subscribe(this);
                    i = addAndGet(-i);
                    if (i == 0) {
                    }
                }
            }
        }
    }

    public df(j<T> jVar, d<? super Integer, ? super Throwable> dVar) {
        super(jVar);
        this.c = dVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        e eVar = new e(false);
        cVar.onSubscribe(eVar);
        new a(cVar, this.c, eVar, this.f7923b).a();
    }
}
