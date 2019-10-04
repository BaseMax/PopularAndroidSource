package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.b.c;
import org.b.d;

public final class ec<T> extends a<T, T> {
    final int c;

    static final class a<T> extends ArrayDeque<T> implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8239a;

        /* renamed from: b  reason: collision with root package name */
        final int f8240b;
        d c;
        volatile boolean d;
        volatile boolean e;
        final AtomicLong f = new AtomicLong();
        final AtomicInteger g = new AtomicInteger();

        a(c<? super T> cVar, int i) {
            this.f8239a = cVar;
            this.f8240b = i;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.f8239a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            if (this.f8240b == size()) {
                poll();
            }
            offer(t);
        }

        public final void onError(Throwable th) {
            this.f8239a.onError(th);
        }

        public final void onComplete() {
            this.d = true;
            a();
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this.f, j);
                a();
            }
        }

        public final void cancel() {
            this.e = true;
            this.c.cancel();
        }

        private void a() {
            if (this.g.getAndIncrement() == 0) {
                c<? super T> cVar = this.f8239a;
                long j = this.f.get();
                while (!this.e) {
                    if (this.d) {
                        long j2 = 0;
                        while (j2 != j) {
                            if (!this.e) {
                                Object poll = poll();
                                if (poll == null) {
                                    cVar.onComplete();
                                    return;
                                } else {
                                    cVar.onNext(poll);
                                    j2++;
                                }
                            } else {
                                return;
                            }
                        }
                        if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                            j = this.f.addAndGet(-j2);
                        }
                    }
                    if (this.g.decrementAndGet() == 0) {
                    }
                }
            }
        }
    }

    public ec(j<T> jVar, int i) {
        super(jVar);
        this.c = i;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c));
    }
}
