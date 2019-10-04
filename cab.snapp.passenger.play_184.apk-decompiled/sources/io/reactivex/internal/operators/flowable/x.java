package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.f.k;
import io.reactivex.internal.f.l;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.b.b;
import org.b.c;
import org.b.d;

public final class x<T, R> extends a<T, R> {
    final h<? super T, ? extends b<? extends R>> c;
    final int d;
    final int e;
    final ErrorMode f;

    static final class a<T, R> extends AtomicInteger implements l<R>, o<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f8405a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends b<? extends R>> f8406b;
        final int c;
        final int d;
        final ErrorMode e;
        final io.reactivex.internal.util.b f = new io.reactivex.internal.util.b();
        final AtomicLong g = new AtomicLong();
        final io.reactivex.internal.d.c<k<R>> h;
        d i;
        volatile boolean j;
        volatile boolean k;
        volatile k<R> l;

        a(c<? super R> cVar, h<? super T, ? extends b<? extends R>> hVar, int i2, int i3, ErrorMode errorMode) {
            this.f8405a = cVar;
            this.f8406b = hVar;
            this.c = i2;
            this.d = i3;
            this.e = errorMode;
            this.h = new io.reactivex.internal.d.c<>(Math.min(i3, i2));
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.i, dVar)) {
                this.i = dVar;
                this.f8405a.onSubscribe(this);
                int i2 = this.c;
                dVar.request(i2 == Integer.MAX_VALUE ? Long.MAX_VALUE : (long) i2);
            }
        }

        public final void onNext(T t) {
            try {
                b bVar = (b) io.reactivex.internal.a.b.requireNonNull(this.f8406b.apply(t), "The mapper returned a null Publisher");
                k kVar = new k(this, this.d);
                if (!this.j) {
                    this.h.offer(kVar);
                    bVar.subscribe(kVar);
                    if (this.j) {
                        kVar.cancel();
                        a();
                    }
                }
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                this.i.cancel();
                onError(th);
            }
        }

        public final void onError(Throwable th) {
            if (this.f.addThrowable(th)) {
                this.k = true;
                drain();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            this.k = true;
            drain();
        }

        public final void cancel() {
            if (!this.j) {
                this.j = true;
                this.i.cancel();
                a();
            }
        }

        private void a() {
            if (getAndIncrement() == 0) {
                do {
                    b();
                } while (decrementAndGet() != 0);
            }
        }

        private void b() {
            k<R> kVar = this.l;
            this.l = null;
            if (kVar != null) {
                kVar.cancel();
            }
            while (true) {
                k poll = this.h.poll();
                if (poll != null) {
                    poll.cancel();
                } else {
                    return;
                }
            }
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.g, j2);
                drain();
            }
        }

        public final void innerNext(k<R> kVar, R r) {
            if (kVar.queue().offer(r)) {
                drain();
                return;
            }
            kVar.cancel();
            innerError(kVar, new io.reactivex.c.c());
        }

        public final void innerError(k<R> kVar, Throwable th) {
            if (this.f.addThrowable(th)) {
                kVar.setDone();
                if (this.e != ErrorMode.END) {
                    this.i.cancel();
                }
                drain();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void innerComplete(k<R> kVar) {
            kVar.setDone();
            drain();
        }

        /* JADX WARNING: Removed duplicated region for block: B:81:0x0130  */
        /* JADX WARNING: Removed duplicated region for block: B:84:0x0138  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void drain() {
            /*
                r19 = this;
                r1 = r19
                int r0 = r19.getAndIncrement()
                if (r0 == 0) goto L_0x0009
                return
            L_0x0009:
                io.reactivex.internal.f.k<R> r0 = r1.l
                org.b.c<? super R> r2 = r1.f8405a
                io.reactivex.internal.util.ErrorMode r3 = r1.e
                r5 = 1
            L_0x0010:
                java.util.concurrent.atomic.AtomicLong r6 = r1.g
                long r6 = r6.get()
                if (r0 != 0) goto L_0x0056
                io.reactivex.internal.util.ErrorMode r0 = io.reactivex.internal.util.ErrorMode.END
                if (r3 == r0) goto L_0x0033
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Object r0 = r0.get()
                java.lang.Throwable r0 = (java.lang.Throwable) r0
                if (r0 == 0) goto L_0x0033
                r19.b()
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Throwable r0 = r0.terminate()
                r2.onError(r0)
                return
            L_0x0033:
                boolean r0 = r1.k
                io.reactivex.internal.d.c<io.reactivex.internal.f.k<R>> r8 = r1.h
                java.lang.Object r8 = r8.poll()
                io.reactivex.internal.f.k r8 = (io.reactivex.internal.f.k) r8
                if (r0 == 0) goto L_0x0051
                if (r8 != 0) goto L_0x0051
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Throwable r0 = r0.terminate()
                if (r0 == 0) goto L_0x004d
                r2.onError(r0)
                return
            L_0x004d:
                r2.onComplete()
                return
            L_0x0051:
                if (r8 == 0) goto L_0x0057
                r1.l = r8
                goto L_0x0057
            L_0x0056:
                r8 = r0
            L_0x0057:
                r9 = 0
                r11 = 0
                if (r8 == 0) goto L_0x0113
                io.reactivex.internal.b.j r12 = r8.queue()
                if (r12 == 0) goto L_0x0113
                r16 = r5
                r13 = r9
            L_0x0065:
                r4 = 1
                int r17 = (r13 > r6 ? 1 : (r13 == r6 ? 0 : -1))
                if (r17 == 0) goto L_0x00cc
                boolean r0 = r1.j
                if (r0 == 0) goto L_0x0073
                r19.b()
                return
            L_0x0073:
                io.reactivex.internal.util.ErrorMode r0 = io.reactivex.internal.util.ErrorMode.IMMEDIATE
                if (r3 != r0) goto L_0x0093
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Object r0 = r0.get()
                java.lang.Throwable r0 = (java.lang.Throwable) r0
                if (r0 == 0) goto L_0x0093
                r1.l = r11
                r8.cancel()
                r19.b()
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Throwable r0 = r0.terminate()
                r2.onError(r0)
                return
            L_0x0093:
                boolean r0 = r8.isDone()
                java.lang.Object r15 = r12.poll()     // Catch:{ all -> 0x00bb }
                if (r15 != 0) goto L_0x00a0
                r18 = 1
                goto L_0x00a2
            L_0x00a0:
                r18 = 0
            L_0x00a2:
                if (r0 == 0) goto L_0x00b1
                if (r18 == 0) goto L_0x00b1
                r1.l = r11
                org.b.d r0 = r1.i
                r0.request(r4)
                r8 = r11
                r17 = 1
                goto L_0x00ce
            L_0x00b1:
                if (r18 != 0) goto L_0x00cc
                r2.onNext(r15)
                long r13 = r13 + r4
                r8.requestOne()
                goto L_0x0065
            L_0x00bb:
                r0 = move-exception
                r3 = r0
                io.reactivex.c.b.throwIfFatal(r3)
                r1.l = r11
                r8.cancel()
                r19.b()
                r2.onError(r3)
                return
            L_0x00cc:
                r17 = 0
            L_0x00ce:
                int r0 = (r13 > r6 ? 1 : (r13 == r6 ? 0 : -1))
                if (r0 != 0) goto L_0x0111
                boolean r0 = r1.j
                if (r0 == 0) goto L_0x00da
                r19.b()
                return
            L_0x00da:
                io.reactivex.internal.util.ErrorMode r0 = io.reactivex.internal.util.ErrorMode.IMMEDIATE
                if (r3 != r0) goto L_0x00fa
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Object r0 = r0.get()
                java.lang.Throwable r0 = (java.lang.Throwable) r0
                if (r0 == 0) goto L_0x00fa
                r1.l = r11
                r8.cancel()
                r19.b()
                io.reactivex.internal.util.b r0 = r1.f
                java.lang.Throwable r0 = r0.terminate()
                r2.onError(r0)
                return
            L_0x00fa:
                boolean r0 = r8.isDone()
                boolean r12 = r12.isEmpty()
                if (r0 == 0) goto L_0x0111
                if (r12 == 0) goto L_0x0111
                r1.l = r11
                org.b.d r0 = r1.i
                r0.request(r4)
                r0 = r11
                r17 = 1
                goto L_0x0119
            L_0x0111:
                r0 = r8
                goto L_0x0119
            L_0x0113:
                r16 = r5
                r0 = r8
                r13 = r9
                r17 = 0
            L_0x0119:
                int r4 = (r13 > r9 ? 1 : (r13 == r9 ? 0 : -1))
                if (r4 == 0) goto L_0x012c
                r4 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r8 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
                if (r8 == 0) goto L_0x012c
                java.util.concurrent.atomic.AtomicLong r4 = r1.g
                long r5 = -r13
                r4.addAndGet(r5)
            L_0x012c:
                r4 = r16
                if (r17 != 0) goto L_0x0138
                int r4 = -r4
                int r5 = r1.addAndGet(r4)
                if (r5 != 0) goto L_0x0010
                return
            L_0x0138:
                r5 = r4
                goto L_0x0010
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.x.a.drain():void");
        }
    }

    public x(j<T> jVar, h<? super T, ? extends b<? extends R>> hVar, int i, int i2, ErrorMode errorMode) {
        super(jVar);
        this.c = hVar;
        this.d = i;
        this.e = i2;
        this.f = errorMode;
    }

    public final void subscribeActual(c<? super R> cVar) {
        j jVar = this.f7923b;
        a aVar = new a(cVar, this.c, this.d, this.e, this.f);
        jVar.subscribe(aVar);
    }
}
