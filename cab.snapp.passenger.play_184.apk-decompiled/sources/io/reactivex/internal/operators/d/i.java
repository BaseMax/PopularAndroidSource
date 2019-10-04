package io.reactivex.internal.operators.d;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class i<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.parallel.a<? extends T> f7674b;
    final int c;
    final boolean d;

    static final class a<T> extends AtomicReference<org.b.d> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<T> f7675a;

        /* renamed from: b  reason: collision with root package name */
        final int f7676b;
        final int c;
        long d;
        volatile io.reactivex.internal.b.i<T> e;

        a(c<T> cVar, int i) {
            this.f7675a = cVar;
            this.f7676b = i;
            this.c = i - (i >> 2);
        }

        public final void onSubscribe(org.b.d dVar) {
            SubscriptionHelper.setOnce(this, dVar, (long) this.f7676b);
        }

        public final void onNext(T t) {
            this.f7675a.onNext(this, t);
        }

        public final void onError(Throwable th) {
            this.f7675a.onError(th);
        }

        public final void onComplete() {
            this.f7675a.onComplete();
        }

        public final void requestOne() {
            long j = this.d + 1;
            if (j == ((long) this.c)) {
                this.d = 0;
                ((org.b.d) get()).request(j);
                return;
            }
            this.d = j;
        }

        public final void request(long j) {
            long j2 = this.d + j;
            if (j2 >= ((long) this.c)) {
                this.d = 0;
                ((org.b.d) get()).request(j2);
                return;
            }
            this.d = j2;
        }

        public final boolean cancel() {
            return SubscriptionHelper.cancel(this);
        }

        /* access modifiers changed from: package-private */
        public final io.reactivex.internal.b.i<T> a() {
            io.reactivex.internal.b.i<T> iVar = this.e;
            if (iVar != null) {
                return iVar;
            }
            io.reactivex.internal.d.b bVar = new io.reactivex.internal.d.b(this.f7676b);
            this.e = bVar;
            return bVar;
        }
    }

    static final class b<T> extends c<T> {
        b(org.b.c<? super T> cVar, int i, int i2) {
            super(cVar, i, i2);
        }

        public final void onNext(a<T> aVar, T t) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.d.get() != 0) {
                    this.f7677a.onNext(t);
                    if (this.d.get() != Long.MAX_VALUE) {
                        this.d.decrementAndGet();
                    }
                    aVar.request(1);
                } else if (!aVar.a().offer(t)) {
                    b();
                    io.reactivex.c.c cVar = new io.reactivex.c.c("Queue full?!");
                    if (this.c.compareAndSet(null, cVar)) {
                        this.f7677a.onError(cVar);
                        return;
                    } else {
                        io.reactivex.g.a.onError(cVar);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!aVar.a().offer(t)) {
                b();
                onError(new io.reactivex.c.c("Queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            d();
        }

        public final void onError(Throwable th) {
            if (this.c.compareAndSet(null, th)) {
                b();
                a();
                return;
            }
            if (th != this.c.get()) {
                io.reactivex.g.a.onError(th);
            }
        }

        public final void onComplete() {
            this.f.decrementAndGet();
            a();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                d();
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:28:0x0060, code lost:
            if (r13 == false) goto L_0x0068;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:29:0x0062, code lost:
            if (r11 == false) goto L_0x0068;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:30:0x0064, code lost:
            r3.onComplete();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:0x0067, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:32:0x0068, code lost:
            if (r11 == false) goto L_0x006c;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:33:0x006a, code lost:
            r10 = r14;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void d() {
            /*
                r17 = this;
                r0 = r17
                io.reactivex.internal.operators.d.i$a[] r1 = r0.f7678b
                int r2 = r1.length
                org.b.c r3 = r0.f7677a
                r5 = 1
            L_0x0008:
                java.util.concurrent.atomic.AtomicLong r6 = r0.d
                long r6 = r6.get()
                r8 = 0
                r10 = r8
            L_0x0011:
                int r13 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r13 == 0) goto L_0x006e
                boolean r13 = r0.e
                if (r13 == 0) goto L_0x001d
                r17.c()
                return
            L_0x001d:
                io.reactivex.internal.util.b r13 = r0.c
                java.lang.Object r13 = r13.get()
                java.lang.Throwable r13 = (java.lang.Throwable) r13
                if (r13 == 0) goto L_0x002e
                r17.c()
                r3.onError(r13)
                return
            L_0x002e:
                java.util.concurrent.atomic.AtomicInteger r13 = r0.f
                int r13 = r13.get()
                if (r13 != 0) goto L_0x0038
                r13 = 1
                goto L_0x0039
            L_0x0038:
                r13 = 0
            L_0x0039:
                r14 = r10
                r10 = 0
                r11 = 1
            L_0x003c:
                int r4 = r1.length
                if (r10 >= r4) goto L_0x0060
                r4 = r1[r10]
                io.reactivex.internal.b.i<T> r12 = r4.e
                if (r12 == 0) goto L_0x005d
                java.lang.Object r12 = r12.poll()
                if (r12 == 0) goto L_0x005d
                r3.onNext(r12)
                r4.requestOne()
                r11 = 1
                long r11 = r11 + r14
                int r4 = (r11 > r6 ? 1 : (r11 == r6 ? 0 : -1))
                if (r4 == 0) goto L_0x005b
                r14 = r11
                r11 = 0
                goto L_0x005d
            L_0x005b:
                r10 = r11
                goto L_0x006e
            L_0x005d:
                int r10 = r10 + 1
                goto L_0x003c
            L_0x0060:
                if (r13 == 0) goto L_0x0068
                if (r11 == 0) goto L_0x0068
                r3.onComplete()
                return
            L_0x0068:
                if (r11 == 0) goto L_0x006c
                r10 = r14
                goto L_0x006e
            L_0x006c:
                r10 = r14
                goto L_0x0011
            L_0x006e:
                int r4 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r4 != 0) goto L_0x00b5
                boolean r4 = r0.e
                if (r4 == 0) goto L_0x007a
                r17.c()
                return
            L_0x007a:
                io.reactivex.internal.util.b r4 = r0.c
                java.lang.Object r4 = r4.get()
                java.lang.Throwable r4 = (java.lang.Throwable) r4
                if (r4 == 0) goto L_0x008b
                r17.c()
                r3.onError(r4)
                return
            L_0x008b:
                java.util.concurrent.atomic.AtomicInteger r4 = r0.f
                int r4 = r4.get()
                if (r4 != 0) goto L_0x0095
                r4 = 1
                goto L_0x0096
            L_0x0095:
                r4 = 0
            L_0x0096:
                r12 = 0
            L_0x0097:
                if (r12 >= r2) goto L_0x00ab
                r13 = r1[r12]
                io.reactivex.internal.b.i<T> r13 = r13.e
                if (r13 == 0) goto L_0x00a8
                boolean r13 = r13.isEmpty()
                if (r13 != 0) goto L_0x00a8
                r16 = 0
                goto L_0x00ad
            L_0x00a8:
                int r12 = r12 + 1
                goto L_0x0097
            L_0x00ab:
                r16 = 1
            L_0x00ad:
                if (r4 == 0) goto L_0x00b5
                if (r16 == 0) goto L_0x00b5
                r3.onComplete()
                return
            L_0x00b5:
                int r4 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
                if (r4 == 0) goto L_0x00c8
                r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r4 == 0) goto L_0x00c8
                java.util.concurrent.atomic.AtomicLong r4 = r0.d
                long r6 = -r10
                r4.addAndGet(r6)
            L_0x00c8:
                int r4 = r17.get()
                if (r4 != r5) goto L_0x00d6
                int r4 = -r5
                int r4 = r0.addAndGet(r4)
                if (r4 != 0) goto L_0x00d6
                return
            L_0x00d6:
                r5 = r4
                goto L_0x0008
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.d.i.b.d():void");
        }
    }

    static abstract class c<T> extends AtomicInteger implements org.b.d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f7677a;

        /* renamed from: b  reason: collision with root package name */
        final a<T>[] f7678b;
        final io.reactivex.internal.util.b c = new io.reactivex.internal.util.b();
        final AtomicLong d = new AtomicLong();
        volatile boolean e;
        final AtomicInteger f = new AtomicInteger();

        /* access modifiers changed from: package-private */
        public abstract void a();

        /* access modifiers changed from: package-private */
        public abstract void onComplete();

        /* access modifiers changed from: package-private */
        public abstract void onError(Throwable th);

        /* access modifiers changed from: package-private */
        public abstract void onNext(a<T> aVar, T t);

        c(org.b.c<? super T> cVar, int i, int i2) {
            this.f7677a = cVar;
            a<T>[] aVarArr = new a[i];
            for (int i3 = 0; i3 < i; i3++) {
                aVarArr[i3] = new a<>(this, i2);
            }
            this.f7678b = aVarArr;
            this.f.lazySet(i);
        }

        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this.d, j);
                a();
            }
        }

        public void cancel() {
            if (!this.e) {
                this.e = true;
                b();
                if (getAndIncrement() == 0) {
                    c();
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            for (a<T> cancel : this.f7678b) {
                cancel.cancel();
            }
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            for (a<T> aVar : this.f7678b) {
                aVar.e = null;
            }
        }
    }

    static final class d<T> extends c<T> {
        d(org.b.c<? super T> cVar, int i, int i2) {
            super(cVar, i, i2);
        }

        /* access modifiers changed from: package-private */
        public final void onNext(a<T> aVar, T t) {
            if (get() != 0 || !compareAndSet(0, 1)) {
                if (!aVar.a().offer(t) && aVar.cancel()) {
                    this.c.addThrowable(new io.reactivex.c.c("Queue full?!"));
                    this.f.decrementAndGet();
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            } else {
                if (this.d.get() != 0) {
                    this.f7677a.onNext(t);
                    if (this.d.get() != Long.MAX_VALUE) {
                        this.d.decrementAndGet();
                    }
                    aVar.request(1);
                } else if (!aVar.a().offer(t)) {
                    aVar.cancel();
                    this.c.addThrowable(new io.reactivex.c.c("Queue full?!"));
                    this.f.decrementAndGet();
                    d();
                    return;
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            d();
        }

        /* access modifiers changed from: package-private */
        public final void onError(Throwable th) {
            this.c.addThrowable(th);
            this.f.decrementAndGet();
            a();
        }

        /* access modifiers changed from: package-private */
        public final void onComplete() {
            this.f.decrementAndGet();
            a();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (getAndIncrement() == 0) {
                d();
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:23:0x004e, code lost:
            if (r13 == false) goto L_0x006a;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x0050, code lost:
            if (r11 == false) goto L_0x006a;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:26:0x005a, code lost:
            if (((java.lang.Throwable) r0.c.get()) == null) goto L_0x0066;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:27:0x005c, code lost:
            r3.onError(r0.c.terminate());
         */
        /* JADX WARNING: Code restructure failed: missing block: B:28:0x0065, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:29:0x0066, code lost:
            r3.onComplete();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:30:0x0069, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:0x006a, code lost:
            if (r11 == false) goto L_0x006e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:32:0x006c, code lost:
            r10 = r14;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void d() {
            /*
                r17 = this;
                r0 = r17
                io.reactivex.internal.operators.d.i$a[] r1 = r0.f7678b
                int r2 = r1.length
                org.b.c r3 = r0.f7677a
                r5 = 1
            L_0x0008:
                java.util.concurrent.atomic.AtomicLong r6 = r0.d
                long r6 = r6.get()
                r8 = 0
                r10 = r8
            L_0x0011:
                int r13 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r13 == 0) goto L_0x0070
                boolean r13 = r0.e
                if (r13 == 0) goto L_0x001d
                r17.c()
                return
            L_0x001d:
                java.util.concurrent.atomic.AtomicInteger r13 = r0.f
                int r13 = r13.get()
                if (r13 != 0) goto L_0x0027
                r13 = 1
                goto L_0x0028
            L_0x0027:
                r13 = 0
            L_0x0028:
                r14 = r10
                r10 = 0
                r11 = 1
            L_0x002b:
                if (r10 >= r2) goto L_0x004e
                r4 = r1[r10]
                io.reactivex.internal.b.i<T> r12 = r4.e
                if (r12 == 0) goto L_0x004b
                java.lang.Object r12 = r12.poll()
                if (r12 == 0) goto L_0x004b
                r3.onNext(r12)
                r4.requestOne()
                r11 = 1
                long r11 = r11 + r14
                int r4 = (r11 > r6 ? 1 : (r11 == r6 ? 0 : -1))
                if (r4 == 0) goto L_0x0049
                r14 = r11
                r11 = 0
                goto L_0x004b
            L_0x0049:
                r10 = r11
                goto L_0x0070
            L_0x004b:
                int r10 = r10 + 1
                goto L_0x002b
            L_0x004e:
                if (r13 == 0) goto L_0x006a
                if (r11 == 0) goto L_0x006a
                io.reactivex.internal.util.b r1 = r0.c
                java.lang.Object r1 = r1.get()
                java.lang.Throwable r1 = (java.lang.Throwable) r1
                if (r1 == 0) goto L_0x0066
                io.reactivex.internal.util.b r1 = r0.c
                java.lang.Throwable r1 = r1.terminate()
                r3.onError(r1)
                return
            L_0x0066:
                r3.onComplete()
                return
            L_0x006a:
                if (r11 == 0) goto L_0x006e
                r10 = r14
                goto L_0x0070
            L_0x006e:
                r10 = r14
                goto L_0x0011
            L_0x0070:
                int r4 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r4 != 0) goto L_0x00ba
                boolean r4 = r0.e
                if (r4 == 0) goto L_0x007c
                r17.c()
                return
            L_0x007c:
                java.util.concurrent.atomic.AtomicInteger r4 = r0.f
                int r4 = r4.get()
                if (r4 != 0) goto L_0x0086
                r4 = 1
                goto L_0x0087
            L_0x0086:
                r4 = 0
            L_0x0087:
                r12 = 0
            L_0x0088:
                if (r12 >= r2) goto L_0x009c
                r13 = r1[r12]
                io.reactivex.internal.b.i<T> r13 = r13.e
                if (r13 == 0) goto L_0x0099
                boolean r13 = r13.isEmpty()
                if (r13 != 0) goto L_0x0099
                r16 = 0
                goto L_0x009e
            L_0x0099:
                int r12 = r12 + 1
                goto L_0x0088
            L_0x009c:
                r16 = 1
            L_0x009e:
                if (r4 == 0) goto L_0x00ba
                if (r16 == 0) goto L_0x00ba
                io.reactivex.internal.util.b r1 = r0.c
                java.lang.Object r1 = r1.get()
                java.lang.Throwable r1 = (java.lang.Throwable) r1
                if (r1 == 0) goto L_0x00b6
                io.reactivex.internal.util.b r1 = r0.c
                java.lang.Throwable r1 = r1.terminate()
                r3.onError(r1)
                return
            L_0x00b6:
                r3.onComplete()
                return
            L_0x00ba:
                int r4 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
                if (r4 == 0) goto L_0x00cd
                r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r4 == 0) goto L_0x00cd
                java.util.concurrent.atomic.AtomicLong r4 = r0.d
                long r6 = -r10
                r4.addAndGet(r6)
            L_0x00cd:
                int r4 = r17.get()
                if (r4 != r5) goto L_0x00db
                int r4 = -r5
                int r4 = r0.addAndGet(r4)
                if (r4 != 0) goto L_0x00db
                return
            L_0x00db:
                r5 = r4
                goto L_0x0008
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.d.i.d.d():void");
        }
    }

    public i(io.reactivex.parallel.a<? extends T> aVar, int i, boolean z) {
        this.f7674b = aVar;
        this.c = i;
        this.d = z;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        c cVar2;
        if (this.d) {
            cVar2 = new d(cVar, this.f7674b.parallelism(), this.c);
        } else {
            cVar2 = new b(cVar, this.f7674b.parallelism(), this.c);
        }
        cVar.onSubscribe(cVar2);
        this.f7674b.subscribe(cVar2.f7678b);
    }
}
