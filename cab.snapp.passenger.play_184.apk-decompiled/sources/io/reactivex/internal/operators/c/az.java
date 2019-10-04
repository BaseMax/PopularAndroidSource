package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.b;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.t;
import io.reactivex.w;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class az<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends w<? extends R>> f7167b;
    final boolean c;

    static final class a<T, R> extends AtomicInteger implements ag<T>, c {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7168a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f7169b;
        final b c = new b();
        final AtomicInteger d = new AtomicInteger(1);
        final io.reactivex.internal.util.b e = new io.reactivex.internal.util.b();
        final h<? super T, ? extends w<? extends R>> f;
        final AtomicReference<io.reactivex.internal.d.c<R>> g = new AtomicReference<>();
        c h;
        volatile boolean i;

        /* renamed from: io.reactivex.internal.operators.c.az$a$a  reason: collision with other inner class name */
        final class C0160a extends AtomicReference<c> implements c, t<R> {
            C0160a() {
            }

            public final void onSubscribe(c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            /* JADX WARNING: Code restructure failed: missing block: B:19:0x004e, code lost:
                if (r0.decrementAndGet() != 0) goto L_0x007e;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:29:0x007c, code lost:
                if (r0.getAndIncrement() == 0) goto L_0x007e;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:30:0x007e, code lost:
                r0.b();
             */
            /* JADX WARNING: Code restructure failed: missing block: B:31:0x0081, code lost:
                return;
             */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public final void onSuccess(R r5) {
                /*
                    r4 = this;
                    io.reactivex.internal.operators.c.az$a r0 = io.reactivex.internal.operators.c.az.a.this
                    io.reactivex.b.b r1 = r0.c
                    r1.delete(r4)
                    int r1 = r0.get()
                    if (r1 != 0) goto L_0x0051
                    r1 = 1
                    r2 = 0
                    boolean r3 = r0.compareAndSet(r2, r1)
                    if (r3 == 0) goto L_0x0051
                    io.reactivex.ag<? super R> r3 = r0.f7168a
                    r3.onNext(r5)
                    java.util.concurrent.atomic.AtomicInteger r5 = r0.d
                    int r5 = r5.decrementAndGet()
                    if (r5 != 0) goto L_0x0023
                    goto L_0x0024
                L_0x0023:
                    r1 = 0
                L_0x0024:
                    java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.d.c<R>> r5 = r0.g
                    java.lang.Object r5 = r5.get()
                    io.reactivex.internal.d.c r5 = (io.reactivex.internal.d.c) r5
                    if (r1 == 0) goto L_0x004a
                    if (r5 == 0) goto L_0x0036
                    boolean r5 = r5.isEmpty()
                    if (r5 == 0) goto L_0x004a
                L_0x0036:
                    io.reactivex.internal.util.b r5 = r0.e
                    java.lang.Throwable r5 = r5.terminate()
                    if (r5 == 0) goto L_0x0044
                    io.reactivex.ag<? super R> r0 = r0.f7168a
                    r0.onError(r5)
                    return
                L_0x0044:
                    io.reactivex.ag<? super R> r5 = r0.f7168a
                    r5.onComplete()
                    return
                L_0x004a:
                    int r5 = r0.decrementAndGet()
                    if (r5 == 0) goto L_0x0081
                    goto L_0x007e
                L_0x0051:
                    java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.d.c<R>> r1 = r0.g
                    java.lang.Object r1 = r1.get()
                    io.reactivex.internal.d.c r1 = (io.reactivex.internal.d.c) r1
                    if (r1 == 0) goto L_0x005c
                    goto L_0x006e
                L_0x005c:
                    io.reactivex.internal.d.c r1 = new io.reactivex.internal.d.c
                    int r2 = io.reactivex.z.bufferSize()
                    r1.<init>(r2)
                    java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.d.c<R>> r2 = r0.g
                    r3 = 0
                    boolean r2 = r2.compareAndSet(r3, r1)
                    if (r2 == 0) goto L_0x0051
                L_0x006e:
                    monitor-enter(r1)
                    r1.offer(r5)     // Catch:{ all -> 0x0082 }
                    monitor-exit(r1)     // Catch:{ all -> 0x0082 }
                    java.util.concurrent.atomic.AtomicInteger r5 = r0.d
                    r5.decrementAndGet()
                    int r5 = r0.getAndIncrement()
                    if (r5 != 0) goto L_0x0081
                L_0x007e:
                    r0.b()
                L_0x0081:
                    return
                L_0x0082:
                    r5 = move-exception
                    monitor-exit(r1)     // Catch:{ all -> 0x0082 }
                    goto L_0x0086
                L_0x0085:
                    throw r5
                L_0x0086:
                    goto L_0x0085
                */
                throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.az.a.C0160a.onSuccess(java.lang.Object):void");
            }

            public final void onError(Throwable th) {
                a aVar = a.this;
                aVar.c.delete(this);
                if (aVar.e.addThrowable(th)) {
                    if (!aVar.f7169b) {
                        aVar.h.dispose();
                        aVar.c.dispose();
                    }
                    aVar.d.decrementAndGet();
                    aVar.a();
                    return;
                }
                io.reactivex.g.a.onError(th);
            }

            public final void onComplete() {
                a aVar = a.this;
                aVar.c.delete(this);
                if (aVar.get() == 0) {
                    boolean z = true;
                    if (aVar.compareAndSet(0, 1)) {
                        if (aVar.d.decrementAndGet() != 0) {
                            z = false;
                        }
                        io.reactivex.internal.d.c cVar = aVar.g.get();
                        if (!z || (cVar != null && !cVar.isEmpty())) {
                            if (aVar.decrementAndGet() != 0) {
                                aVar.b();
                                return;
                            }
                        }
                        Throwable terminate = aVar.e.terminate();
                        if (terminate != null) {
                            aVar.f7168a.onError(terminate);
                            return;
                        } else {
                            aVar.f7168a.onComplete();
                            return;
                        }
                    }
                }
                aVar.d.decrementAndGet();
                aVar.a();
            }

            public final boolean isDisposed() {
                return DisposableHelper.isDisposed((c) get());
            }

            public final void dispose() {
                DisposableHelper.dispose(this);
            }
        }

        a(ag<? super R> agVar, h<? super T, ? extends w<? extends R>> hVar, boolean z) {
            this.f7168a = agVar;
            this.f = hVar;
            this.f7169b = z;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.h, cVar)) {
                this.h = cVar;
                this.f7168a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            try {
                w wVar = (w) io.reactivex.internal.a.b.requireNonNull(this.f.apply(t), "The mapper returned a null MaybeSource");
                this.d.getAndIncrement();
                C0160a aVar = new C0160a();
                if (!this.i && this.c.add(aVar)) {
                    wVar.subscribe(aVar);
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.h.dispose();
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            this.d.decrementAndGet();
            if (this.e.addThrowable(th)) {
                if (!this.f7169b) {
                    this.c.dispose();
                }
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.d.decrementAndGet();
            a();
        }

        public final void dispose() {
            this.i = true;
            this.h.dispose();
            this.c.dispose();
        }

        public final boolean isDisposed() {
            return this.i;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        private void c() {
            io.reactivex.internal.d.c cVar = this.g.get();
            if (cVar != null) {
                cVar.clear();
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            ag<? super R> agVar = this.f7168a;
            AtomicInteger atomicInteger = this.d;
            AtomicReference<io.reactivex.internal.d.c<R>> atomicReference = this.g;
            int i2 = 1;
            while (!this.i) {
                if (this.f7169b || ((Throwable) this.e.get()) == null) {
                    boolean z = false;
                    boolean z2 = atomicInteger.get() == 0;
                    io.reactivex.internal.d.c cVar = atomicReference.get();
                    Object poll = cVar != null ? cVar.poll() : null;
                    if (poll == null) {
                        z = true;
                    }
                    if (z2 && z) {
                        Throwable terminate = this.e.terminate();
                        if (terminate != null) {
                            agVar.onError(terminate);
                            return;
                        } else {
                            agVar.onComplete();
                            return;
                        }
                    } else if (!z) {
                        agVar.onNext(poll);
                    } else {
                        i2 = addAndGet(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    }
                } else {
                    Throwable terminate2 = this.e.terminate();
                    c();
                    agVar.onError(terminate2);
                    return;
                }
            }
            c();
        }
    }

    public az(ae<T> aeVar, h<? super T, ? extends w<? extends R>> hVar, boolean z) {
        super(aeVar);
        this.f7167b = hVar;
        this.c = z;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        this.f7091a.subscribe(new a(agVar, this.f7167b, this.c));
    }
}
