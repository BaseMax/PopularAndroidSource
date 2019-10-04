package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.f.b;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.j;
import java.util.Collection;
import java.util.concurrent.Callable;
import org.b.c;

public final class an<T, K> extends a<T, T> {
    final h<? super T, K> c;
    final Callable<? extends Collection<? super K>> d;

    static final class a<T, K> extends b<T, T> {

        /* renamed from: a  reason: collision with root package name */
        final Collection<? super K> f7965a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, K> f7966b;

        a(c<? super T> cVar, h<? super T, K> hVar, Collection<? super K> collection) {
            super(cVar);
            this.f7966b = hVar;
            this.f7965a = collection;
        }

        public final void onNext(T t) {
            if (!this.h) {
                if (this.i == 0) {
                    try {
                        if (this.f7965a.add(io.reactivex.internal.a.b.requireNonNull(this.f7966b.apply(t), "The keySelector returned a null key"))) {
                            this.e.onNext(t);
                        } else {
                            this.f.request(1);
                        }
                    } catch (Throwable th) {
                        a(th);
                    }
                } else {
                    this.e.onNext(null);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.h) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.h = true;
            this.f7965a.clear();
            this.e.onError(th);
        }

        public final void onComplete() {
            if (!this.h) {
                this.h = true;
                this.f7965a.clear();
                this.e.onComplete();
            }
        }

        public final int requestFusion(int i) {
            return a(i);
        }

        public final T poll() throws Exception {
            T poll;
            while (true) {
                poll = this.g.poll();
                if (poll == null || this.f7965a.add(io.reactivex.internal.a.b.requireNonNull(this.f7966b.apply(poll), "The keySelector returned a null key"))) {
                    return poll;
                }
                if (this.i == 2) {
                    this.f.request(1);
                }
            }
            return poll;
        }

        public final void clear() {
            this.f7965a.clear();
            super.clear();
        }
    }

    public an(j<T> jVar, h<? super T, K> hVar, Callable<? extends Collection<? super K>> callable) {
        super(jVar);
        this.c = hVar;
        this.d = callable;
    }

    public final void subscribeActual(c<? super T> cVar) {
        try {
            this.f7923b.subscribe(new a(cVar, this.c, (Collection) io.reactivex.internal.a.b.requireNonNull(this.d.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
