package io.reactivex.internal.operators.flowable;

import io.reactivex.e.g;
import io.reactivex.e.h;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import org.b.b;
import org.b.c;
import org.b.d;

public final class es<T, D> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends D> f8283b;
    final h<? super D, ? extends b<? extends T>> c;
    final g<? super D> d;
    final boolean e;

    static final class a<T, D> extends AtomicBoolean implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8284a;

        /* renamed from: b  reason: collision with root package name */
        final D f8285b;
        final g<? super D> c;
        final boolean d;
        d e;

        a(c<? super T> cVar, D d2, g<? super D> gVar, boolean z) {
            this.f8284a = cVar;
            this.f8285b = d2;
            this.c = gVar;
            this.d = z;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.e, dVar)) {
                this.e = dVar;
                this.f8284a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.f8284a.onNext(t);
        }

        public final void onError(Throwable th) {
            if (this.d) {
                Throwable th2 = null;
                if (compareAndSet(false, true)) {
                    try {
                        this.c.accept(this.f8285b);
                    } catch (Throwable th3) {
                        th2 = th3;
                        io.reactivex.c.b.throwIfFatal(th2);
                    }
                }
                this.e.cancel();
                if (th2 != null) {
                    this.f8284a.onError(new io.reactivex.c.a(th, th2));
                    return;
                }
                this.f8284a.onError(th);
                return;
            }
            this.f8284a.onError(th);
            this.e.cancel();
            a();
        }

        public final void onComplete() {
            if (this.d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.c.accept(this.f8285b);
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        this.f8284a.onError(th);
                        return;
                    }
                }
                this.e.cancel();
                this.f8284a.onComplete();
                return;
            }
            this.f8284a.onComplete();
            this.e.cancel();
            a();
        }

        public final void request(long j) {
            this.e.request(j);
        }

        public final void cancel() {
            a();
            this.e.cancel();
        }

        private void a() {
            if (compareAndSet(false, true)) {
                try {
                    this.c.accept(this.f8285b);
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    io.reactivex.g.a.onError(th);
                }
            }
        }
    }

    public es(Callable<? extends D> callable, h<? super D, ? extends b<? extends T>> hVar, g<? super D> gVar, boolean z) {
        this.f8283b = callable;
        this.c = hVar;
        this.d = gVar;
        this.e = z;
    }

    public final void subscribeActual(c<? super T> cVar) {
        try {
            Object call = this.f8283b.call();
            try {
                ((b) io.reactivex.internal.a.b.requireNonNull(this.c.apply(call), "The sourceSupplier returned a null Publisher")).subscribe(new a(cVar, call, this.d, this.e));
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                EmptySubscription.error(new io.reactivex.c.a(th, th), cVar);
            }
        } catch (Throwable th2) {
            io.reactivex.c.b.throwIfFatal(th2);
            EmptySubscription.error(th2, cVar);
        }
    }
}
