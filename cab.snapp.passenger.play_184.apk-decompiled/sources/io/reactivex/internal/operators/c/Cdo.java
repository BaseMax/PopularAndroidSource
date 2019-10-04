package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.e.h;
import io.reactivex.internal.b.e;
import io.reactivex.internal.b.j;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.c.do  reason: invalid class name */
public final class Cdo<T, R> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends ae<? extends R>> f7436b;
    final int c;
    final boolean d;

    /* renamed from: io.reactivex.internal.operators.c.do$a */
    static final class a<T, R> extends AtomicReference<c> implements ag<R> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, R> f7437a;

        /* renamed from: b  reason: collision with root package name */
        final long f7438b;
        final int c;
        volatile j<R> d;
        volatile boolean e;

        a(b<T, R> bVar, long j, int i) {
            this.f7437a = bVar;
            this.f7438b = j;
            this.c = i;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                if (cVar instanceof e) {
                    e eVar = (e) cVar;
                    int requestFusion = eVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.d = eVar;
                        this.e = true;
                        this.f7437a.a();
                        return;
                    } else if (requestFusion == 2) {
                        this.d = eVar;
                        return;
                    }
                }
                this.d = new io.reactivex.internal.d.c(this.c);
            }
        }

        public final void onNext(R r) {
            if (this.f7438b == this.f7437a.k) {
                if (r != null) {
                    this.d.offer(r);
                }
                this.f7437a.a();
            }
        }

        public final void onError(Throwable th) {
            b<T, R> bVar = this.f7437a;
            if (this.f7438b != bVar.k || !bVar.e.addThrowable(th)) {
                io.reactivex.g.a.onError(th);
                return;
            }
            if (!bVar.d) {
                bVar.h.dispose();
            }
            this.e = true;
            bVar.a();
        }

        public final void onComplete() {
            if (this.f7438b == this.f7437a.k) {
                this.e = true;
                this.f7437a.a();
            }
        }

        public final void cancel() {
            DisposableHelper.dispose(this);
        }
    }

    /* renamed from: io.reactivex.internal.operators.c.do$b */
    static final class b<T, R> extends AtomicInteger implements ag<T>, c {
        static final a<Object, Object> j;

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7439a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends ae<? extends R>> f7440b;
        final int c;
        final boolean d;
        final io.reactivex.internal.util.b e;
        volatile boolean f;
        volatile boolean g;
        c h;
        final AtomicReference<a<T, R>> i = new AtomicReference<>();
        volatile long k;

        static {
            a<Object, Object> aVar = new a<>(null, -1, 1);
            j = aVar;
            aVar.cancel();
        }

        b(ag<? super R> agVar, h<? super T, ? extends ae<? extends R>> hVar, int i2, boolean z) {
            this.f7439a = agVar;
            this.f7440b = hVar;
            this.c = i2;
            this.d = z;
            this.e = new io.reactivex.internal.util.b();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.h, cVar)) {
                this.h = cVar;
                this.f7439a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            long j2 = this.k + 1;
            this.k = j2;
            a aVar = this.i.get();
            if (aVar != null) {
                aVar.cancel();
            }
            try {
                ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f7440b.apply(t), "The ObservableSource returned is null");
                a aVar2 = new a(this, j2, this.c);
                while (true) {
                    a<Object, Object> aVar3 = this.i.get();
                    if (aVar3 != j) {
                        if (this.i.compareAndSet(aVar3, aVar2)) {
                            aeVar.subscribe(aVar2);
                            break;
                        }
                    } else {
                        break;
                    }
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.h.dispose();
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            if (this.f || !this.e.addThrowable(th)) {
                io.reactivex.g.a.onError(th);
                return;
            }
            if (!this.d) {
                b();
            }
            this.f = true;
            a();
        }

        public final void onComplete() {
            if (!this.f) {
                this.f = true;
                a();
            }
        }

        public final void dispose() {
            if (!this.g) {
                this.g = true;
                this.h.dispose();
                b();
            }
        }

        public final boolean isDisposed() {
            return this.g;
        }

        private void b() {
            a<Object, Object> aVar = this.i.get();
            a<Object, Object> aVar2 = j;
            if (aVar != aVar2) {
                a<Object, Object> andSet = this.i.getAndSet(aVar2);
                if (andSet != j && andSet != null) {
                    andSet.cancel();
                }
            }
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Removed duplicated region for block: B:88:0x000f A[SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a() {
            /*
                r13 = this;
                int r0 = r13.getAndIncrement()
                if (r0 == 0) goto L_0x0007
                return
            L_0x0007:
                io.reactivex.ag<? super R> r0 = r13.f7439a
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.do$a<T, R>> r1 = r13.i
                boolean r2 = r13.d
                r3 = 1
                r4 = 1
            L_0x000f:
                boolean r5 = r13.g
                if (r5 == 0) goto L_0x0014
                return
            L_0x0014:
                boolean r5 = r13.f
                r6 = 0
                if (r5 == 0) goto L_0x0052
                java.lang.Object r5 = r1.get()
                if (r5 != 0) goto L_0x0021
                r5 = 1
                goto L_0x0022
            L_0x0021:
                r5 = 0
            L_0x0022:
                if (r2 == 0) goto L_0x0038
                if (r5 == 0) goto L_0x0052
                io.reactivex.internal.util.b r1 = r13.e
                java.lang.Object r1 = r1.get()
                java.lang.Throwable r1 = (java.lang.Throwable) r1
                if (r1 == 0) goto L_0x0034
                r0.onError(r1)
                return
            L_0x0034:
                r0.onComplete()
                return
            L_0x0038:
                io.reactivex.internal.util.b r7 = r13.e
                java.lang.Object r7 = r7.get()
                java.lang.Throwable r7 = (java.lang.Throwable) r7
                if (r7 == 0) goto L_0x004c
                io.reactivex.internal.util.b r1 = r13.e
                java.lang.Throwable r1 = r1.terminate()
                r0.onError(r1)
                return
            L_0x004c:
                if (r5 == 0) goto L_0x0052
                r0.onComplete()
                return
            L_0x0052:
                java.lang.Object r5 = r1.get()
                io.reactivex.internal.operators.c.do$a r5 = (io.reactivex.internal.operators.c.Cdo.a) r5
                if (r5 == 0) goto L_0x00e7
                io.reactivex.internal.b.j<R> r7 = r5.d
                if (r7 == 0) goto L_0x00e7
                boolean r8 = r5.e
                r9 = 0
                if (r8 == 0) goto L_0x0089
                boolean r8 = r7.isEmpty()
                if (r2 == 0) goto L_0x006f
                if (r8 == 0) goto L_0x0089
                r1.compareAndSet(r5, r9)
                goto L_0x000f
            L_0x006f:
                io.reactivex.internal.util.b r10 = r13.e
                java.lang.Object r10 = r10.get()
                java.lang.Throwable r10 = (java.lang.Throwable) r10
                if (r10 == 0) goto L_0x0083
                io.reactivex.internal.util.b r1 = r13.e
                java.lang.Throwable r1 = r1.terminate()
                r0.onError(r1)
                return
            L_0x0083:
                if (r8 == 0) goto L_0x0089
                r1.compareAndSet(r5, r9)
                goto L_0x000f
            L_0x0089:
                r8 = 0
            L_0x008a:
                boolean r10 = r13.g
                if (r10 == 0) goto L_0x008f
                return
            L_0x008f:
                java.lang.Object r10 = r1.get()
                if (r5 == r10) goto L_0x0097
            L_0x0095:
                r8 = 1
                goto L_0x00e5
            L_0x0097:
                if (r2 != 0) goto L_0x00ad
                io.reactivex.internal.util.b r10 = r13.e
                java.lang.Object r10 = r10.get()
                java.lang.Throwable r10 = (java.lang.Throwable) r10
                if (r10 == 0) goto L_0x00ad
                io.reactivex.internal.util.b r1 = r13.e
                java.lang.Throwable r1 = r1.terminate()
                r0.onError(r1)
                return
            L_0x00ad:
                boolean r10 = r5.e
                java.lang.Object r11 = r7.poll()     // Catch:{ all -> 0x00b4 }
                goto L_0x00d2
            L_0x00b4:
                r8 = move-exception
                io.reactivex.c.b.throwIfFatal(r8)
                io.reactivex.internal.util.b r11 = r13.e
                r11.addThrowable(r8)
                r1.compareAndSet(r5, r9)
                if (r2 != 0) goto L_0x00cd
                r13.b()
                io.reactivex.b.c r8 = r13.h
                r8.dispose()
                r13.f = r3
                goto L_0x00d0
            L_0x00cd:
                r5.cancel()
            L_0x00d0:
                r11 = r9
                r8 = 1
            L_0x00d2:
                if (r11 != 0) goto L_0x00d6
                r12 = 1
                goto L_0x00d7
            L_0x00d6:
                r12 = 0
            L_0x00d7:
                if (r10 == 0) goto L_0x00df
                if (r12 == 0) goto L_0x00df
                r1.compareAndSet(r5, r9)
                goto L_0x0095
            L_0x00df:
                if (r12 != 0) goto L_0x00e5
                r0.onNext(r11)
                goto L_0x008a
            L_0x00e5:
                if (r8 != 0) goto L_0x000f
            L_0x00e7:
                int r4 = -r4
                int r4 = r13.addAndGet(r4)
                if (r4 != 0) goto L_0x000f
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.Cdo.b.a():void");
        }
    }

    public Cdo(ae<T> aeVar, h<? super T, ? extends ae<? extends R>> hVar, int i, boolean z) {
        super(aeVar);
        this.f7436b = hVar;
        this.c = i;
        this.d = z;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        if (!cz.tryScalarXMapSubscribe(this.f7091a, agVar, this.f7436b)) {
            this.f7091a.subscribe(new b(agVar, this.f7436b, this.c, this.d));
        }
    }
}
