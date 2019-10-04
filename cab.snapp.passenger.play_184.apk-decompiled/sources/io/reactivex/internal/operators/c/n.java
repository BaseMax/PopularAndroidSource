package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.z;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class n<T, U extends Collection<? super T>, Open, Close> extends a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f7588b;
    final ae<? extends Open> c;
    final h<? super Open, ? extends ae<? extends Close>> d;

    static final class a<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super C> f7589a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f7590b;
        final ae<? extends Open> c;
        final h<? super Open, ? extends ae<? extends Close>> d;
        final io.reactivex.b.b e = new io.reactivex.b.b();
        final AtomicReference<c> f = new AtomicReference<>();
        final io.reactivex.internal.util.b g = new io.reactivex.internal.util.b();
        volatile boolean h;
        final io.reactivex.internal.d.c<C> i = new io.reactivex.internal.d.c<>(z.bufferSize());
        volatile boolean j;
        long k;
        Map<Long, C> l = new LinkedHashMap();

        /* renamed from: io.reactivex.internal.operators.c.n$a$a  reason: collision with other inner class name */
        static final class C0171a<Open> extends AtomicReference<c> implements ag<Open>, c {

            /* renamed from: a  reason: collision with root package name */
            final a<?, ?, Open, ?> f7591a;

            C0171a(a<?, ?, Open, ?> aVar) {
                this.f7591a = aVar;
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            public final void onNext(Open open) {
                a<?, ?, Open, ?> aVar = this.f7591a;
                try {
                    Collection collection = (Collection) io.reactivex.internal.a.b.requireNonNull(aVar.f7590b.call(), "The bufferSupplier returned a null Collection");
                    ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(aVar.d.apply(open), "The bufferClose returned a null ObservableSource");
                    long j = aVar.k;
                    aVar.k = 1 + j;
                    synchronized (aVar) {
                        Map<Long, C> map = aVar.l;
                        if (map != null) {
                            map.put(Long.valueOf(j), collection);
                            b bVar = new b(aVar, j);
                            aVar.e.add(bVar);
                            aeVar.subscribe(bVar);
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    DisposableHelper.dispose(aVar.f);
                    aVar.onError(th);
                }
            }

            public final void onError(Throwable th) {
                lazySet(DisposableHelper.DISPOSED);
                this.f7591a.a((c) this, th);
            }

            public final void onComplete() {
                lazySet(DisposableHelper.DISPOSED);
                a<?, ?, Open, ?> aVar = this.f7591a;
                aVar.e.delete(this);
                if (aVar.e.size() == 0) {
                    DisposableHelper.dispose(aVar.f);
                    aVar.h = true;
                    aVar.a();
                }
            }

            public final void dispose() {
                DisposableHelper.dispose(this);
            }

            public final boolean isDisposed() {
                return get() == DisposableHelper.DISPOSED;
            }
        }

        a(ag<? super C> agVar, ae<? extends Open> aeVar, h<? super Open, ? extends ae<? extends Close>> hVar, Callable<C> callable) {
            this.f7589a = agVar;
            this.f7590b = callable;
            this.c = aeVar;
            this.d = hVar;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this.f, cVar)) {
                C0171a aVar = new C0171a(this);
                this.e.add(aVar);
                this.c.subscribe(aVar);
            }
        }

        public final void onNext(T t) {
            synchronized (this) {
                Map<Long, C> map = this.l;
                if (map != null) {
                    for (C add : map.values()) {
                        add.add(t);
                    }
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.g.addThrowable(th)) {
                this.e.dispose();
                synchronized (this) {
                    this.l = null;
                }
                this.h = true;
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.e.dispose();
            synchronized (this) {
                Map<Long, C> map = this.l;
                if (map != null) {
                    for (C offer : map.values()) {
                        this.i.offer(offer);
                    }
                    this.l = null;
                    this.h = true;
                    a();
                }
            }
        }

        public final void dispose() {
            if (DisposableHelper.dispose(this.f)) {
                this.j = true;
                this.e.dispose();
                synchronized (this) {
                    this.l = null;
                }
                if (getAndIncrement() != 0) {
                    this.i.clear();
                }
            }
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f.get());
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Code restructure failed: missing block: B:12:0x002d, code lost:
            if (r4 == false) goto L_0x0031;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x002f, code lost:
            r3.h = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0031, code lost:
            a();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x0034, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a(io.reactivex.internal.operators.c.n.b<T, C> r4, long r5) {
            /*
                r3 = this;
                io.reactivex.b.b r0 = r3.e
                r0.delete(r4)
                io.reactivex.b.b r4 = r3.e
                int r4 = r4.size()
                r0 = 1
                if (r4 != 0) goto L_0x0015
                java.util.concurrent.atomic.AtomicReference<io.reactivex.b.c> r4 = r3.f
                io.reactivex.internal.disposables.DisposableHelper.dispose(r4)
                r4 = 1
                goto L_0x0016
            L_0x0015:
                r4 = 0
            L_0x0016:
                monitor-enter(r3)
                java.util.Map<java.lang.Long, C> r1 = r3.l     // Catch:{ all -> 0x0035 }
                if (r1 != 0) goto L_0x001d
                monitor-exit(r3)     // Catch:{ all -> 0x0035 }
                return
            L_0x001d:
                io.reactivex.internal.d.c<C> r1 = r3.i     // Catch:{ all -> 0x0035 }
                java.util.Map<java.lang.Long, C> r2 = r3.l     // Catch:{ all -> 0x0035 }
                java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x0035 }
                java.lang.Object r5 = r2.remove(r5)     // Catch:{ all -> 0x0035 }
                r1.offer(r5)     // Catch:{ all -> 0x0035 }
                monitor-exit(r3)     // Catch:{ all -> 0x0035 }
                if (r4 == 0) goto L_0x0031
                r3.h = r0
            L_0x0031:
                r3.a()
                return
            L_0x0035:
                r4 = move-exception
                monitor-exit(r3)     // Catch:{ all -> 0x0035 }
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.n.a.a(io.reactivex.internal.operators.c.n$b, long):void");
        }

        /* access modifiers changed from: package-private */
        public final void a(c cVar, Throwable th) {
            DisposableHelper.dispose(this.f);
            this.e.delete(cVar);
            onError(th);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                ag<? super C> agVar = this.f7589a;
                io.reactivex.internal.d.c<C> cVar = this.i;
                int i2 = 1;
                while (!this.j) {
                    boolean z = this.h;
                    if (!z || this.g.get() == null) {
                        Collection collection = (Collection) cVar.poll();
                        boolean z2 = collection == null;
                        if (z && z2) {
                            agVar.onComplete();
                            return;
                        } else if (!z2) {
                            agVar.onNext(collection);
                        } else {
                            i2 = addAndGet(-i2);
                            if (i2 == 0) {
                                return;
                            }
                        }
                    } else {
                        cVar.clear();
                        agVar.onError(this.g.terminate());
                        return;
                    }
                }
                cVar.clear();
            }
        }
    }

    static final class b<T, C extends Collection<? super T>> extends AtomicReference<c> implements ag<Object>, c {

        /* renamed from: a  reason: collision with root package name */
        final a<T, C, ?, ?> f7592a;

        /* renamed from: b  reason: collision with root package name */
        final long f7593b;

        b(a<T, C, ?, ?> aVar, long j) {
            this.f7592a = aVar;
            this.f7593b = j;
        }

        public final void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onNext(Object obj) {
            c cVar = (c) get();
            if (cVar != DisposableHelper.DISPOSED) {
                lazySet(DisposableHelper.DISPOSED);
                cVar.dispose();
                this.f7592a.a(this, this.f7593b);
            }
        }

        public final void onError(Throwable th) {
            if (get() != DisposableHelper.DISPOSED) {
                lazySet(DisposableHelper.DISPOSED);
                this.f7592a.a((c) this, th);
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (get() != DisposableHelper.DISPOSED) {
                lazySet(DisposableHelper.DISPOSED);
                this.f7592a.a(this, this.f7593b);
            }
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }
    }

    public n(ae<T> aeVar, ae<? extends Open> aeVar2, h<? super Open, ? extends ae<? extends Close>> hVar, Callable<U> callable) {
        super(aeVar);
        this.c = aeVar2;
        this.d = hVar;
        this.f7588b = callable;
    }

    public final void subscribeActual(ag<? super U> agVar) {
        a aVar = new a(agVar, this.c, this.d, this.f7588b);
        agVar.onSubscribe(aVar);
        this.f7091a.subscribe(aVar);
    }
}
