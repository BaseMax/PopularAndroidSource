package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicBoolean;
import org.b.c;
import org.b.d;

public final class eb<T> extends a<T, T> {
    final long c;

    static final class a<T> extends AtomicBoolean implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8237a;

        /* renamed from: b  reason: collision with root package name */
        final long f8238b;
        boolean c;
        d d;
        long e;

        a(c<? super T> cVar, long j) {
            this.f8237a = cVar;
            this.f8238b = j;
            this.e = j;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.d, dVar)) {
                this.d = dVar;
                if (this.f8238b == 0) {
                    dVar.cancel();
                    this.c = true;
                    EmptySubscription.complete(this.f8237a);
                    return;
                }
                this.f8237a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.c) {
                long j = this.e;
                this.e = j - 1;
                if (j > 0) {
                    boolean z = this.e == 0;
                    this.f8237a.onNext(t);
                    if (z) {
                        this.d.cancel();
                        onComplete();
                    }
                }
            }
        }

        public final void onError(Throwable th) {
            if (!this.c) {
                this.c = true;
                this.d.cancel();
                this.f8237a.onError(th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (!this.c) {
                this.c = true;
                this.f8237a.onComplete();
            }
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                if (get() || !compareAndSet(false, true) || j < this.f8238b) {
                    this.d.request(j);
                } else {
                    this.d.request(Long.MAX_VALUE);
                }
            }
        }

        public final void cancel() {
            this.d.cancel();
        }
    }

    public eb(j<T> jVar, long j) {
        super(jVar);
        this.c = j;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
