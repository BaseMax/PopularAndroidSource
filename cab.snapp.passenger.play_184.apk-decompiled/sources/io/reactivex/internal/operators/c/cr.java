package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.c.b;
import io.reactivex.e.e;
import io.reactivex.internal.disposables.f;
import io.reactivex.z;
import java.util.concurrent.atomic.AtomicInteger;

public final class cr<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final e f7333b;

    static final class a<T> extends AtomicInteger implements ag<T> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7334a;

        /* renamed from: b  reason: collision with root package name */
        final f f7335b;
        final ae<? extends T> c;
        final e d;

        a(ag<? super T> agVar, e eVar, f fVar, ae<? extends T> aeVar) {
            this.f7334a = agVar;
            this.f7335b = fVar;
            this.c = aeVar;
            this.d = eVar;
        }

        public final void onSubscribe(c cVar) {
            this.f7335b.replace(cVar);
        }

        public final void onNext(T t) {
            this.f7334a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f7334a.onError(th);
        }

        public final void onComplete() {
            try {
                if (this.d.getAsBoolean()) {
                    this.f7334a.onComplete();
                } else {
                    a();
                }
            } catch (Throwable th) {
                b.throwIfFatal(th);
                this.f7334a.onError(th);
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                do {
                    this.c.subscribe(this);
                    i = addAndGet(-i);
                } while (i != 0);
            }
        }
    }

    public cr(z<T> zVar, e eVar) {
        super(zVar);
        this.f7333b = eVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        f fVar = new f();
        agVar.onSubscribe(fVar);
        new a(agVar, this.f7333b, fVar, this.f7091a).a();
    }
}
