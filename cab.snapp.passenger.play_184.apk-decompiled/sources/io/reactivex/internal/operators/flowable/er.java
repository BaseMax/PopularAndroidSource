package io.reactivex.internal.operators.flowable;

import io.reactivex.ah;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicBoolean;
import org.b.c;
import org.b.d;

public final class er<T> extends a<T, T> {
    final ah c;

    static final class a<T> extends AtomicBoolean implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8280a;

        /* renamed from: b  reason: collision with root package name */
        final ah f8281b;
        d c;

        /* renamed from: io.reactivex.internal.operators.flowable.er$a$a  reason: collision with other inner class name */
        final class C0193a implements Runnable {
            C0193a() {
            }

            public final void run() {
                a.this.c.cancel();
            }
        }

        a(c<? super T> cVar, ah ahVar) {
            this.f8280a = cVar;
            this.f8281b = ahVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f8280a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!get()) {
                this.f8280a.onNext(t);
            }
        }

        public final void onError(Throwable th) {
            if (get()) {
                io.reactivex.g.a.onError(th);
            } else {
                this.f8280a.onError(th);
            }
        }

        public final void onComplete() {
            if (!get()) {
                this.f8280a.onComplete();
            }
        }

        public final void request(long j) {
            this.c.request(j);
        }

        public final void cancel() {
            if (compareAndSet(false, true)) {
                this.f8281b.scheduleDirect(new C0193a());
            }
        }
    }

    public er(j<T> jVar, ah ahVar) {
        super(jVar);
        this.c = ahVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
