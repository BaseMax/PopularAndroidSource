package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.i.b;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;

public final class dy<T> extends a<T, b<T>> {

    /* renamed from: b  reason: collision with root package name */
    final ah f7468b;
    final TimeUnit c;

    static final class a<T> implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super b<T>> f7469a;

        /* renamed from: b  reason: collision with root package name */
        final TimeUnit f7470b;
        final ah c;
        long d;
        c e;

        a(ag<? super b<T>> agVar, TimeUnit timeUnit, ah ahVar) {
            this.f7469a = agVar;
            this.c = ahVar;
            this.f7470b = timeUnit;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.e, cVar)) {
                this.e = cVar;
                this.d = this.c.now(this.f7470b);
                this.f7469a.onSubscribe(this);
            }
        }

        public final void dispose() {
            this.e.dispose();
        }

        public final boolean isDisposed() {
            return this.e.isDisposed();
        }

        public final void onNext(T t) {
            long now = this.c.now(this.f7470b);
            long j = this.d;
            this.d = now;
            this.f7469a.onNext(new b(t, now - j, this.f7470b));
        }

        public final void onError(Throwable th) {
            this.f7469a.onError(th);
        }

        public final void onComplete() {
            this.f7469a.onComplete();
        }
    }

    public dy(ae<T> aeVar, TimeUnit timeUnit, ah ahVar) {
        super(aeVar);
        this.f7468b = ahVar;
        this.c = timeUnit;
    }

    public final void subscribeActual(ag<? super b<T>> agVar) {
        this.f7091a.subscribe(new a(agVar, this.c, this.f7468b));
    }
}
