package io.reactivex.internal.operators.flowable;

import io.reactivex.al;
import io.reactivex.ao;
import io.reactivex.b.b;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class be<T, R> extends a<T, R> {
    final h<? super T, ? extends ao<? extends R>> c;
    final boolean d;
    final int e;

    static final class a<T, R> extends AtomicInteger implements o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f8016a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f8017b;
        final int c;
        final AtomicLong d = new AtomicLong();
        final b e = new b();
        final AtomicInteger f = new AtomicInteger(1);
        final io.reactivex.internal.util.b g = new io.reactivex.internal.util.b();
        final h<? super T, ? extends ao<? extends R>> h;
        final AtomicReference<io.reactivex.internal.d.c<R>> i = new AtomicReference<>();
        d j;
        volatile boolean k;

        /* renamed from: io.reactivex.internal.operators.flowable.be$a$a  reason: collision with other inner class name */
        final class C0185a extends AtomicReference<io.reactivex.b.c> implements al<R>, io.reactivex.b.c {
            C0185a() {
            }

            public final void onSubscribe(io.reactivex.b.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            /* JADX WARNING: Code restructure failed: missing block: B:29:0x0077, code lost:
                if (r0.decrementAndGet() != 0) goto L_0x0091;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:40:0x008f, code lost:
                if (r0.getAndIncrement() == 0) goto L_0x0091;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:41:0x0091, code lost:
                r0.c();
             */
            /* JADX WARNING: Code restructure failed: missing block: B:42:0x0094, code lost:
                return;
             */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public final void onSuccess(R r8) {
                /*
                    r7 = this;
                    io.reactivex.internal.operators.flowable.be$a r0 = io.reactivex.internal.operators.flowable.be.a.this
                    io.reactivex.b.b r1 = r0.e
                    r1.delete(r7)
                    int r1 = r0.get()
                    if (r1 != 0) goto L_0x007d
                    r1 = 1
                    r2 = 0
                    boolean r3 = r0.compareAndSet(r2, r1)
                    if (r3 == 0) goto L_0x007d
                    java.util.concurrent.atomic.AtomicInteger r3 = r0.f
                    int r3 = r3.decrementAndGet()
                    if (r3 != 0) goto L_0x001e
                    goto L_0x001f
                L_0x001e:
                    r1 = 0
                L_0x001f:
                    java.util.concurrent.atomic.AtomicLong r2 = r0.d
                    long r2 = r2.get()
                    r4 = 0
                    int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                    if (r6 == 0) goto L_0x006a
                    org.b.c<? super R> r2 = r0.f8016a
                    r2.onNext(r8)
                    java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.d.c<R>> r8 = r0.i
                    java.lang.Object r8 = r8.get()
                    io.reactivex.internal.d.c r8 = (io.reactivex.internal.d.c) r8
                    if (r1 == 0) goto L_0x0056
                    if (r8 == 0) goto L_0x0042
                    boolean r8 = r8.isEmpty()
                    if (r8 == 0) goto L_0x0056
                L_0x0042:
                    io.reactivex.internal.util.b r8 = r0.g
                    java.lang.Throwable r8 = r8.terminate()
                    if (r8 == 0) goto L_0x0050
                    org.b.c<? super R> r0 = r0.f8016a
                    r0.onError(r8)
                    return
                L_0x0050:
                    org.b.c<? super R> r8 = r0.f8016a
                    r8.onComplete()
                    return
                L_0x0056:
                    java.util.concurrent.atomic.AtomicLong r8 = r0.d
                    r1 = 1
                    io.reactivex.internal.util.c.produced(r8, r1)
                    int r8 = r0.c
                    r3 = 2147483647(0x7fffffff, float:NaN)
                    if (r8 == r3) goto L_0x0073
                    org.b.d r8 = r0.j
                    r8.request(r1)
                    goto L_0x0073
                L_0x006a:
                    io.reactivex.internal.d.c r1 = r0.a()
                    monitor-enter(r1)
                    r1.offer(r8)     // Catch:{ all -> 0x007a }
                    monitor-exit(r1)     // Catch:{ all -> 0x007a }
                L_0x0073:
                    int r8 = r0.decrementAndGet()
                    if (r8 == 0) goto L_0x0094
                    goto L_0x0091
                L_0x007a:
                    r8 = move-exception
                    monitor-exit(r1)     // Catch:{ all -> 0x007a }
                    throw r8
                L_0x007d:
                    io.reactivex.internal.d.c r1 = r0.a()
                    monitor-enter(r1)
                    r1.offer(r8)     // Catch:{ all -> 0x0095 }
                    monitor-exit(r1)     // Catch:{ all -> 0x0095 }
                    java.util.concurrent.atomic.AtomicInteger r8 = r0.f
                    r8.decrementAndGet()
                    int r8 = r0.getAndIncrement()
                    if (r8 != 0) goto L_0x0094
                L_0x0091:
                    r0.c()
                L_0x0094:
                    return
                L_0x0095:
                    r8 = move-exception
                    monitor-exit(r1)     // Catch:{ all -> 0x0095 }
                    throw r8
                */
                throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.be.a.C0185a.onSuccess(java.lang.Object):void");
            }

            public final void onError(Throwable th) {
                a aVar = a.this;
                aVar.e.delete(this);
                if (aVar.g.addThrowable(th)) {
                    if (!aVar.f8017b) {
                        aVar.j.cancel();
                        aVar.e.dispose();
                    } else if (aVar.c != Integer.MAX_VALUE) {
                        aVar.j.request(1);
                    }
                    aVar.f.decrementAndGet();
                    aVar.b();
                    return;
                }
                io.reactivex.g.a.onError(th);
            }

            public final boolean isDisposed() {
                return DisposableHelper.isDisposed((io.reactivex.b.c) get());
            }

            public final void dispose() {
                DisposableHelper.dispose(this);
            }
        }

        a(c<? super R> cVar, h<? super T, ? extends ao<? extends R>> hVar, boolean z, int i2) {
            this.f8016a = cVar;
            this.h = hVar;
            this.f8017b = z;
            this.c = i2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.j, dVar)) {
                this.j = dVar;
                this.f8016a.onSubscribe(this);
                int i2 = this.c;
                if (i2 == Integer.MAX_VALUE) {
                    dVar.request(Long.MAX_VALUE);
                    return;
                }
                dVar.request((long) i2);
            }
        }

        public final void onNext(T t) {
            try {
                ao aoVar = (ao) io.reactivex.internal.a.b.requireNonNull(this.h.apply(t), "The mapper returned a null SingleSource");
                this.f.getAndIncrement();
                C0185a aVar = new C0185a();
                if (!this.k && this.e.add(aVar)) {
                    aoVar.subscribe(aVar);
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.j.cancel();
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.f.decrementAndGet();
            if (this.g.addThrowable(th)) {
                if (!this.f8017b) {
                    this.e.dispose();
                }
                b();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.f.decrementAndGet();
            b();
        }

        public final void cancel() {
            this.k = true;
            this.j.cancel();
            this.e.dispose();
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.d, j2);
                b();
            }
        }

        /* access modifiers changed from: package-private */
        public final io.reactivex.internal.d.c<R> a() {
            io.reactivex.internal.d.c<R> cVar;
            do {
                io.reactivex.internal.d.c<R> cVar2 = this.i.get();
                if (cVar2 != null) {
                    return cVar2;
                }
                cVar = new io.reactivex.internal.d.c<>(j.bufferSize());
            } while (!this.i.compareAndSet(null, cVar));
            return cVar;
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            if (getAndIncrement() == 0) {
                c();
            }
        }

        private void d() {
            io.reactivex.internal.d.c cVar = this.i.get();
            if (cVar != null) {
                cVar.clear();
            }
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            boolean z;
            c<? super R> cVar = this.f8016a;
            AtomicInteger atomicInteger = this.f;
            AtomicReference<io.reactivex.internal.d.c<R>> atomicReference = this.i;
            int i2 = 1;
            do {
                long j2 = this.d.get();
                long j3 = 0;
                while (true) {
                    z = false;
                    if (j3 == j2) {
                        break;
                    } else if (this.k) {
                        d();
                        return;
                    } else if (this.f8017b || ((Throwable) this.g.get()) == null) {
                        boolean z2 = atomicInteger.get() == 0;
                        io.reactivex.internal.d.c cVar2 = atomicReference.get();
                        Object poll = cVar2 != null ? cVar2.poll() : null;
                        boolean z3 = poll == null;
                        if (!z2 || !z3) {
                            if (z3) {
                                break;
                            }
                            cVar.onNext(poll);
                            j3++;
                        } else {
                            Throwable terminate = this.g.terminate();
                            if (terminate != null) {
                                cVar.onError(terminate);
                                return;
                            } else {
                                cVar.onComplete();
                                return;
                            }
                        }
                    } else {
                        Throwable terminate2 = this.g.terminate();
                        d();
                        cVar.onError(terminate2);
                        return;
                    }
                }
                if (j3 == j2) {
                    if (this.k) {
                        d();
                        return;
                    } else if (this.f8017b || ((Throwable) this.g.get()) == null) {
                        boolean z4 = atomicInteger.get() == 0;
                        io.reactivex.internal.d.c cVar3 = atomicReference.get();
                        if (cVar3 == null || cVar3.isEmpty()) {
                            z = true;
                        }
                        if (z4 && z) {
                            Throwable terminate3 = this.g.terminate();
                            if (terminate3 != null) {
                                cVar.onError(terminate3);
                                return;
                            } else {
                                cVar.onComplete();
                                return;
                            }
                        }
                    } else {
                        Throwable terminate4 = this.g.terminate();
                        d();
                        cVar.onError(terminate4);
                        return;
                    }
                }
                if (j3 != 0) {
                    io.reactivex.internal.util.c.produced(this.d, j3);
                    if (this.c != Integer.MAX_VALUE) {
                        this.j.request(j3);
                    }
                }
                i2 = addAndGet(-i2);
            } while (i2 != 0);
        }
    }

    public be(j<T> jVar, h<? super T, ? extends ao<? extends R>> hVar, boolean z, int i) {
        super(jVar);
        this.c = hVar;
        this.d = z;
        this.e = i;
    }

    public final void subscribeActual(c<? super R> cVar) {
        this.f7923b.subscribe(new a(cVar, this.c, this.d, this.e));
    }
}
