package io.reactivex.internal.operators.flowable;

import androidx.appcompat.widget.ActivityChooserView;
import io.reactivex.ah;
import io.reactivex.internal.f.v;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.o;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class de<T> extends io.reactivex.d.a<T> implements io.reactivex.internal.disposables.e {
    static final Callable f = new c();

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.j<T> f8159b;
    final AtomicReference<j<T>> c;
    final Callable<? extends g<T>> d;
    final org.b.b<T> e;

    static class a<T> extends AtomicReference<f> implements g<T> {

        /* renamed from: a  reason: collision with root package name */
        f f8160a;

        /* renamed from: b  reason: collision with root package name */
        int f8161b;
        long c;

        /* access modifiers changed from: package-private */
        public Object a(Object obj) {
            return obj;
        }

        /* access modifiers changed from: package-private */
        public void a() {
        }

        /* access modifiers changed from: package-private */
        public Object b(Object obj) {
            return obj;
        }

        a() {
            f fVar = new f(null, 0);
            this.f8160a = fVar;
            set(fVar);
        }

        private void a(f fVar) {
            this.f8160a.set(fVar);
            this.f8160a = fVar;
            this.f8161b++;
        }

        public final void next(T t) {
            Object a2 = a(NotificationLite.next(t));
            long j = this.c + 1;
            this.c = j;
            a(new f(a2, j));
            a();
        }

        public final void error(Throwable th) {
            Object a2 = a(NotificationLite.error(th));
            long j = this.c + 1;
            this.c = j;
            a(new f(a2, j));
            b();
        }

        public final void complete() {
            Object a2 = a(NotificationLite.complete());
            long j = this.c + 1;
            this.c = j;
            a(new f(a2, j));
            b();
        }

        /* JADX WARNING: Code restructure failed: missing block: B:10:0x0012, code lost:
            if (r15.isDisposed() == false) goto L_0x0017;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:11:0x0014, code lost:
            r15.c = null;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:12:0x0016, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x0017, code lost:
            r3 = r15.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0023, code lost:
            if (r3 != Long.MAX_VALUE) goto L_0x0027;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x0025, code lost:
            r5 = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:16:0x0027, code lost:
            r5 = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:17:0x0028, code lost:
            r6 = (io.reactivex.internal.operators.flowable.de.f) r15.c;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:18:0x002e, code lost:
            if (r6 != null) goto L_0x003d;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:19:0x0030, code lost:
            r6 = c();
            r15.c = r6;
            io.reactivex.internal.util.c.add(r15.d, r6.f8169b);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:20:0x003d, code lost:
            r9 = 0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:22:0x0040, code lost:
            if (r3 == 0) goto L_0x0085;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:23:0x0042, code lost:
            r11 = (io.reactivex.internal.operators.flowable.de.f) r6.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x0048, code lost:
            if (r11 == null) goto L_0x0085;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:25:0x004a, code lost:
            r6 = b(r11.f8168a);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:28:0x0056, code lost:
            if (io.reactivex.internal.util.NotificationLite.accept(r6, r15.f8164b) == false) goto L_0x005b;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:29:0x0058, code lost:
            r15.c = null;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:30:0x005a, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:0x005b, code lost:
            r9 = r9 + 1;
            r3 = r3 - 1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:32:0x0063, code lost:
            if (r15.isDisposed() == false) goto L_0x0068;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:33:0x0065, code lost:
            r15.c = null;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:34:0x0067, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:35:0x0068, code lost:
            r6 = r11;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:36:0x006a, code lost:
            r0 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:37:0x006b, code lost:
            io.reactivex.c.b.throwIfFatal(r0);
            r15.c = null;
            r15.dispose();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:41:0x007f, code lost:
            r15.f8164b.onError(r0);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:42:0x0084, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:44:0x0087, code lost:
            if (r9 == 0) goto L_0x0090;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:45:0x0089, code lost:
            r15.c = r6;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:46:0x008b, code lost:
            if (r5 != false) goto L_0x0090;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:47:0x008d, code lost:
            r15.produced(r9);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:48:0x0090, code lost:
            monitor-enter(r15);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:51:0x0093, code lost:
            if (r15.f != false) goto L_0x0099;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:52:0x0095, code lost:
            r15.e = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:53:0x0097, code lost:
            monitor-exit(r15);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:54:0x0098, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:55:0x0099, code lost:
            r15.f = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:56:0x009b, code lost:
            monitor-exit(r15);
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void replay(io.reactivex.internal.operators.flowable.de.d<T> r15) {
            /*
                r14 = this;
                monitor-enter(r15)
                boolean r0 = r15.e     // Catch:{ all -> 0x00a1 }
                r1 = 1
                if (r0 == 0) goto L_0x000a
                r15.f = r1     // Catch:{ all -> 0x00a1 }
                monitor-exit(r15)     // Catch:{ all -> 0x00a1 }
                return
            L_0x000a:
                r15.e = r1     // Catch:{ all -> 0x00a1 }
                monitor-exit(r15)     // Catch:{ all -> 0x00a1 }
            L_0x000d:
                boolean r0 = r15.isDisposed()
                r2 = 0
                if (r0 == 0) goto L_0x0017
                r15.c = r2
                return
            L_0x0017:
                long r3 = r15.get()
                r5 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                r0 = 0
                int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r7 != 0) goto L_0x0027
                r5 = 1
                goto L_0x0028
            L_0x0027:
                r5 = 0
            L_0x0028:
                java.lang.Object r6 = r15.c
                io.reactivex.internal.operators.flowable.de$f r6 = (io.reactivex.internal.operators.flowable.de.f) r6
                r7 = 0
                if (r6 != 0) goto L_0x003d
                io.reactivex.internal.operators.flowable.de$f r6 = r14.c()
                r15.c = r6
                java.util.concurrent.atomic.AtomicLong r9 = r15.d
                long r10 = r6.f8169b
                io.reactivex.internal.util.c.add(r9, r10)
            L_0x003d:
                r9 = r7
            L_0x003e:
                int r11 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
                if (r11 == 0) goto L_0x0085
                java.lang.Object r11 = r6.get()
                io.reactivex.internal.operators.flowable.de$f r11 = (io.reactivex.internal.operators.flowable.de.f) r11
                if (r11 == 0) goto L_0x0085
                java.lang.Object r6 = r11.f8168a
                java.lang.Object r6 = r14.b(r6)
                org.b.c<? super T> r12 = r15.f8164b     // Catch:{ all -> 0x006a }
                boolean r12 = io.reactivex.internal.util.NotificationLite.accept((java.lang.Object) r6, r12)     // Catch:{ all -> 0x006a }
                if (r12 == 0) goto L_0x005b
                r15.c = r2     // Catch:{ all -> 0x006a }
                return
            L_0x005b:
                r12 = 1
                long r9 = r9 + r12
                long r3 = r3 - r12
                boolean r6 = r15.isDisposed()
                if (r6 == 0) goto L_0x0068
                r15.c = r2
                return
            L_0x0068:
                r6 = r11
                goto L_0x003e
            L_0x006a:
                r0 = move-exception
                io.reactivex.c.b.throwIfFatal(r0)
                r15.c = r2
                r15.dispose()
                boolean r1 = io.reactivex.internal.util.NotificationLite.isError(r6)
                if (r1 != 0) goto L_0x0084
                boolean r1 = io.reactivex.internal.util.NotificationLite.isComplete(r6)
                if (r1 != 0) goto L_0x0084
                org.b.c<? super T> r15 = r15.f8164b
                r15.onError(r0)
            L_0x0084:
                return
            L_0x0085:
                int r2 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
                if (r2 == 0) goto L_0x0090
                r15.c = r6
                if (r5 != 0) goto L_0x0090
                r15.produced(r9)
            L_0x0090:
                monitor-enter(r15)
                boolean r2 = r15.f     // Catch:{ all -> 0x009e }
                if (r2 != 0) goto L_0x0099
                r15.e = r0     // Catch:{ all -> 0x009e }
                monitor-exit(r15)     // Catch:{ all -> 0x009e }
                return
            L_0x0099:
                r15.f = r0     // Catch:{ all -> 0x009e }
                monitor-exit(r15)     // Catch:{ all -> 0x009e }
                goto L_0x000d
            L_0x009e:
                r0 = move-exception
                monitor-exit(r15)     // Catch:{ all -> 0x009e }
                throw r0
            L_0x00a1:
                r0 = move-exception
                monitor-exit(r15)     // Catch:{ all -> 0x00a1 }
                goto L_0x00a5
            L_0x00a4:
                throw r0
            L_0x00a5:
                goto L_0x00a4
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.de.a.replay(io.reactivex.internal.operators.flowable.de$d):void");
        }

        /* access modifiers changed from: package-private */
        public f c() {
            return (f) get();
        }

        /* access modifiers changed from: package-private */
        public void b() {
            f fVar = (f) get();
            if (fVar.f8168a != null) {
                f fVar2 = new f(null, 0);
                fVar2.lazySet(fVar.get());
                set(fVar2);
            }
        }
    }

    static final class b<T> extends io.reactivex.d.a<T> {

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.d.a<T> f8162b;
        private final io.reactivex.j<T> c;

        b(io.reactivex.d.a<T> aVar, io.reactivex.j<T> jVar) {
            this.f8162b = aVar;
            this.c = jVar;
        }

        public final void connect(io.reactivex.e.g<? super io.reactivex.b.c> gVar) {
            this.f8162b.connect(gVar);
        }

        public final void subscribeActual(org.b.c<? super T> cVar) {
            this.c.subscribe(cVar);
        }
    }

    static final class c implements Callable<Object> {
        c() {
        }

        public final Object call() {
            return new n();
        }
    }

    static final class d<T> extends AtomicLong implements io.reactivex.b.c, org.b.d {

        /* renamed from: a  reason: collision with root package name */
        final j<T> f8163a;

        /* renamed from: b  reason: collision with root package name */
        final org.b.c<? super T> f8164b;
        Object c;
        final AtomicLong d = new AtomicLong();
        boolean e;
        boolean f;

        d(j<T> jVar, org.b.c<? super T> cVar) {
            this.f8163a = jVar;
            this.f8164b = cVar;
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j) && io.reactivex.internal.util.c.addCancel(this, j) != Long.MIN_VALUE) {
                io.reactivex.internal.util.c.add(this.d, j);
                this.f8163a.a();
                this.f8163a.f8173a.replay(this);
            }
        }

        public final long produced(long j) {
            return io.reactivex.internal.util.c.producedCancel(this, j);
        }

        public final boolean isDisposed() {
            return get() == Long.MIN_VALUE;
        }

        public final void cancel() {
            dispose();
        }

        public final void dispose() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f8163a.a(this);
                this.f8163a.a();
                this.c = null;
            }
        }
    }

    static final class e<R, U> extends io.reactivex.j<R> {

        /* renamed from: b  reason: collision with root package name */
        private final Callable<? extends io.reactivex.d.a<U>> f8165b;
        private final io.reactivex.e.h<? super io.reactivex.j<U>, ? extends org.b.b<R>> c;

        final class a implements io.reactivex.e.g<io.reactivex.b.c> {

            /* renamed from: b  reason: collision with root package name */
            private final v<R> f8167b;

            a(v<R> vVar) {
                this.f8167b = vVar;
            }

            public final void accept(io.reactivex.b.c cVar) {
                this.f8167b.setResource(cVar);
            }
        }

        e(Callable<? extends io.reactivex.d.a<U>> callable, io.reactivex.e.h<? super io.reactivex.j<U>, ? extends org.b.b<R>> hVar) {
            this.f8165b = callable;
            this.c = hVar;
        }

        public final void subscribeActual(org.b.c<? super R> cVar) {
            try {
                io.reactivex.d.a aVar = (io.reactivex.d.a) io.reactivex.internal.a.b.requireNonNull(this.f8165b.call(), "The connectableFactory returned null");
                try {
                    org.b.b bVar = (org.b.b) io.reactivex.internal.a.b.requireNonNull(this.c.apply(aVar), "The selector returned a null Publisher");
                    v vVar = new v(cVar);
                    bVar.subscribe(vVar);
                    aVar.connect(new a(vVar));
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    EmptySubscription.error(th, cVar);
                }
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                EmptySubscription.error(th2, cVar);
            }
        }
    }

    static final class f extends AtomicReference<f> {

        /* renamed from: a  reason: collision with root package name */
        final Object f8168a;

        /* renamed from: b  reason: collision with root package name */
        final long f8169b;

        f(Object obj, long j) {
            this.f8168a = obj;
            this.f8169b = j;
        }
    }

    interface g<T> {
        void complete();

        void error(Throwable th);

        void next(T t);

        void replay(d<T> dVar);
    }

    static final class h<T> implements Callable<g<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final int f8170a;

        h(int i) {
            this.f8170a = i;
        }

        public final g<T> call() {
            return new m(this.f8170a);
        }
    }

    static final class i<T> implements org.b.b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<j<T>> f8171a;

        /* renamed from: b  reason: collision with root package name */
        private final Callable<? extends g<T>> f8172b;

        i(AtomicReference<j<T>> atomicReference, Callable<? extends g<T>> callable) {
            this.f8171a = atomicReference;
            this.f8172b = callable;
        }

        /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP_START, MTH_ENTER_BLOCK] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void subscribe(org.b.c<? super T> r6) {
            /*
                r5 = this;
            L_0x0000:
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.de$j<T>> r0 = r5.f8171a
                java.lang.Object r0 = r0.get()
                io.reactivex.internal.operators.flowable.de$j r0 = (io.reactivex.internal.operators.flowable.de.j) r0
                if (r0 != 0) goto L_0x002a
                java.util.concurrent.Callable<? extends io.reactivex.internal.operators.flowable.de$g<T>> r0 = r5.f8172b     // Catch:{ all -> 0x0022 }
                java.lang.Object r0 = r0.call()     // Catch:{ all -> 0x0022 }
                io.reactivex.internal.operators.flowable.de$g r0 = (io.reactivex.internal.operators.flowable.de.g) r0     // Catch:{ all -> 0x0022 }
                io.reactivex.internal.operators.flowable.de$j r1 = new io.reactivex.internal.operators.flowable.de$j
                r1.<init>(r0)
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.de$j<T>> r0 = r5.f8171a
                r2 = 0
                boolean r0 = r0.compareAndSet(r2, r1)
                if (r0 == 0) goto L_0x0000
                r0 = r1
                goto L_0x002a
            L_0x0022:
                r0 = move-exception
                io.reactivex.c.b.throwIfFatal(r0)
                io.reactivex.internal.subscriptions.EmptySubscription.error(r0, r6)
                return
            L_0x002a:
                io.reactivex.internal.operators.flowable.de$d r1 = new io.reactivex.internal.operators.flowable.de$d
                r1.<init>(r0, r6)
                r6.onSubscribe(r1)
            L_0x0032:
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.de$d<T>[]> r6 = r0.e
                java.lang.Object r6 = r6.get()
                io.reactivex.internal.operators.flowable.de$d[] r6 = (io.reactivex.internal.operators.flowable.de.d[]) r6
                io.reactivex.internal.operators.flowable.de$d[] r2 = io.reactivex.internal.operators.flowable.de.j.d
                if (r6 == r2) goto L_0x0051
                int r2 = r6.length
                int r3 = r2 + 1
                io.reactivex.internal.operators.flowable.de$d[] r3 = new io.reactivex.internal.operators.flowable.de.d[r3]
                r4 = 0
                java.lang.System.arraycopy(r6, r4, r3, r4, r2)
                r3[r2] = r1
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.de$d<T>[]> r2 = r0.e
                boolean r6 = r2.compareAndSet(r6, r3)
                if (r6 == 0) goto L_0x0032
            L_0x0051:
                boolean r6 = r1.isDisposed()
                if (r6 == 0) goto L_0x005b
                r0.a(r1)
                return
            L_0x005b:
                r0.a()
                io.reactivex.internal.operators.flowable.de$g<T> r6 = r0.f8173a
                r6.replay(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.de.i.subscribe(org.b.c):void");
        }
    }

    static final class j<T> extends AtomicReference<org.b.d> implements io.reactivex.b.c, o<T> {
        static final d[] c = new d[0];
        static final d[] d = new d[0];

        /* renamed from: a  reason: collision with root package name */
        final g<T> f8173a;

        /* renamed from: b  reason: collision with root package name */
        boolean f8174b;
        final AtomicReference<d<T>[]> e = new AtomicReference<>(c);
        final AtomicBoolean f = new AtomicBoolean();
        final AtomicInteger g = new AtomicInteger();
        long h;
        long i;

        j(g<T> gVar) {
            this.f8173a = gVar;
        }

        public final boolean isDisposed() {
            return this.e.get() == d;
        }

        public final void dispose() {
            this.e.set(d);
            SubscriptionHelper.cancel(this);
        }

        /* access modifiers changed from: package-private */
        public final void a(d<T> dVar) {
            d[] dVarArr;
            d[] dVarArr2;
            do {
                dVarArr = (d[]) this.e.get();
                int length = dVarArr.length;
                if (length != 0) {
                    int i2 = -1;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= length) {
                            break;
                        } else if (dVarArr[i3].equals(dVar)) {
                            i2 = i3;
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (i2 >= 0) {
                        if (length == 1) {
                            dVarArr2 = c;
                        } else {
                            d[] dVarArr3 = new d[(length - 1)];
                            System.arraycopy(dVarArr, 0, dVarArr3, 0, i2);
                            System.arraycopy(dVarArr, i2 + 1, dVarArr3, i2, (length - i2) - 1);
                            dVarArr2 = dVarArr3;
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.e.compareAndSet(dVarArr, dVarArr2));
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.setOnce(this, dVar)) {
                a();
                for (d replay : (d[]) this.e.get()) {
                    this.f8173a.replay(replay);
                }
            }
        }

        public final void onNext(T t) {
            if (!this.f8174b) {
                this.f8173a.next(t);
                for (d replay : (d[]) this.e.get()) {
                    this.f8173a.replay(replay);
                }
            }
        }

        public final void onError(Throwable th) {
            if (!this.f8174b) {
                this.f8174b = true;
                this.f8173a.error(th);
                for (d replay : (d[]) this.e.getAndSet(d)) {
                    this.f8173a.replay(replay);
                }
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (!this.f8174b) {
                this.f8174b = true;
                this.f8173a.complete();
                for (d replay : (d[]) this.e.getAndSet(d)) {
                    this.f8173a.replay(replay);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (this.g.getAndIncrement() == 0) {
                int i2 = 1;
                while (!isDisposed()) {
                    d[] dVarArr = (d[]) this.e.get();
                    long j = this.h;
                    long j2 = j;
                    for (d dVar : dVarArr) {
                        j2 = Math.max(j2, dVar.d.get());
                    }
                    long j3 = this.i;
                    org.b.d dVar2 = (org.b.d) get();
                    long j4 = j2 - j;
                    if (j4 != 0) {
                        this.h = j2;
                        if (dVar2 == null) {
                            long j5 = j3 + j4;
                            if (j5 < 0) {
                                j5 = Long.MAX_VALUE;
                            }
                            this.i = j5;
                        } else if (j3 != 0) {
                            this.i = 0;
                            dVar2.request(j3 + j4);
                        } else {
                            dVar2.request(j4);
                        }
                    } else if (!(j3 == 0 || dVar2 == null)) {
                        this.i = 0;
                        dVar2.request(j3);
                    }
                    i2 = this.g.addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }
    }

    static final class k<T> implements Callable<g<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final int f8175a;

        /* renamed from: b  reason: collision with root package name */
        private final long f8176b;
        private final TimeUnit c;
        private final ah d;

        k(int i, long j, TimeUnit timeUnit, ah ahVar) {
            this.f8175a = i;
            this.f8176b = j;
            this.c = timeUnit;
            this.d = ahVar;
        }

        public final g<T> call() {
            l lVar = new l(this.f8175a, this.f8176b, this.c, this.d);
            return lVar;
        }
    }

    static final class l<T> extends a<T> {
        final ah d;
        final long e;
        final TimeUnit f;
        final int g;

        l(int i, long j, TimeUnit timeUnit, ah ahVar) {
            this.d = ahVar;
            this.g = i;
            this.e = j;
            this.f = timeUnit;
        }

        /* access modifiers changed from: package-private */
        public final Object a(Object obj) {
            return new io.reactivex.i.b(obj, this.d.now(this.f), this.f);
        }

        /* access modifiers changed from: package-private */
        public final Object b(Object obj) {
            return ((io.reactivex.i.b) obj).value();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            f fVar;
            long now = this.d.now(this.f) - this.e;
            f fVar2 = (f) get();
            f fVar3 = (f) fVar2.get();
            int i = 0;
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                if (fVar2 != null) {
                    if (this.f8161b <= this.g) {
                        if (((io.reactivex.i.b) fVar2.f8168a).time() > now) {
                            break;
                        }
                        i++;
                        this.f8161b--;
                        fVar3 = (f) fVar2.get();
                    } else {
                        i++;
                        this.f8161b--;
                        fVar3 = (f) fVar2.get();
                    }
                } else {
                    break;
                }
            }
            if (i != 0) {
                set(fVar);
            }
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
        /* JADX WARNING: Removed duplicated region for block: B:9:0x003e  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void b() {
            /*
                r10 = this;
                io.reactivex.ah r0 = r10.d
                java.util.concurrent.TimeUnit r1 = r10.f
                long r0 = r0.now(r1)
                long r2 = r10.e
                long r0 = r0 - r2
                java.lang.Object r2 = r10.get()
                io.reactivex.internal.operators.flowable.de$f r2 = (io.reactivex.internal.operators.flowable.de.f) r2
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.flowable.de$f r3 = (io.reactivex.internal.operators.flowable.de.f) r3
                r4 = 0
            L_0x0018:
                r9 = r3
                r3 = r2
                r2 = r9
                if (r2 == 0) goto L_0x003c
                int r5 = r10.f8161b
                r6 = 1
                if (r5 <= r6) goto L_0x003c
                java.lang.Object r5 = r2.f8168a
                io.reactivex.i.b r5 = (io.reactivex.i.b) r5
                long r7 = r5.time()
                int r5 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
                if (r5 > 0) goto L_0x003c
                int r4 = r4 + 1
                int r3 = r10.f8161b
                int r3 = r3 - r6
                r10.f8161b = r3
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.flowable.de$f r3 = (io.reactivex.internal.operators.flowable.de.f) r3
                goto L_0x0018
            L_0x003c:
                if (r4 == 0) goto L_0x0041
                r10.set(r3)
            L_0x0041:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.de.l.b():void");
        }

        /* access modifiers changed from: package-private */
        public final f c() {
            f fVar;
            long now = this.d.now(this.f) - this.e;
            f fVar2 = (f) get();
            Object obj = fVar2.get();
            while (true) {
                f fVar3 = (f) obj;
                fVar = fVar2;
                fVar2 = fVar3;
                if (fVar2 == null) {
                    break;
                }
                io.reactivex.i.b bVar = (io.reactivex.i.b) fVar2.f8168a;
                if (NotificationLite.isComplete(bVar.value()) || NotificationLite.isError(bVar.value()) || bVar.time() > now) {
                    break;
                }
                obj = fVar2.get();
            }
            return fVar;
        }
    }

    static final class m<T> extends a<T> {
        final int d;

        m(int i) {
            this.d = i;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (this.f8161b > this.d) {
                f fVar = (f) ((f) get()).get();
                if (fVar != null) {
                    this.f8161b--;
                    set(fVar);
                    return;
                }
                throw new IllegalStateException("Empty list!");
            }
        }
    }

    static final class n<T> extends ArrayList<Object> implements g<T> {

        /* renamed from: a  reason: collision with root package name */
        volatile int f8177a;

        n() {
            super(16);
        }

        public final void next(T t) {
            add(NotificationLite.next(t));
            this.f8177a++;
        }

        public final void error(Throwable th) {
            add(NotificationLite.error(th));
            this.f8177a++;
        }

        public final void complete() {
            add(NotificationLite.complete());
            this.f8177a++;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:11:0x0013, code lost:
            if (r15.isDisposed() == false) goto L_0x0016;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:12:0x0015, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x0016, code lost:
            r1 = r14.f8177a;
            r2 = (java.lang.Integer) r15.c;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:14:0x001d, code lost:
            if (r2 == null) goto L_0x0024;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x001f, code lost:
            r2 = r2.intValue();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:16:0x0024, code lost:
            r2 = 0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:17:0x0025, code lost:
            r4 = r15.get();
            r8 = r4;
            r10 = 0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:19:0x002f, code lost:
            if (r8 == 0) goto L_0x0063;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:20:0x0031, code lost:
            if (r2 >= r1) goto L_0x0063;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:21:0x0033, code lost:
            r12 = get(r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x003b, code lost:
            if (io.reactivex.internal.util.NotificationLite.accept(r12, r0) == false) goto L_0x003e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:25:0x003d, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:27:0x0042, code lost:
            if (r15.isDisposed() == false) goto L_0x0045;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:28:0x0044, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:29:0x0045, code lost:
            r2 = r2 + 1;
            r8 = r8 - 1;
            r10 = r10 + 1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:30:0x004c, code lost:
            r1 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:0x004d, code lost:
            io.reactivex.c.b.throwIfFatal(r1);
            r15.dispose();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:35:0x005f, code lost:
            r0.onError(r1);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:36:0x0062, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:38:0x0065, code lost:
            if (r10 == 0) goto L_0x0079;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:39:0x0067, code lost:
            r15.c = java.lang.Integer.valueOf(r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:40:0x0074, code lost:
            if (r4 == Long.MAX_VALUE) goto L_0x0079;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:41:0x0076, code lost:
            r15.produced(r10);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:42:0x0079, code lost:
            monitor-enter(r15);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:45:0x007c, code lost:
            if (r15.f != false) goto L_0x0082;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:46:0x007e, code lost:
            r15.e = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:47:0x0080, code lost:
            monitor-exit(r15);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:48:0x0081, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:49:0x0082, code lost:
            r15.f = false;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:50:0x0084, code lost:
            monitor-exit(r15);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:9:0x000d, code lost:
            r0 = r15.f8164b;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void replay(io.reactivex.internal.operators.flowable.de.d<T> r15) {
            /*
                r14 = this;
                monitor-enter(r15)
                boolean r0 = r15.e     // Catch:{ all -> 0x0089 }
                r1 = 1
                if (r0 == 0) goto L_0x000a
                r15.f = r1     // Catch:{ all -> 0x0089 }
                monitor-exit(r15)     // Catch:{ all -> 0x0089 }
                return
            L_0x000a:
                r15.e = r1     // Catch:{ all -> 0x0089 }
                monitor-exit(r15)     // Catch:{ all -> 0x0089 }
                org.b.c<? super T> r0 = r15.f8164b
            L_0x000f:
                boolean r1 = r15.isDisposed()
                if (r1 == 0) goto L_0x0016
                return
            L_0x0016:
                int r1 = r14.f8177a
                java.lang.Object r2 = r15.c
                java.lang.Integer r2 = (java.lang.Integer) r2
                r3 = 0
                if (r2 == 0) goto L_0x0024
                int r2 = r2.intValue()
                goto L_0x0025
            L_0x0024:
                r2 = 0
            L_0x0025:
                long r4 = r15.get()
                r6 = 0
                r8 = r4
                r10 = r6
            L_0x002d:
                int r12 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
                if (r12 == 0) goto L_0x0063
                if (r2 >= r1) goto L_0x0063
                java.lang.Object r12 = r14.get(r2)
                boolean r12 = io.reactivex.internal.util.NotificationLite.accept((java.lang.Object) r12, r0)     // Catch:{ all -> 0x004c }
                if (r12 == 0) goto L_0x003e
                return
            L_0x003e:
                boolean r12 = r15.isDisposed()
                if (r12 == 0) goto L_0x0045
                return
            L_0x0045:
                int r2 = r2 + 1
                r12 = 1
                long r8 = r8 - r12
                long r10 = r10 + r12
                goto L_0x002d
            L_0x004c:
                r1 = move-exception
                io.reactivex.c.b.throwIfFatal(r1)
                r15.dispose()
                boolean r15 = io.reactivex.internal.util.NotificationLite.isError(r12)
                if (r15 != 0) goto L_0x0062
                boolean r15 = io.reactivex.internal.util.NotificationLite.isComplete(r12)
                if (r15 != 0) goto L_0x0062
                r0.onError(r1)
            L_0x0062:
                return
            L_0x0063:
                int r1 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r1 == 0) goto L_0x0079
                java.lang.Integer r1 = java.lang.Integer.valueOf(r2)
                r15.c = r1
                r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r6 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
                if (r6 == 0) goto L_0x0079
                r15.produced(r10)
            L_0x0079:
                monitor-enter(r15)
                boolean r1 = r15.f     // Catch:{ all -> 0x0086 }
                if (r1 != 0) goto L_0x0082
                r15.e = r3     // Catch:{ all -> 0x0086 }
                monitor-exit(r15)     // Catch:{ all -> 0x0086 }
                return
            L_0x0082:
                r15.f = r3     // Catch:{ all -> 0x0086 }
                monitor-exit(r15)     // Catch:{ all -> 0x0086 }
                goto L_0x000f
            L_0x0086:
                r0 = move-exception
                monitor-exit(r15)     // Catch:{ all -> 0x0086 }
                throw r0
            L_0x0089:
                r0 = move-exception
                monitor-exit(r15)     // Catch:{ all -> 0x0089 }
                goto L_0x008d
            L_0x008c:
                throw r0
            L_0x008d:
                goto L_0x008c
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.de.n.replay(io.reactivex.internal.operators.flowable.de$d):void");
        }
    }

    public static <U, R> io.reactivex.j<R> multicastSelector(Callable<? extends io.reactivex.d.a<U>> callable, io.reactivex.e.h<? super io.reactivex.j<U>, ? extends org.b.b<R>> hVar) {
        return new e(callable, hVar);
    }

    public static <T> io.reactivex.d.a<T> observeOn(io.reactivex.d.a<T> aVar, ah ahVar) {
        return io.reactivex.g.a.onAssembly(new b(aVar, aVar.observeOn(ahVar)));
    }

    public static <T> io.reactivex.d.a<T> createFrom(io.reactivex.j<? extends T> jVar) {
        return a(jVar, f);
    }

    public static <T> io.reactivex.d.a<T> create(io.reactivex.j<T> jVar, int i2) {
        if (i2 == Integer.MAX_VALUE) {
            return createFrom(jVar);
        }
        return a(jVar, new h(i2));
    }

    public static <T> io.reactivex.d.a<T> create(io.reactivex.j<T> jVar, long j2, TimeUnit timeUnit, ah ahVar) {
        return create(jVar, j2, timeUnit, ahVar, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public static <T> io.reactivex.d.a<T> create(io.reactivex.j<T> jVar, long j2, TimeUnit timeUnit, ah ahVar, int i2) {
        k kVar = new k(i2, j2, timeUnit, ahVar);
        return a(jVar, kVar);
    }

    private static <T> io.reactivex.d.a<T> a(io.reactivex.j<T> jVar, Callable<? extends g<T>> callable) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.g.a.onAssembly(new de(new i(atomicReference, callable), jVar, atomicReference, callable));
    }

    private de(org.b.b<T> bVar, io.reactivex.j<T> jVar, AtomicReference<j<T>> atomicReference, Callable<? extends g<T>> callable) {
        this.e = bVar;
        this.f8159b = jVar;
        this.c = atomicReference;
        this.d = callable;
    }

    public final org.b.b<T> source() {
        return this.f8159b;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        this.e.subscribe(cVar);
    }

    public final void resetIf(io.reactivex.b.c cVar) {
        this.c.compareAndSet((j) cVar, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP_START, MTH_ENTER_BLOCK] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void connect(io.reactivex.e.g<? super io.reactivex.b.c> r5) {
        /*
            r4 = this;
        L_0x0000:
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.de$j<T>> r0 = r4.c
            java.lang.Object r0 = r0.get()
            io.reactivex.internal.operators.flowable.de$j r0 = (io.reactivex.internal.operators.flowable.de.j) r0
            if (r0 == 0) goto L_0x0010
            boolean r1 = r0.isDisposed()
            if (r1 == 0) goto L_0x0026
        L_0x0010:
            java.util.concurrent.Callable<? extends io.reactivex.internal.operators.flowable.de$g<T>> r1 = r4.d     // Catch:{ all -> 0x0056 }
            java.lang.Object r1 = r1.call()     // Catch:{ all -> 0x0056 }
            io.reactivex.internal.operators.flowable.de$g r1 = (io.reactivex.internal.operators.flowable.de.g) r1     // Catch:{ all -> 0x0056 }
            io.reactivex.internal.operators.flowable.de$j r2 = new io.reactivex.internal.operators.flowable.de$j
            r2.<init>(r1)
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.flowable.de$j<T>> r1 = r4.c
            boolean r0 = r1.compareAndSet(r0, r2)
            if (r0 == 0) goto L_0x0000
            r0 = r2
        L_0x0026:
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.f
            boolean r1 = r1.get()
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L_0x003a
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.f
            boolean r1 = r1.compareAndSet(r3, r2)
            if (r1 == 0) goto L_0x003a
            r1 = 1
            goto L_0x003b
        L_0x003a:
            r1 = 0
        L_0x003b:
            r5.accept(r0)     // Catch:{ all -> 0x0046 }
            if (r1 == 0) goto L_0x0045
            io.reactivex.j<T> r5 = r4.f8159b
            r5.subscribe(r0)
        L_0x0045:
            return
        L_0x0046:
            r5 = move-exception
            if (r1 == 0) goto L_0x004e
            java.util.concurrent.atomic.AtomicBoolean r0 = r0.f
            r0.compareAndSet(r2, r3)
        L_0x004e:
            io.reactivex.c.b.throwIfFatal(r5)
            java.lang.RuntimeException r5 = io.reactivex.internal.util.h.wrapOrThrow(r5)
            throw r5
        L_0x0056:
            r5 = move-exception
            io.reactivex.c.b.throwIfFatal(r5)
            java.lang.RuntimeException r5 = io.reactivex.internal.util.h.wrapOrThrow(r5)
            goto L_0x0060
        L_0x005f:
            throw r5
        L_0x0060:
            goto L_0x005f
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.de.connect(io.reactivex.e.g):void");
    }
}
