package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class cn<T> extends a<T, T> {

    static final class a<T> extends AtomicInteger implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8101a;

        /* renamed from: b  reason: collision with root package name */
        d f8102b;
        volatile boolean c;
        Throwable d;
        volatile boolean e;
        final AtomicLong f = new AtomicLong();
        final AtomicReference<T> g = new AtomicReference<>();

        a(c<? super T> cVar) {
            this.f8101a = cVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f8102b, dVar)) {
                this.f8102b = dVar;
                this.f8101a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            this.g.lazySet(t);
            a();
        }

        public final void onError(Throwable th) {
            this.d = th;
            this.c = true;
            a();
        }

        public final void onComplete() {
            this.c = true;
            a();
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this.f, j);
                a();
            }
        }

        public final void cancel() {
            if (!this.e) {
                this.e = true;
                this.f8102b.cancel();
                if (getAndIncrement() == 0) {
                    this.g.lazySet(null);
                }
            }
        }

        private void a() {
            boolean z;
            if (getAndIncrement() == 0) {
                c<? super T> cVar = this.f8101a;
                AtomicLong atomicLong = this.f;
                AtomicReference<T> atomicReference = this.g;
                int i = 1;
                do {
                    long j = 0;
                    while (true) {
                        z = false;
                        if (j == atomicLong.get()) {
                            break;
                        }
                        boolean z2 = this.c;
                        T andSet = atomicReference.getAndSet(null);
                        boolean z3 = andSet == null;
                        if (!a(z2, z3, cVar, atomicReference)) {
                            if (z3) {
                                break;
                            }
                            cVar.onNext(andSet);
                            j++;
                        } else {
                            return;
                        }
                    }
                    if (j == atomicLong.get()) {
                        boolean z4 = this.c;
                        if (atomicReference.get() == null) {
                            z = true;
                        }
                        if (a(z4, z, cVar, atomicReference)) {
                            return;
                        }
                    }
                    if (j != 0) {
                        io.reactivex.internal.util.c.produced(atomicLong, j);
                    }
                    i = addAndGet(-i);
                } while (i != 0);
            }
        }

        private boolean a(boolean z, boolean z2, c<?> cVar, AtomicReference<T> atomicReference) {
            if (this.e) {
                atomicReference.lazySet(null);
                return true;
            }
            if (z) {
                Throwable th = this.d;
                if (th != null) {
                    atomicReference.lazySet(null);
                    cVar.onError(th);
                    return true;
                } else if (z2) {
                    cVar.onComplete();
                    return true;
                }
            }
            return false;
        }
    }

    public cn(j<T> jVar) {
        super(jVar);
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f7923b.subscribe(new a(cVar));
    }
}
