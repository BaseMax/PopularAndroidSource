package io.reactivex.internal.operators.flowable;

import io.reactivex.e.h;
import io.reactivex.internal.b.g;
import io.reactivex.internal.b.j;
import io.reactivex.internal.d.b;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.b.c;
import org.b.d;

public final class bf<T, R> extends a<T, R> {
    final h<? super T, ? extends Iterable<? extends R>> c;
    final int d;

    static final class a<T, R> extends io.reactivex.internal.subscriptions.a<R> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<? super R> f8019a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends Iterable<? extends R>> f8020b;
        final int c;
        final int d;
        final AtomicLong e = new AtomicLong();
        d f;
        j<T> g;
        volatile boolean h;
        volatile boolean i;
        final AtomicReference<Throwable> j = new AtomicReference<>();
        Iterator<? extends R> k;
        int l;
        int m;

        a(c<? super R> cVar, h<? super T, ? extends Iterable<? extends R>> hVar, int i2) {
            this.f8019a = cVar;
            this.f8020b = hVar;
            this.c = i2;
            this.d = i2 - (i2 >> 2);
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.f, dVar)) {
                this.f = dVar;
                if (dVar instanceof g) {
                    g gVar = (g) dVar;
                    int requestFusion = gVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.m = requestFusion;
                        this.g = gVar;
                        this.h = true;
                        this.f8019a.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.m = requestFusion;
                        this.g = gVar;
                        this.f8019a.onSubscribe(this);
                        dVar.request((long) this.c);
                        return;
                    }
                }
                this.g = new b(this.c);
                this.f8019a.onSubscribe(this);
                dVar.request((long) this.c);
            }
        }

        public final void onNext(T t) {
            if (!this.h) {
                if (this.m != 0 || this.g.offer(t)) {
                    a();
                } else {
                    onError(new io.reactivex.c.c("Queue is full?!"));
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.h || !io.reactivex.internal.util.h.addThrowable(this.j, th)) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.h = true;
            a();
        }

        public final void onComplete() {
            if (!this.h) {
                this.h = true;
                a();
            }
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.e, j2);
                a();
            }
        }

        public final void cancel() {
            if (!this.i) {
                this.i = true;
                this.f.cancel();
                if (getAndIncrement() == 0) {
                    this.g.clear();
                }
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:69:0x0121, code lost:
            if (r6 != null) goto L_0x0123;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void a() {
            /*
                r18 = this;
                r1 = r18
                int r0 = r18.getAndIncrement()
                if (r0 == 0) goto L_0x0009
                return
            L_0x0009:
                org.b.c<? super R> r2 = r1.f8019a
                io.reactivex.internal.b.j<T> r3 = r1.g
                int r0 = r1.m
                r4 = 0
                r5 = 1
                if (r0 == r5) goto L_0x0015
                r0 = 1
                goto L_0x0016
            L_0x0015:
                r0 = 0
            L_0x0016:
                java.util.Iterator<? extends R> r6 = r1.k
                r7 = 0
                r8 = 1
            L_0x001a:
                if (r6 != 0) goto L_0x0080
                boolean r9 = r1.h
                java.lang.Object r10 = r3.poll()     // Catch:{ all -> 0x0062 }
                if (r10 != 0) goto L_0x0026
                r11 = 1
                goto L_0x0027
            L_0x0026:
                r11 = 0
            L_0x0027:
                boolean r9 = r1.a(r9, r11, r2, r3)
                if (r9 == 0) goto L_0x002e
                return
            L_0x002e:
                if (r10 == 0) goto L_0x0080
                io.reactivex.e.h<? super T, ? extends java.lang.Iterable<? extends R>> r6 = r1.f8020b     // Catch:{ all -> 0x004a }
                java.lang.Object r6 = r6.apply(r10)     // Catch:{ all -> 0x004a }
                java.lang.Iterable r6 = (java.lang.Iterable) r6     // Catch:{ all -> 0x004a }
                java.util.Iterator r6 = r6.iterator()     // Catch:{ all -> 0x004a }
                boolean r9 = r6.hasNext()     // Catch:{ all -> 0x004a }
                if (r9 != 0) goto L_0x0047
                r1.a(r0)
                r6 = r7
                goto L_0x001a
            L_0x0047:
                r1.k = r6
                goto L_0x0080
            L_0x004a:
                r0 = move-exception
                io.reactivex.c.b.throwIfFatal(r0)
                org.b.d r3 = r1.f
                r3.cancel()
                java.util.concurrent.atomic.AtomicReference<java.lang.Throwable> r3 = r1.j
                io.reactivex.internal.util.h.addThrowable(r3, r0)
                java.util.concurrent.atomic.AtomicReference<java.lang.Throwable> r0 = r1.j
                java.lang.Throwable r0 = io.reactivex.internal.util.h.terminate(r0)
                r2.onError(r0)
                return
            L_0x0062:
                r0 = move-exception
                r4 = r0
                io.reactivex.c.b.throwIfFatal(r4)
                org.b.d r0 = r1.f
                r0.cancel()
                java.util.concurrent.atomic.AtomicReference<java.lang.Throwable> r0 = r1.j
                io.reactivex.internal.util.h.addThrowable(r0, r4)
                java.util.concurrent.atomic.AtomicReference<java.lang.Throwable> r0 = r1.j
                java.lang.Throwable r0 = io.reactivex.internal.util.h.terminate(r0)
                r1.k = r7
                r3.clear()
                r2.onError(r0)
                return
            L_0x0080:
                if (r6 == 0) goto L_0x0123
                java.util.concurrent.atomic.AtomicLong r9 = r1.e
                long r9 = r9.get()
                r11 = 0
                r13 = r11
            L_0x008b:
                int r15 = (r13 > r9 ? 1 : (r13 == r9 ? 0 : -1))
                if (r15 == 0) goto L_0x00f6
                boolean r15 = r1.h
                boolean r15 = r1.a(r15, r4, r2, r3)
                if (r15 == 0) goto L_0x0098
                return
            L_0x0098:
                java.lang.Object r15 = r6.next()     // Catch:{ all -> 0x00dc }
                java.lang.String r5 = "The iterator returned a null value"
                java.lang.Object r5 = io.reactivex.internal.a.b.requireNonNull(r15, (java.lang.String) r5)     // Catch:{ all -> 0x00dc }
                r2.onNext(r5)
                boolean r5 = r1.h
                boolean r5 = r1.a(r5, r4, r2, r3)
                if (r5 == 0) goto L_0x00ae
                return
            L_0x00ae:
                r16 = 1
                long r13 = r13 + r16
                boolean r5 = r6.hasNext()     // Catch:{ all -> 0x00c1 }
                if (r5 != 0) goto L_0x00bf
                r1.a(r0)
                r1.k = r7
                r6 = r7
                goto L_0x00f6
            L_0x00bf:
                r5 = 1
                goto L_0x008b
            L_0x00c1:
                r0 = move-exception
                r3 = r0
                io.reactivex.c.b.throwIfFatal(r3)
                r1.k = r7
                org.b.d r0 = r1.f
                r0.cancel()
                java.util.concurrent.atomic.AtomicReference<java.lang.Throwable> r0 = r1.j
                io.reactivex.internal.util.h.addThrowable(r0, r3)
                java.util.concurrent.atomic.AtomicReference<java.lang.Throwable> r0 = r1.j
                java.lang.Throwable r0 = io.reactivex.internal.util.h.terminate(r0)
                r2.onError(r0)
                return
            L_0x00dc:
                r0 = move-exception
                io.reactivex.c.b.throwIfFatal(r0)
                r1.k = r7
                org.b.d r3 = r1.f
                r3.cancel()
                java.util.concurrent.atomic.AtomicReference<java.lang.Throwable> r3 = r1.j
                io.reactivex.internal.util.h.addThrowable(r3, r0)
                java.util.concurrent.atomic.AtomicReference<java.lang.Throwable> r0 = r1.j
                java.lang.Throwable r0 = io.reactivex.internal.util.h.terminate(r0)
                r2.onError(r0)
                return
            L_0x00f6:
                int r5 = (r13 > r9 ? 1 : (r13 == r9 ? 0 : -1))
                if (r5 != 0) goto L_0x010e
                boolean r5 = r1.h
                boolean r15 = r3.isEmpty()
                if (r15 == 0) goto L_0x0106
                if (r6 != 0) goto L_0x0106
                r15 = 1
                goto L_0x0107
            L_0x0106:
                r15 = 0
            L_0x0107:
                boolean r5 = r1.a(r5, r15, r2, r3)
                if (r5 == 0) goto L_0x010e
                return
            L_0x010e:
                int r5 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
                if (r5 == 0) goto L_0x0121
                r11 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r5 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
                if (r5 == 0) goto L_0x0121
                java.util.concurrent.atomic.AtomicLong r5 = r1.e
                long r9 = -r13
                r5.addAndGet(r9)
            L_0x0121:
                if (r6 == 0) goto L_0x012b
            L_0x0123:
                int r5 = -r8
                int r8 = r1.addAndGet(r5)
                if (r8 != 0) goto L_0x012b
                return
            L_0x012b:
                r5 = 1
                goto L_0x001a
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.bf.a.a():void");
        }

        private void a(boolean z) {
            if (z) {
                int i2 = this.l + 1;
                if (i2 == this.d) {
                    this.l = 0;
                    this.f.request((long) i2);
                    return;
                }
                this.l = i2;
            }
        }

        private boolean a(boolean z, boolean z2, c<?> cVar, j<?> jVar) {
            if (this.i) {
                this.k = null;
                jVar.clear();
                return true;
            }
            if (z) {
                if (this.j.get() != null) {
                    Throwable terminate = io.reactivex.internal.util.h.terminate(this.j);
                    this.k = null;
                    jVar.clear();
                    cVar.onError(terminate);
                    return true;
                } else if (z2) {
                    cVar.onComplete();
                    return true;
                }
            }
            return false;
        }

        public final void clear() {
            this.k = null;
            this.g.clear();
        }

        public final boolean isEmpty() {
            return this.k == null && this.g.isEmpty();
        }

        public final R poll() throws Exception {
            Iterator<? extends R> it = this.k;
            while (true) {
                if (it != null) {
                    break;
                }
                T poll = this.g.poll();
                if (poll != null) {
                    it = ((Iterable) this.f8020b.apply(poll)).iterator();
                    if (it.hasNext()) {
                        this.k = it;
                        break;
                    }
                    it = null;
                } else {
                    return null;
                }
            }
            R requireNonNull = io.reactivex.internal.a.b.requireNonNull(it.next(), "The iterator returned a null value");
            if (!it.hasNext()) {
                this.k = null;
            }
            return requireNonNull;
        }

        public final int requestFusion(int i2) {
            return ((i2 & 1) == 0 || this.m != 1) ? 0 : 1;
        }
    }

    public bf(io.reactivex.j<T> jVar, h<? super T, ? extends Iterable<? extends R>> hVar, int i) {
        super(jVar);
        this.c = hVar;
        this.d = i;
    }

    public final void subscribeActual(c<? super R> cVar) {
        if (this.f7923b instanceof Callable) {
            try {
                Object call = ((Callable) this.f7923b).call();
                if (call == null) {
                    EmptySubscription.complete(cVar);
                    return;
                }
                try {
                    bj.subscribe(cVar, ((Iterable) this.c.apply(call)).iterator());
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    EmptySubscription.error(th, cVar);
                }
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                EmptySubscription.error(th2, cVar);
            }
        } else {
            this.f7923b.subscribe(new a(cVar, this.c, this.d));
        }
    }
}
