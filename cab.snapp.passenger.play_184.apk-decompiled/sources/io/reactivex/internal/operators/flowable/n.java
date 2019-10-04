package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class n<T, U extends Collection<? super T>, Open, Close> extends a<T, U> {
    final Callable<U> c;
    final org.b.b<? extends Open> d;
    final h<? super Open, ? extends org.b.b<? extends Close>> e;

    static final class a<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super C> f8359a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f8360b;
        final org.b.b<? extends Open> c;
        final h<? super Open, ? extends org.b.b<? extends Close>> d;
        final io.reactivex.b.b e = new io.reactivex.b.b();
        final AtomicLong f = new AtomicLong();
        final AtomicReference<d> g = new AtomicReference<>();
        final io.reactivex.internal.util.b h = new io.reactivex.internal.util.b();
        volatile boolean i;
        final io.reactivex.internal.d.c<C> j = new io.reactivex.internal.d.c<>(j.bufferSize());
        volatile boolean k;
        long l;
        Map<Long, C> m = new LinkedHashMap();
        long n;

        /* renamed from: io.reactivex.internal.operators.flowable.n$a$a  reason: collision with other inner class name */
        static final class C0195a<Open> extends AtomicReference<d> implements io.reactivex.b.c, o<Open> {

            /* renamed from: a  reason: collision with root package name */
            final a<?, ?, Open, ?> f8361a;

            C0195a(a<?, ?, Open, ?> aVar) {
                this.f8361a = aVar;
            }

            public final void onSubscribe(d dVar) {
                SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
            }

            public final void onNext(Open open) {
                a<?, ?, Open, ?> aVar = this.f8361a;
                try {
                    Collection collection = (Collection) io.reactivex.internal.a.b.requireNonNull(aVar.f8360b.call(), "The bufferSupplier returned a null Collection");
                    org.b.b bVar = (org.b.b) io.reactivex.internal.a.b.requireNonNull(aVar.d.apply(open), "The bufferClose returned a null Publisher");
                    long j = aVar.l;
                    aVar.l = 1 + j;
                    synchronized (aVar) {
                        Map<Long, C> map = aVar.m;
                        if (map != null) {
                            map.put(Long.valueOf(j), collection);
                            b bVar2 = new b(aVar, j);
                            aVar.e.add(bVar2);
                            bVar.subscribe(bVar2);
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    SubscriptionHelper.cancel(aVar.g);
                    aVar.onError(th);
                }
            }

            public final void onError(Throwable th) {
                lazySet(SubscriptionHelper.CANCELLED);
                this.f8361a.a((io.reactivex.b.c) this, th);
            }

            public final void onComplete() {
                lazySet(SubscriptionHelper.CANCELLED);
                a<?, ?, Open, ?> aVar = this.f8361a;
                aVar.e.delete(this);
                if (aVar.e.size() == 0) {
                    SubscriptionHelper.cancel(aVar.g);
                    aVar.i = true;
                    aVar.a();
                }
            }

            public final void dispose() {
                SubscriptionHelper.cancel(this);
            }

            public final boolean isDisposed() {
                return get() == SubscriptionHelper.CANCELLED;
            }
        }

        a(c<? super C> cVar, org.b.b<? extends Open> bVar, h<? super Open, ? extends org.b.b<? extends Close>> hVar, Callable<C> callable) {
            this.f8359a = cVar;
            this.f8360b = callable;
            this.c = bVar;
            this.d = hVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.setOnce(this.g, dVar)) {
                C0195a aVar = new C0195a(this);
                this.e.add(aVar);
                this.c.subscribe(aVar);
                dVar.request(Long.MAX_VALUE);
            }
        }

        public final void onNext(T t) {
            synchronized (this) {
                Map<Long, C> map = this.m;
                if (map != null) {
                    for (C add : map.values()) {
                        add.add(t);
                    }
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.h.addThrowable(th)) {
                this.e.dispose();
                synchronized (this) {
                    this.m = null;
                }
                this.i = true;
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.e.dispose();
            synchronized (this) {
                Map<Long, C> map = this.m;
                if (map != null) {
                    for (C offer : map.values()) {
                        this.j.offer(offer);
                    }
                    this.m = null;
                    this.i = true;
                    a();
                }
            }
        }

        public final void request(long j2) {
            io.reactivex.internal.util.c.add(this.f, j2);
            a();
        }

        public final void cancel() {
            if (SubscriptionHelper.cancel(this.g)) {
                this.k = true;
                this.e.dispose();
                synchronized (this) {
                    this.m = null;
                }
                if (getAndIncrement() != 0) {
                    this.j.clear();
                }
            }
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Code restructure failed: missing block: B:12:0x002d, code lost:
            if (r4 == false) goto L_0x0031;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x002f, code lost:
            r3.i = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0031, code lost:
            a();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x0034, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a(io.reactivex.internal.operators.flowable.n.b<T, C> r4, long r5) {
            /*
                r3 = this;
                io.reactivex.b.b r0 = r3.e
                r0.delete(r4)
                io.reactivex.b.b r4 = r3.e
                int r4 = r4.size()
                r0 = 1
                if (r4 != 0) goto L_0x0015
                java.util.concurrent.atomic.AtomicReference<org.b.d> r4 = r3.g
                io.reactivex.internal.subscriptions.SubscriptionHelper.cancel(r4)
                r4 = 1
                goto L_0x0016
            L_0x0015:
                r4 = 0
            L_0x0016:
                monitor-enter(r3)
                java.util.Map<java.lang.Long, C> r1 = r3.m     // Catch:{ all -> 0x0035 }
                if (r1 != 0) goto L_0x001d
                monitor-exit(r3)     // Catch:{ all -> 0x0035 }
                return
            L_0x001d:
                io.reactivex.internal.d.c<C> r1 = r3.j     // Catch:{ all -> 0x0035 }
                java.util.Map<java.lang.Long, C> r2 = r3.m     // Catch:{ all -> 0x0035 }
                java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x0035 }
                java.lang.Object r5 = r2.remove(r5)     // Catch:{ all -> 0x0035 }
                r1.offer(r5)     // Catch:{ all -> 0x0035 }
                monitor-exit(r3)     // Catch:{ all -> 0x0035 }
                if (r4 == 0) goto L_0x0031
                r3.i = r0
            L_0x0031:
                r3.a()
                return
            L_0x0035:
                r4 = move-exception
                monitor-exit(r3)     // Catch:{ all -> 0x0035 }
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.n.a.a(io.reactivex.internal.operators.flowable.n$b, long):void");
        }

        /* access modifiers changed from: package-private */
        public final void a(io.reactivex.b.c cVar, Throwable th) {
            SubscriptionHelper.cancel(this.g);
            this.e.delete(cVar);
            onError(th);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                long j2 = this.n;
                c<? super C> cVar = this.f8359a;
                io.reactivex.internal.d.c<C> cVar2 = this.j;
                int i2 = 1;
                do {
                    long j3 = this.f.get();
                    while (j2 != j3) {
                        if (this.k) {
                            cVar2.clear();
                            return;
                        }
                        boolean z = this.i;
                        if (!z || this.h.get() == null) {
                            Collection collection = (Collection) cVar2.poll();
                            boolean z2 = collection == null;
                            if (!z || !z2) {
                                if (z2) {
                                    break;
                                }
                                cVar.onNext(collection);
                                j2++;
                            } else {
                                cVar.onComplete();
                                return;
                            }
                        } else {
                            cVar2.clear();
                            cVar.onError(this.h.terminate());
                            return;
                        }
                    }
                    if (j2 == j3) {
                        if (this.k) {
                            cVar2.clear();
                            return;
                        } else if (this.i) {
                            if (this.h.get() != null) {
                                cVar2.clear();
                                cVar.onError(this.h.terminate());
                                return;
                            } else if (cVar2.isEmpty()) {
                                cVar.onComplete();
                                return;
                            }
                        }
                    }
                    this.n = j2;
                    i2 = addAndGet(-i2);
                } while (i2 != 0);
            }
        }
    }

    static final class b<T, C extends Collection<? super T>> extends AtomicReference<d> implements io.reactivex.b.c, o<Object> {

        /* renamed from: a  reason: collision with root package name */
        final a<T, C, ?, ?> f8362a;

        /* renamed from: b  reason: collision with root package name */
        final long f8363b;

        b(a<T, C, ?, ?> aVar, long j) {
            this.f8362a = aVar;
            this.f8363b = j;
        }

        public final void onSubscribe(d dVar) {
            SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
        }

        public final void onNext(Object obj) {
            d dVar = (d) get();
            if (dVar != SubscriptionHelper.CANCELLED) {
                lazySet(SubscriptionHelper.CANCELLED);
                dVar.cancel();
                this.f8362a.a(this, this.f8363b);
            }
        }

        public final void onError(Throwable th) {
            if (get() != SubscriptionHelper.CANCELLED) {
                lazySet(SubscriptionHelper.CANCELLED);
                this.f8362a.a((io.reactivex.b.c) this, th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (get() != SubscriptionHelper.CANCELLED) {
                lazySet(SubscriptionHelper.CANCELLED);
                this.f8362a.a(this, this.f8363b);
            }
        }

        public final void dispose() {
            SubscriptionHelper.cancel(this);
        }

        public final boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }
    }

    public n(j<T> jVar, org.b.b<? extends Open> bVar, h<? super Open, ? extends org.b.b<? extends Close>> hVar, Callable<U> callable) {
        super(jVar);
        this.d = bVar;
        this.e = hVar;
        this.c = callable;
    }

    public final void subscribeActual(c<? super U> cVar) {
        a aVar = new a(cVar, this.d, this.e, this.c);
        cVar.onSubscribe(aVar);
        this.f7923b.subscribe(aVar);
    }
}
