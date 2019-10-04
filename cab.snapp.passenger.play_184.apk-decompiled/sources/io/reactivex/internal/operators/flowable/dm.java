package io.reactivex.internal.operators.flowable;

import io.reactivex.e.c;
import io.reactivex.internal.b.i;
import io.reactivex.internal.d.b;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.b.d;

public final class dm<T, R> extends a<T, R> {
    final c<R, ? super T, R> c;
    final Callable<R> d;

    static final class a<T, R> extends AtomicInteger implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super R> f8191a;

        /* renamed from: b  reason: collision with root package name */
        final c<R, ? super T, R> f8192b;
        final i<R> c;
        final AtomicLong d = new AtomicLong();
        final int e;
        final int f;
        volatile boolean g;
        volatile boolean h;
        Throwable i;
        d j;
        R k;
        int l;

        a(org.b.c<? super R> cVar, c<R, ? super T, R> cVar2, R r, int i2) {
            this.f8191a = cVar;
            this.f8192b = cVar2;
            this.k = r;
            this.e = i2;
            this.f = i2 - (i2 >> 2);
            this.c = new b(i2);
            this.c.offer(r);
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.j, dVar)) {
                this.j = dVar;
                this.f8191a.onSubscribe(this);
                dVar.request((long) (this.e - 1));
            }
        }

        public final void onNext(T t) {
            if (!this.h) {
                try {
                    R requireNonNull = io.reactivex.internal.a.b.requireNonNull(this.f8192b.apply(this.k, t), "The accumulator returned a null value");
                    this.k = requireNonNull;
                    this.c.offer(requireNonNull);
                    a();
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.j.cancel();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.h) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.i = th;
            this.h = true;
            a();
        }

        public final void onComplete() {
            if (!this.h) {
                this.h = true;
                a();
            }
        }

        public final void cancel() {
            this.g = true;
            this.j.cancel();
            if (getAndIncrement() == 0) {
                this.c.clear();
            }
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.d, j2);
                a();
            }
        }

        private void a() {
            if (getAndIncrement() == 0) {
                org.b.c<? super R> cVar = this.f8191a;
                i<R> iVar = this.c;
                int i2 = this.f;
                int i3 = this.l;
                int i4 = 1;
                do {
                    long j2 = this.d.get();
                    long j3 = 0;
                    while (j3 != j2) {
                        if (this.g) {
                            iVar.clear();
                            return;
                        }
                        boolean z = this.h;
                        if (z) {
                            Throwable th = this.i;
                            if (th != null) {
                                iVar.clear();
                                cVar.onError(th);
                                return;
                            }
                        }
                        R poll = iVar.poll();
                        boolean z2 = poll == null;
                        if (!z || !z2) {
                            if (z2) {
                                break;
                            }
                            cVar.onNext(poll);
                            j3++;
                            i3++;
                            if (i3 == i2) {
                                this.j.request((long) i2);
                                i3 = 0;
                            }
                        } else {
                            cVar.onComplete();
                            return;
                        }
                    }
                    if (j3 == j2 && this.h) {
                        Throwable th2 = this.i;
                        if (th2 != null) {
                            iVar.clear();
                            cVar.onError(th2);
                            return;
                        } else if (iVar.isEmpty()) {
                            cVar.onComplete();
                            return;
                        }
                    }
                    if (j3 != 0) {
                        io.reactivex.internal.util.c.produced(this.d, j3);
                    }
                    this.l = i3;
                    i4 = addAndGet(-i4);
                } while (i4 != 0);
            }
        }
    }

    public dm(j<T> jVar, Callable<R> callable, c<R, ? super T, R> cVar) {
        super(jVar);
        this.c = cVar;
        this.d = callable;
    }

    public final void subscribeActual(org.b.c<? super R> cVar) {
        try {
            this.f7923b.subscribe(new a(cVar, this.c, io.reactivex.internal.a.b.requireNonNull(this.d.call(), "The seed supplied is null"), bufferSize()));
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            EmptySubscription.error(th, cVar);
        }
    }
}
