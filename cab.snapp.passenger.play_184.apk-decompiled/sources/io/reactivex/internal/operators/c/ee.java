package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;

public final class ee<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final ah f7502b;

    static final class a<T> extends AtomicBoolean implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super T> f7503a;

        /* renamed from: b  reason: collision with root package name */
        final ah f7504b;
        c c;

        /* renamed from: io.reactivex.internal.operators.c.ee$a$a  reason: collision with other inner class name */
        final class C0169a implements Runnable {
            C0169a() {
            }

            public final void run() {
                a.this.c.dispose();
            }
        }

        a(ag<? super T> agVar, ah ahVar) {
            this.f7503a = agVar;
            this.f7504b = ahVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.c, cVar)) {
                this.c = cVar;
                this.f7503a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!get()) {
                this.f7503a.onNext(t);
            }
        }

        public final void onError(Throwable th) {
            if (get()) {
                io.reactivex.g.a.onError(th);
            } else {
                this.f7503a.onError(th);
            }
        }

        public final void onComplete() {
            if (!get()) {
                this.f7503a.onComplete();
            }
        }

        public final void dispose() {
            if (compareAndSet(false, true)) {
                this.f7504b.scheduleDirect(new C0169a());
            }
        }

        public final boolean isDisposed() {
            return get();
        }
    }

    public ee(ae<T> aeVar, ah ahVar) {
        super(aeVar);
        this.f7502b = ahVar;
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7502b));
    }
}
