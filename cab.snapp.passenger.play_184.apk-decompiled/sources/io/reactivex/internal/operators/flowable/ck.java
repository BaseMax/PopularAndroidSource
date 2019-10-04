package io.reactivex.internal.operators.flowable;

import io.reactivex.BackpressureOverflowStrategy;
import io.reactivex.c.b;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.b.c;
import org.b.d;

public final class ck<T> extends a<T, T> {
    final long c;
    final io.reactivex.e.a d;
    final BackpressureOverflowStrategy e;

    /* renamed from: io.reactivex.internal.operators.flowable.ck$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8094a = new int[BackpressureOverflowStrategy.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            /*
                io.reactivex.BackpressureOverflowStrategy[] r0 = io.reactivex.BackpressureOverflowStrategy.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f8094a = r0
                int[] r0 = f8094a     // Catch:{ NoSuchFieldError -> 0x0014 }
                io.reactivex.BackpressureOverflowStrategy r1 = io.reactivex.BackpressureOverflowStrategy.DROP_LATEST     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f8094a     // Catch:{ NoSuchFieldError -> 0x001f }
                io.reactivex.BackpressureOverflowStrategy r1 = io.reactivex.BackpressureOverflowStrategy.DROP_OLDEST     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.ck.AnonymousClass1.<clinit>():void");
        }
    }

    static final class a<T> extends AtomicInteger implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8095a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.a f8096b;
        final BackpressureOverflowStrategy c;
        final long d;
        final AtomicLong e = new AtomicLong();
        final Deque<T> f = new ArrayDeque();
        d g;
        volatile boolean h;
        volatile boolean i;
        Throwable j;

        a(c<? super T> cVar, io.reactivex.e.a aVar, BackpressureOverflowStrategy backpressureOverflowStrategy, long j2) {
            this.f8095a = cVar;
            this.f8096b = aVar;
            this.c = backpressureOverflowStrategy;
            this.d = j2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.g, dVar)) {
                this.g = dVar;
                this.f8095a.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            boolean z;
            boolean z2;
            if (!this.i) {
                Deque<T> deque = this.f;
                synchronized (deque) {
                    z = false;
                    z2 = true;
                    if (((long) deque.size()) == this.d) {
                        int i2 = AnonymousClass1.f8094a[this.c.ordinal()];
                        if (i2 == 1) {
                            deque.pollLast();
                            deque.offer(t);
                        } else if (i2 == 2) {
                            deque.poll();
                            deque.offer(t);
                        }
                        z = true;
                    } else {
                        deque.offer(t);
                    }
                    z2 = false;
                }
                if (z) {
                    io.reactivex.e.a aVar = this.f8096b;
                    if (aVar != null) {
                        try {
                            aVar.run();
                        } catch (Throwable th) {
                            b.throwIfFatal(th);
                            this.g.cancel();
                            onError(th);
                        }
                    }
                } else if (z2) {
                    this.g.cancel();
                    onError(new io.reactivex.c.c());
                } else {
                    a();
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.i) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.j = th;
            this.i = true;
            a();
        }

        public final void onComplete() {
            this.i = true;
            a();
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.e, j2);
                a();
            }
        }

        public final void cancel() {
            this.h = true;
            this.g.cancel();
            if (getAndIncrement() == 0) {
                a(this.f);
            }
        }

        private static void a(Deque<T> deque) {
            synchronized (deque) {
                deque.clear();
            }
        }

        private void a() {
            boolean isEmpty;
            T poll;
            if (getAndIncrement() == 0) {
                Deque<T> deque = this.f;
                c<? super T> cVar = this.f8095a;
                int i2 = 1;
                do {
                    long j2 = this.e.get();
                    long j3 = 0;
                    while (j3 != j2) {
                        if (!this.h) {
                            boolean z = this.i;
                            synchronized (deque) {
                                poll = deque.poll();
                            }
                            boolean z2 = poll == null;
                            if (z) {
                                Throwable th = this.j;
                                if (th != null) {
                                    a(deque);
                                    cVar.onError(th);
                                    return;
                                } else if (z2) {
                                    cVar.onComplete();
                                    return;
                                }
                            }
                            if (z2) {
                                break;
                            }
                            cVar.onNext(poll);
                            j3++;
                        } else {
                            a(deque);
                            return;
                        }
                    }
                    if (j3 == j2) {
                        if (this.h) {
                            a(deque);
                            return;
                        }
                        boolean z3 = this.i;
                        synchronized (deque) {
                            isEmpty = deque.isEmpty();
                        }
                        if (z3) {
                            Throwable th2 = this.j;
                            if (th2 != null) {
                                a(deque);
                                cVar.onError(th2);
                                return;
                            } else if (isEmpty) {
                                cVar.onComplete();
                                return;
                            }
                        }
                    }
                    if (j3 != 0) {
                        io.reactivex.internal.util.c.produced(this.e, j3);
                    }
                    i2 = addAndGet(-i2);
                } while (i2 != 0);
            }
        }
    }

    public ck(j<T> jVar, long j, io.reactivex.e.a aVar, BackpressureOverflowStrategy backpressureOverflowStrategy) {
        super(jVar);
        this.c = j;
        this.d = aVar;
        this.e = backpressureOverflowStrategy;
    }

    public final void subscribeActual(c<? super T> cVar) {
        j jVar = this.f7923b;
        a aVar = new a(cVar, this.d, this.e, this.c);
        jVar.subscribe(aVar);
    }
}
