package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.d;
import io.reactivex.internal.disposables.f;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;

public final class cu<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final d<? super Integer, ? super Throwable> f7360b;

    static final class a<T> extends AtomicInteger implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7361a;

        /* renamed from: b  reason: collision with root package name */
        final f f7362b;
        final ae<? extends T> c;
        final d<? super Integer, ? super Throwable> d;
        int e;

        a(ag<? super T> agVar, d<? super Integer, ? super Throwable> dVar, f fVar, ae<? extends T> aeVar) {
            this.f7361a = agVar;
            this.f7362b = fVar;
            this.c = aeVar;
            this.d = dVar;
        }

        public final void onSubscribe(c cVar) {
            this.f7362b.replace(cVar);
        }

        public final void onNext(T t) {
            this.f7361a.onNext(t);
        }

        public final void onError(Throwable th) {
            try {
                d<? super Integer, ? super Throwable> dVar = this.d;
                int i = this.e + 1;
                this.e = i;
                if (!dVar.test(Integer.valueOf(i), th)) {
                    this.f7361a.onError(th);
                } else {
                    a();
                }
            } catch (Throwable th2) {
                b.throwIfFatal(th2);
                this.f7361a.onError(new io.reactivex.c.a(th, th2));
            }
        }

        public final void onComplete() {
            this.f7361a.onComplete();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f7362b.isDisposed()) {
                    this.c.subscribe(this);
                    i = addAndGet(-i);
                    if (i == 0) {
                    }
                }
            }
        }
    }

    public cu(z<T> zVar, d<? super Integer, ? super Throwable> dVar) {
        super(zVar);
        this.f7360b = dVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        f fVar = new f();
        agVar.onSubscribe(fVar);
        new a(agVar, this.f7360b, fVar, this.f7091a).a();
    }
}
