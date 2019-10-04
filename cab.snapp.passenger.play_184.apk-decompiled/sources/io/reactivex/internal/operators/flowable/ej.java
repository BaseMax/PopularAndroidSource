package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.internal.disposables.f;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.b.c;
import org.b.d;

public final class ej<T> extends a<T, T> {
    final long c;
    final TimeUnit d;
    final ah e;

    static final class a<T> extends AtomicLong implements o<T>, Runnable, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8252a;

        /* renamed from: b  reason: collision with root package name */
        final long f8253b;
        final TimeUnit c;
        final ah.c d;
        d e;
        final f f = new f();
        volatile boolean g;
        boolean h;

        a(c<? super T> cVar, long j, TimeUnit timeUnit, ah.c cVar2) {
            this.f8252a = cVar;
            this.f8253b = j;
            this.c = timeUnit;
            this.d = cVar2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.e, dVar)) {
                this.e = dVar;
                this.f8252a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (!this.h && !this.g) {
                this.g = true;
                if (get() != 0) {
                    this.f8252a.onNext(t);
                    io.reactivex.internal.util.c.produced(this, 1);
                    io.reactivex.b.c cVar = (io.reactivex.b.c) this.f.get();
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    this.f.replace(this.d.schedule(this, this.f8253b, this.c));
                } else {
                    this.h = true;
                    cancel();
                    this.f8252a.onError(new io.reactivex.c.c("Could not deliver value due to lack of requests"));
                }
            }
        }

        public final void run() {
            this.g = false;
        }

        public final void onError(Throwable th) {
            if (this.h) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.h = true;
            this.f8252a.onError(th);
            this.d.dispose();
        }

        public final void onComplete() {
            if (!this.h) {
                this.h = true;
                this.f8252a.onComplete();
                this.d.dispose();
            }
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this, j);
            }
        }

        public final void cancel() {
            this.e.cancel();
            this.d.dispose();
        }
    }

    public ej(j<T> jVar, long j, TimeUnit timeUnit, ah ahVar) {
        super(jVar);
        this.c = j;
        this.d = timeUnit;
        this.e = ahVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        j jVar = this.f7923b;
        a aVar = new a(new io.reactivex.k.d(cVar), this.c, this.d, this.e.createWorker());
        jVar.subscribe(aVar);
    }
}
