package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.q;
import io.reactivex.internal.disposables.f;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;

public final class cv<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q<? super Throwable> f7363b;
    final long c;

    static final class a<T> extends AtomicInteger implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7364a;

        /* renamed from: b  reason: collision with root package name */
        final f f7365b;
        final ae<? extends T> c;
        final q<? super Throwable> d;
        long e;

        a(ag<? super T> agVar, long j, q<? super Throwable> qVar, f fVar, ae<? extends T> aeVar) {
            this.f7364a = agVar;
            this.f7365b = fVar;
            this.c = aeVar;
            this.d = qVar;
            this.e = j;
        }

        public final void onSubscribe(c cVar) {
            this.f7365b.replace(cVar);
        }

        public final void onNext(T t) {
            this.f7364a.onNext(t);
        }

        public final void onError(Throwable th) {
            long j = this.e;
            if (j != Long.MAX_VALUE) {
                this.e = j - 1;
            }
            if (j == 0) {
                this.f7364a.onError(th);
                return;
            }
            try {
                if (!this.d.test(th)) {
                    this.f7364a.onError(th);
                } else {
                    a();
                }
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                this.f7364a.onError(new io.reactivex.c.a(th, th2));
            }
        }

        public final void onComplete() {
            this.f7364a.onComplete();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f7365b.isDisposed()) {
                    this.c.subscribe(this);
                    i = addAndGet(-i);
                    if (i == 0) {
                    }
                }
            }
        }
    }

    public cv(z<T> zVar, long j, q<? super Throwable> qVar) {
        super(zVar);
        this.f7363b = qVar;
        this.c = j;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        f fVar = new f();
        agVar.onSubscribe(fVar);
        a aVar = new a(agVar, this.c, this.f7363b, fVar, this.f7091a);
        aVar.a();
    }
}
