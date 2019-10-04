package io.reactivex.internal.operators.flowable;

import io.reactivex.c.c;
import io.reactivex.e.h;
import io.reactivex.internal.b.g;
import io.reactivex.internal.b.j;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.d;

public final class ea<T, R> extends a<T, R> {
    final h<? super T, ? extends org.b.b<? extends R>> c;
    final int d;
    final boolean e;

    static final class a<T, R> extends AtomicReference<d> implements o<R> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, R> f8233a;

        /* renamed from: b  reason: collision with root package name */
        final long f8234b;
        final int c;
        volatile j<R> d;
        volatile boolean e;
        int f;

        a(b<T, R> bVar, long j, int i) {
            this.f8233a = bVar;
            this.f8234b = j;
            this.c = i;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.setOnce(this, dVar)) {
                if (dVar instanceof g) {
                    g gVar = (g) dVar;
                    int requestFusion = gVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f = requestFusion;
                        this.d = gVar;
                        this.e = true;
                        this.f8233a.a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f = requestFusion;
                        this.d = gVar;
                        dVar.request((long) this.c);
                        return;
                    }
                }
                this.d = new io.reactivex.internal.d.b(this.c);
                dVar.request((long) this.c);
            }
        }

        public final void onNext(R r) {
            b<T, R> bVar = this.f8233a;
            if (this.f8234b == bVar.l) {
                if (this.f != 0 || this.d.offer(r)) {
                    bVar.a();
                } else {
                    onError(new c("Queue full?!"));
                }
            }
        }

        public final void onError(Throwable th) {
            b<T, R> bVar = this.f8233a;
            if (this.f8234b != bVar.l || !bVar.f.addThrowable(th)) {
                io.reactivex.g.a.onError(th);
                return;
            }
            if (!bVar.d) {
                bVar.h.cancel();
            }
            this.e = true;
            bVar.a();
        }

        public final void onComplete() {
            b<T, R> bVar = this.f8233a;
            if (this.f8234b == bVar.l) {
                this.e = true;
                bVar.a();
            }
        }

        public final void cancel() {
            SubscriptionHelper.cancel(this);
        }
    }

    static final class b<T, R> extends AtomicInteger implements o<T>, d {
        static final a<Object, Object> k;

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super R> f8235a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends org.b.b<? extends R>> f8236b;
        final int c;
        final boolean d;
        volatile boolean e;
        final io.reactivex.internal.util.b f;
        volatile boolean g;
        d h;
        final AtomicReference<a<T, R>> i = new AtomicReference<>();
        final AtomicLong j = new AtomicLong();
        volatile long l;

        static {
            a<Object, Object> aVar = new a<>(null, -1, 1);
            k = aVar;
            aVar.cancel();
        }

        b(org.b.c<? super R> cVar, h<? super T, ? extends org.b.b<? extends R>> hVar, int i2, boolean z) {
            this.f8235a = cVar;
            this.f8236b = hVar;
            this.c = i2;
            this.d = z;
            this.f = new io.reactivex.internal.util.b();
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.h, dVar)) {
                this.h = dVar;
                this.f8235a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!this.e) {
                long j2 = this.l + 1;
                this.l = j2;
                a aVar = this.i.get();
                if (aVar != null) {
                    aVar.cancel();
                }
                try {
                    org.b.b bVar = (org.b.b) io.reactivex.internal.a.b.requireNonNull(this.f8236b.apply(t), "The publisher returned is null");
                    a aVar2 = new a(this, j2, this.c);
                    while (true) {
                        a<Object, Object> aVar3 = this.i.get();
                        if (aVar3 != k) {
                            if (this.i.compareAndSet(aVar3, aVar2)) {
                                bVar.subscribe(aVar2);
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.h.cancel();
                    onError(th);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.e || !this.f.addThrowable(th)) {
                io.reactivex.g.a.onError(th);
                return;
            }
            if (!this.d) {
                b();
            }
            this.e = true;
            a();
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                a();
            }
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.j, j2);
                if (this.l == 0) {
                    this.h.request(Long.MAX_VALUE);
                    return;
                }
                a();
            }
        }

        public final void cancel() {
            if (!this.g) {
                this.g = true;
                this.h.cancel();
                b();
            }
        }

        private void b() {
            a<Object, Object> aVar = this.i.get();
            a<Object, Object> aVar2 = k;
            if (aVar != aVar2) {
                a<Object, Object> andSet = this.i.getAndSet(aVar2);
                if (andSet != k && andSet != null) {
                    andSet.cancel();
                }
            }
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Code restructure failed: missing block: B:63:0x00e5, code lost:
            r14 = true;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a() {
            /*
                r17 = this;
                r1 = r17
                int r0 = r17.getAndIncrement()
                if (r0 == 0) goto L_0x0009
                return
            L_0x0009:
                org.b.c<? super R> r2 = r1.f8235a
                r4 = 1
            L_0x000c:
                boolean r0 = r1.g
                r5 = 0
                if (r0 == 0) goto L_0x0017
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.ea$a<T, R>> r0 = r1.i
                r0.lazySet(r5)
                return
            L_0x0017:
                boolean r0 = r1.e
                if (r0 == 0) goto L_0x0062
                boolean r0 = r1.d
                if (r0 == 0) goto L_0x003f
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.ea$a<T, R>> r0 = r1.i
                java.lang.Object r0 = r0.get()
                if (r0 != 0) goto L_0x0062
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Object r0 = r0.get()
                java.lang.Throwable r0 = (java.lang.Throwable) r0
                if (r0 == 0) goto L_0x003b
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Throwable r0 = r0.terminate()
                r2.onError(r0)
                return
            L_0x003b:
                r2.onComplete()
                return
            L_0x003f:
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Object r0 = r0.get()
                java.lang.Throwable r0 = (java.lang.Throwable) r0
                if (r0 == 0) goto L_0x0056
                r17.b()
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Throwable r0 = r0.terminate()
                r2.onError(r0)
                return
            L_0x0056:
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.ea$a<T, R>> r0 = r1.i
                java.lang.Object r0 = r0.get()
                if (r0 != 0) goto L_0x0062
                r2.onComplete()
                return
            L_0x0062:
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.ea$a<T, R>> r0 = r1.i
                java.lang.Object r0 = r0.get()
                r6 = r0
                io.reactivex.internal.operators.flowable.ea$a r6 = (io.reactivex.internal.operators.flowable.ea.a) r6
                if (r6 == 0) goto L_0x0071
                io.reactivex.internal.b.j<R> r0 = r6.d
                r7 = r0
                goto L_0x0072
            L_0x0071:
                r7 = r5
            L_0x0072:
                if (r7 == 0) goto L_0x013c
                boolean r0 = r6.e
                if (r0 == 0) goto L_0x00ad
                boolean r0 = r1.d
                if (r0 != 0) goto L_0x00a0
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Object r0 = r0.get()
                java.lang.Throwable r0 = (java.lang.Throwable) r0
                if (r0 == 0) goto L_0x0093
                r17.b()
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Throwable r0 = r0.terminate()
                r2.onError(r0)
                return
            L_0x0093:
                boolean r0 = r7.isEmpty()
                if (r0 == 0) goto L_0x00ad
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.ea$a<T, R>> r0 = r1.i
                r0.compareAndSet(r6, r5)
                goto L_0x000c
            L_0x00a0:
                boolean r0 = r7.isEmpty()
                if (r0 == 0) goto L_0x00ad
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.ea$a<T, R>> r0 = r1.i
                r0.compareAndSet(r6, r5)
                goto L_0x000c
            L_0x00ad:
                java.util.concurrent.atomic.AtomicLong r0 = r1.j
                long r8 = r0.get()
                r10 = 0
                r12 = r10
            L_0x00b6:
                r14 = 0
                int r0 = (r12 > r8 ? 1 : (r12 == r8 ? 0 : -1))
                if (r0 == 0) goto L_0x011a
                boolean r0 = r1.g
                if (r0 == 0) goto L_0x00c0
                return
            L_0x00c0:
                boolean r0 = r6.e
                java.lang.Object r15 = r7.poll()     // Catch:{ all -> 0x00c7 }
                goto L_0x00d6
            L_0x00c7:
                r0 = move-exception
                r15 = r0
                io.reactivex.c.b.throwIfFatal(r15)
                r6.cancel()
                io.reactivex.internal.util.b r0 = r1.f
                r0.addThrowable(r15)
                r15 = r5
                r0 = 1
            L_0x00d6:
                if (r15 != 0) goto L_0x00db
                r16 = 1
                goto L_0x00dd
            L_0x00db:
                r16 = 0
            L_0x00dd:
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.ea$a<T, R>> r3 = r1.i
                java.lang.Object r3 = r3.get()
                if (r6 == r3) goto L_0x00e7
            L_0x00e5:
                r14 = 1
                goto L_0x011a
            L_0x00e7:
                if (r0 == 0) goto L_0x0111
                boolean r0 = r1.d
                if (r0 != 0) goto L_0x0109
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Object r0 = r0.get()
                java.lang.Throwable r0 = (java.lang.Throwable) r0
                if (r0 == 0) goto L_0x0101
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Throwable r0 = r0.terminate()
                r2.onError(r0)
                return
            L_0x0101:
                if (r16 == 0) goto L_0x0111
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.ea$a<T, R>> r0 = r1.i
                r0.compareAndSet(r6, r5)
                goto L_0x00e5
            L_0x0109:
                if (r16 == 0) goto L_0x0111
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.ea$a<T, R>> r0 = r1.i
                r0.compareAndSet(r6, r5)
                goto L_0x00e5
            L_0x0111:
                if (r16 != 0) goto L_0x011a
                r2.onNext(r15)
                r14 = 1
                long r12 = r12 + r14
                goto L_0x00b6
            L_0x011a:
                int r0 = (r12 > r10 ? 1 : (r12 == r10 ? 0 : -1))
                if (r0 == 0) goto L_0x013a
                boolean r0 = r1.g
                if (r0 != 0) goto L_0x013a
                r10 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r0 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
                if (r0 == 0) goto L_0x0131
                java.util.concurrent.atomic.AtomicLong r0 = r1.j
                long r7 = -r12
                r0.addAndGet(r7)
            L_0x0131:
                java.lang.Object r0 = r6.get()
                org.b.d r0 = (org.b.d) r0
                r0.request(r12)
            L_0x013a:
                if (r14 != 0) goto L_0x000c
            L_0x013c:
                int r0 = -r4
                int r4 = r1.addAndGet(r0)
                if (r4 != 0) goto L_0x000c
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.ea.b.a():void");
        }
    }

    public ea(io.reactivex.j<T> jVar, h<? super T, ? extends org.b.b<? extends R>> hVar, int i, boolean z) {
        super(jVar);
        this.c = hVar;
        this.d = i;
        this.e = z;
    }

    public final void subscribeActual(org.b.c<? super R> cVar) {
        if (!dk.tryScalarXMapSubscribe(this.f7923b, cVar, this.c)) {
            this.f7923b.subscribe(new b(cVar, this.c, this.d, this.e));
        }
    }
}
