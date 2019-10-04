package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.f;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;

public final class cq<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f7330b;

    static final class a<T> extends AtomicInteger implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7331a;

        /* renamed from: b  reason: collision with root package name */
        final f f7332b;
        final ae<? extends T> c;
        long d;

        a(ag<? super T> agVar, long j, f fVar, ae<? extends T> aeVar) {
            this.f7331a = agVar;
            this.f7332b = fVar;
            this.c = aeVar;
            this.d = j;
        }

        public final void onSubscribe(c cVar) {
            this.f7332b.replace(cVar);
        }

        public final void onNext(T t) {
            this.f7331a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f7331a.onError(th);
        }

        public final void onComplete() {
            long j = this.d;
            if (j != Long.MAX_VALUE) {
                this.d = j - 1;
            }
            if (j != 0) {
                a();
            } else {
                this.f7331a.onComplete();
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f7332b.isDisposed()) {
                    this.c.subscribe(this);
                    i = addAndGet(-i);
                    if (i == 0) {
                    }
                }
            }
        }
    }

    public cq(z<T> zVar, long j) {
        super(zVar);
        this.f7330b = j;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        f fVar = new f();
        agVar.onSubscribe(fVar);
        long j = this.f7330b;
        long j2 = Long.MAX_VALUE;
        if (j != Long.MAX_VALUE) {
            j2 = j - 1;
        }
        a aVar = new a(agVar, j2, fVar, this.f7091a);
        aVar.a();
    }
}
