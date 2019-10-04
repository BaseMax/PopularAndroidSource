package io.reactivex.internal.operators.flowable;

import io.reactivex.e.c;
import io.reactivex.internal.a.b;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.Iterator;
import org.b.d;

public final class fb<T, U, V> extends a<T, V> {
    final Iterable<U> c;
    final c<? super T, ? super U, ? extends V> d;

    static final class a<T, U, V> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super V> f8335a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<U> f8336b;
        final c<? super T, ? super U, ? extends V> c;
        d d;
        boolean e;

        a(org.b.c<? super V> cVar, Iterator<U> it, c<? super T, ? super U, ? extends V> cVar2) {
            this.f8335a = cVar;
            this.f8336b = it;
            this.c = cVar2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.d, dVar)) {
                this.d = dVar;
                this.f8335a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.e) {
                try {
                    try {
                        this.f8335a.onNext(b.requireNonNull(this.c.apply(t, b.requireNonNull(this.f8336b.next(), "The iterator returned a null value")), "The zipper function returned a null value"));
                        try {
                            if (!this.f8336b.hasNext()) {
                                this.e = true;
                                this.d.cancel();
                                this.f8335a.onComplete();
                            }
                        } catch (Throwable th) {
                            a(th);
                        }
                    } catch (Throwable th2) {
                        a(th2);
                    }
                } catch (Throwable th3) {
                    a(th3);
                }
            }
        }

        private void a(Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            this.e = true;
            this.d.cancel();
            this.f8335a.onError(th);
        }

        public final void onError(Throwable th) {
            if (this.e) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.e = true;
            this.f8335a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                this.f8335a.onComplete();
            }
        }

        public final void request(long j) {
            this.d.request(j);
        }

        public final void cancel() {
            this.d.cancel();
        }
    }

    public fb(j<T> jVar, Iterable<U> iterable, c<? super T, ? super U, ? extends V> cVar) {
        super(jVar);
        this.c = iterable;
        this.d = cVar;
    }

    public final void subscribeActual(org.b.c<? super V> cVar) {
        try {
            Iterator it = (Iterator) b.requireNonNull(this.c.iterator(), "The iterator returned by other is null");
            try {
                if (!it.hasNext()) {
                    EmptySubscription.complete(cVar);
                } else {
                    this.f7923b.subscribe(new a(cVar, it, this.d));
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                EmptySubscription.error(th, cVar);
            }
        } catch (Throwable th2) {
            io.reactivex.c.b.throwIfFatal(th2);
            EmptySubscription.error(th2, cVar);
        }
    }
}
