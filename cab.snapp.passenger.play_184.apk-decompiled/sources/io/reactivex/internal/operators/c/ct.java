package io.reactivex.internal.operators.c;

import androidx.appcompat.widget.ActivityChooserView;
import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.ah;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.z;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ct<T> extends io.reactivex.f.a<T> implements io.reactivex.internal.disposables.e {
    static final b e = new o();

    /* renamed from: a  reason: collision with root package name */
    final ae<T> f7340a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<j<T>> f7341b;
    final b<T> c;
    final ae<T> d;

    static abstract class a<T> extends AtomicReference<f> implements h<T> {

        /* renamed from: a  reason: collision with root package name */
        f f7342a;

        /* renamed from: b  reason: collision with root package name */
        int f7343b;

        /* access modifiers changed from: package-private */
        public Object a(Object obj) {
            return obj;
        }

        /* access modifiers changed from: package-private */
        public abstract void a();

        /* access modifiers changed from: package-private */
        public Object b(Object obj) {
            return obj;
        }

        a() {
            f fVar = new f(null);
            this.f7342a = fVar;
            set(fVar);
        }

        private void a(f fVar) {
            this.f7342a.set(fVar);
            this.f7342a = fVar;
            this.f7343b++;
        }

        public final void next(T t) {
            a(new f(a(NotificationLite.next(t))));
            a();
        }

        public final void error(Throwable th) {
            a(new f(a(NotificationLite.error(th))));
            b();
        }

        public final void complete() {
            a(new f(a(NotificationLite.complete())));
            b();
        }

        public final void replay(d<T> dVar) {
            if (dVar.getAndIncrement() == 0) {
                int i = 1;
                do {
                    f fVar = (f) dVar.c;
                    if (fVar == null) {
                        fVar = c();
                        dVar.c = fVar;
                    }
                    while (!dVar.isDisposed()) {
                        f fVar2 = (f) fVar.get();
                        if (fVar2 == null) {
                            dVar.c = fVar;
                            i = dVar.addAndGet(-i);
                        } else if (NotificationLite.accept(b(fVar2.f7349a), dVar.f7346b)) {
                            dVar.c = null;
                            return;
                        } else {
                            fVar = fVar2;
                        }
                    }
                    dVar.c = null;
                    return;
                } while (i != 0);
            }
        }

        /* access modifiers changed from: package-private */
        public f c() {
            return (f) get();
        }

        /* access modifiers changed from: package-private */
        public void b() {
            f fVar = (f) get();
            if (fVar.f7349a != null) {
                f fVar2 = new f(null);
                fVar2.lazySet(fVar.get());
                set(fVar2);
            }
        }
    }

    interface b<T> {
        h<T> call();
    }

    static final class c<R> implements io.reactivex.e.g<io.reactivex.b.c> {

        /* renamed from: a  reason: collision with root package name */
        private final ep<R> f7344a;

        c(ep<R> epVar) {
            this.f7344a = epVar;
        }

        public final void accept(io.reactivex.b.c cVar) {
            this.f7344a.setResource(cVar);
        }
    }

    static final class d<T> extends AtomicInteger implements io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final j<T> f7345a;

        /* renamed from: b  reason: collision with root package name */
        final ag<? super T> f7346b;
        Object c;
        volatile boolean d;

        d(j<T> jVar, ag<? super T> agVar) {
            this.f7345a = jVar;
            this.f7346b = agVar;
        }

        public final boolean isDisposed() {
            return this.d;
        }

        public final void dispose() {
            if (!this.d) {
                this.d = true;
                this.f7345a.a(this);
                this.c = null;
            }
        }
    }

    static final class e<R, U> extends z<R> {

        /* renamed from: a  reason: collision with root package name */
        private final Callable<? extends io.reactivex.f.a<U>> f7347a;

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.e.h<? super z<U>, ? extends ae<R>> f7348b;

        e(Callable<? extends io.reactivex.f.a<U>> callable, io.reactivex.e.h<? super z<U>, ? extends ae<R>> hVar) {
            this.f7347a = callable;
            this.f7348b = hVar;
        }

        public final void subscribeActual(ag<? super R> agVar) {
            try {
                io.reactivex.f.a aVar = (io.reactivex.f.a) io.reactivex.internal.a.b.requireNonNull(this.f7347a.call(), "The connectableFactory returned a null ConnectableObservable");
                ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.f7348b.apply(aVar), "The selector returned a null ObservableSource");
                ep epVar = new ep(agVar);
                aeVar.subscribe(epVar);
                aVar.connect(new c(epVar));
            } catch (Throwable th) {
                io.reactivex.c.b.throwIfFatal(th);
                EmptyDisposable.error(th, (ag<?>) agVar);
            }
        }
    }

    static final class f extends AtomicReference<f> {

        /* renamed from: a  reason: collision with root package name */
        final Object f7349a;

        f(Object obj) {
            this.f7349a = obj;
        }
    }

    static final class g<T> extends io.reactivex.f.a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.f.a<T> f7350a;

        /* renamed from: b  reason: collision with root package name */
        private final z<T> f7351b;

        g(io.reactivex.f.a<T> aVar, z<T> zVar) {
            this.f7350a = aVar;
            this.f7351b = zVar;
        }

        public final void connect(io.reactivex.e.g<? super io.reactivex.b.c> gVar) {
            this.f7350a.connect(gVar);
        }

        public final void subscribeActual(ag<? super T> agVar) {
            this.f7351b.subscribe(agVar);
        }
    }

    interface h<T> {
        void complete();

        void error(Throwable th);

        void next(T t);

        void replay(d<T> dVar);
    }

    static final class i<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final int f7352a;

        i(int i) {
            this.f7352a = i;
        }

        public final h<T> call() {
            return new n(this.f7352a);
        }
    }

    static final class j<T> extends AtomicReference<io.reactivex.b.c> implements ag<T>, io.reactivex.b.c {
        static final d[] c = new d[0];
        static final d[] d = new d[0];

        /* renamed from: a  reason: collision with root package name */
        final h<T> f7353a;

        /* renamed from: b  reason: collision with root package name */
        boolean f7354b;
        final AtomicReference<d[]> e = new AtomicReference<>(c);
        final AtomicBoolean f = new AtomicBoolean();

        j(h<T> hVar) {
            this.f7353a = hVar;
        }

        public final boolean isDisposed() {
            return this.e.get() == d;
        }

        public final void dispose() {
            this.e.set(d);
            DisposableHelper.dispose(this);
        }

        /* access modifiers changed from: package-private */
        public final void a(d<T> dVar) {
            d[] dVarArr;
            d[] dVarArr2;
            do {
                dVarArr = this.e.get();
                int length = dVarArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (dVarArr[i2].equals(dVar)) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        if (length == 1) {
                            dVarArr2 = c;
                        } else {
                            d[] dVarArr3 = new d[(length - 1)];
                            System.arraycopy(dVarArr, 0, dVarArr3, 0, i);
                            System.arraycopy(dVarArr, i + 1, dVarArr3, i, (length - i) - 1);
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

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                a();
            }
        }

        public final void onNext(T t) {
            if (!this.f7354b) {
                this.f7353a.next(t);
                a();
            }
        }

        public final void onError(Throwable th) {
            if (!this.f7354b) {
                this.f7354b = true;
                this.f7353a.error(th);
                b();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void onComplete() {
            if (!this.f7354b) {
                this.f7354b = true;
                this.f7353a.complete();
                b();
            }
        }

        private void a() {
            for (d replay : this.e.get()) {
                this.f7353a.replay(replay);
            }
        }

        private void b() {
            for (d replay : this.e.getAndSet(d)) {
                this.f7353a.replay(replay);
            }
        }
    }

    static final class k<T> implements ae<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<j<T>> f7355a;

        /* renamed from: b  reason: collision with root package name */
        private final b<T> f7356b;

        k(AtomicReference<j<T>> atomicReference, b<T> bVar) {
            this.f7355a = atomicReference;
            this.f7356b = bVar;
        }

        /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP_START, MTH_ENTER_BLOCK] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void subscribe(io.reactivex.ag<? super T> r6) {
            /*
                r5 = this;
            L_0x0000:
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.ct$j<T>> r0 = r5.f7355a
                java.lang.Object r0 = r0.get()
                io.reactivex.internal.operators.c.ct$j r0 = (io.reactivex.internal.operators.c.ct.j) r0
                if (r0 != 0) goto L_0x001f
                io.reactivex.internal.operators.c.ct$b<T> r0 = r5.f7356b
                io.reactivex.internal.operators.c.ct$h r0 = r0.call()
                io.reactivex.internal.operators.c.ct$j r1 = new io.reactivex.internal.operators.c.ct$j
                r1.<init>(r0)
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.ct$j<T>> r0 = r5.f7355a
                r2 = 0
                boolean r0 = r0.compareAndSet(r2, r1)
                if (r0 == 0) goto L_0x0000
                r0 = r1
            L_0x001f:
                io.reactivex.internal.operators.c.ct$d r1 = new io.reactivex.internal.operators.c.ct$d
                r1.<init>(r0, r6)
                r6.onSubscribe(r1)
            L_0x0027:
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.ct$d[]> r6 = r0.e
                java.lang.Object r6 = r6.get()
                io.reactivex.internal.operators.c.ct$d[] r6 = (io.reactivex.internal.operators.c.ct.d[]) r6
                io.reactivex.internal.operators.c.ct$d[] r2 = io.reactivex.internal.operators.c.ct.j.d
                if (r6 == r2) goto L_0x0046
                int r2 = r6.length
                int r3 = r2 + 1
                io.reactivex.internal.operators.c.ct$d[] r3 = new io.reactivex.internal.operators.c.ct.d[r3]
                r4 = 0
                java.lang.System.arraycopy(r6, r4, r3, r4, r2)
                r3[r2] = r1
                java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.ct$d[]> r2 = r0.e
                boolean r6 = r2.compareAndSet(r6, r3)
                if (r6 == 0) goto L_0x0027
            L_0x0046:
                boolean r6 = r1.isDisposed()
                if (r6 == 0) goto L_0x0050
                r0.a(r1)
                return
            L_0x0050:
                io.reactivex.internal.operators.c.ct$h<T> r6 = r0.f7353a
                r6.replay(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.ct.k.subscribe(io.reactivex.ag):void");
        }
    }

    static final class l<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final int f7357a;

        /* renamed from: b  reason: collision with root package name */
        private final long f7358b;
        private final TimeUnit c;
        private final ah d;

        l(int i, long j, TimeUnit timeUnit, ah ahVar) {
            this.f7357a = i;
            this.f7358b = j;
            this.c = timeUnit;
            this.d = ahVar;
        }

        public final h<T> call() {
            m mVar = new m(this.f7357a, this.f7358b, this.c, this.d);
            return mVar;
        }
    }

    static final class m<T> extends a<T> {
        final ah c;
        final long d;
        final TimeUnit e;
        final int f;

        m(int i, long j, TimeUnit timeUnit, ah ahVar) {
            this.c = ahVar;
            this.f = i;
            this.d = j;
            this.e = timeUnit;
        }

        /* access modifiers changed from: package-private */
        public final Object a(Object obj) {
            return new io.reactivex.i.b(obj, this.c.now(this.e), this.e);
        }

        /* access modifiers changed from: package-private */
        public final Object b(Object obj) {
            return ((io.reactivex.i.b) obj).value();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            f fVar;
            long now = this.c.now(this.e) - this.d;
            f fVar2 = (f) get();
            f fVar3 = (f) fVar2.get();
            int i = 0;
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                if (fVar2 != null) {
                    if (this.f7343b <= this.f) {
                        if (((io.reactivex.i.b) fVar2.f7349a).time() > now) {
                            break;
                        }
                        i++;
                        this.f7343b--;
                        fVar3 = (f) fVar2.get();
                    } else {
                        i++;
                        this.f7343b--;
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
                io.reactivex.ah r0 = r10.c
                java.util.concurrent.TimeUnit r1 = r10.e
                long r0 = r0.now(r1)
                long r2 = r10.d
                long r0 = r0 - r2
                java.lang.Object r2 = r10.get()
                io.reactivex.internal.operators.c.ct$f r2 = (io.reactivex.internal.operators.c.ct.f) r2
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.c.ct$f r3 = (io.reactivex.internal.operators.c.ct.f) r3
                r4 = 0
            L_0x0018:
                r9 = r3
                r3 = r2
                r2 = r9
                if (r2 == 0) goto L_0x003c
                int r5 = r10.f7343b
                r6 = 1
                if (r5 <= r6) goto L_0x003c
                java.lang.Object r5 = r2.f7349a
                io.reactivex.i.b r5 = (io.reactivex.i.b) r5
                long r7 = r5.time()
                int r5 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
                if (r5 > 0) goto L_0x003c
                int r4 = r4 + 1
                int r3 = r10.f7343b
                int r3 = r3 - r6
                r10.f7343b = r3
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.c.ct$f r3 = (io.reactivex.internal.operators.c.ct.f) r3
                goto L_0x0018
            L_0x003c:
                if (r4 == 0) goto L_0x0041
                r10.set(r3)
            L_0x0041:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.ct.m.b():void");
        }

        /* access modifiers changed from: package-private */
        public final f c() {
            f fVar;
            long now = this.c.now(this.e) - this.d;
            f fVar2 = (f) get();
            Object obj = fVar2.get();
            while (true) {
                f fVar3 = (f) obj;
                fVar = fVar2;
                fVar2 = fVar3;
                if (fVar2 == null) {
                    break;
                }
                io.reactivex.i.b bVar = (io.reactivex.i.b) fVar2.f7349a;
                if (NotificationLite.isComplete(bVar.value()) || NotificationLite.isError(bVar.value()) || bVar.time() > now) {
                    break;
                }
                obj = fVar2.get();
            }
            return fVar;
        }
    }

    static final class n<T> extends a<T> {
        final int c;

        n(int i) {
            this.c = i;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (this.f7343b > this.c) {
                this.f7343b--;
                set((f) ((f) get()).get());
            }
        }
    }

    static final class o implements b<Object> {
        o() {
        }

        public final h<Object> call() {
            return new p();
        }
    }

    static final class p<T> extends ArrayList<Object> implements h<T> {

        /* renamed from: a  reason: collision with root package name */
        volatile int f7359a;

        p() {
            super(16);
        }

        public final void next(T t) {
            add(NotificationLite.next(t));
            this.f7359a++;
        }

        public final void error(Throwable th) {
            add(NotificationLite.error(th));
            this.f7359a++;
        }

        public final void complete() {
            add(NotificationLite.complete());
            this.f7359a++;
        }

        public final void replay(d<T> dVar) {
            if (dVar.getAndIncrement() == 0) {
                ag<? super T> agVar = dVar.f7346b;
                int i = 1;
                while (!dVar.isDisposed()) {
                    int i2 = this.f7359a;
                    Integer num = (Integer) dVar.c;
                    int intValue = num != null ? num.intValue() : 0;
                    while (intValue < i2) {
                        if (!NotificationLite.accept(get(intValue), agVar) && !dVar.isDisposed()) {
                            intValue++;
                        } else {
                            return;
                        }
                    }
                    dVar.c = Integer.valueOf(intValue);
                    i = dVar.addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                }
            }
        }
    }

    public static <U, R> z<R> multicastSelector(Callable<? extends io.reactivex.f.a<U>> callable, io.reactivex.e.h<? super z<U>, ? extends ae<R>> hVar) {
        return io.reactivex.g.a.onAssembly(new e(callable, hVar));
    }

    public static <T> io.reactivex.f.a<T> observeOn(io.reactivex.f.a<T> aVar, ah ahVar) {
        return io.reactivex.g.a.onAssembly(new g(aVar, aVar.observeOn(ahVar)));
    }

    public static <T> io.reactivex.f.a<T> createFrom(ae<? extends T> aeVar) {
        return a(aeVar, e);
    }

    public static <T> io.reactivex.f.a<T> create(ae<T> aeVar, int i2) {
        if (i2 == Integer.MAX_VALUE) {
            return createFrom(aeVar);
        }
        return a(aeVar, new i(i2));
    }

    public static <T> io.reactivex.f.a<T> create(ae<T> aeVar, long j2, TimeUnit timeUnit, ah ahVar) {
        return create(aeVar, j2, timeUnit, ahVar, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public static <T> io.reactivex.f.a<T> create(ae<T> aeVar, long j2, TimeUnit timeUnit, ah ahVar, int i2) {
        l lVar = new l(i2, j2, timeUnit, ahVar);
        return a(aeVar, lVar);
    }

    private static <T> io.reactivex.f.a<T> a(ae<T> aeVar, b<T> bVar) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.g.a.onAssembly(new ct(new k(atomicReference, bVar), aeVar, atomicReference, bVar));
    }

    private ct(ae<T> aeVar, ae<T> aeVar2, AtomicReference<j<T>> atomicReference, b<T> bVar) {
        this.d = aeVar;
        this.f7340a = aeVar2;
        this.f7341b = atomicReference;
        this.c = bVar;
    }

    public final ae<T> source() {
        return this.f7340a;
    }

    public final void resetIf(io.reactivex.b.c cVar) {
        this.f7341b.compareAndSet((j) cVar, null);
    }

    public final void subscribeActual(ag<? super T> agVar) {
        this.d.subscribe(agVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:0:0x0000 A[LOOP_START, MTH_ENTER_BLOCK] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void connect(io.reactivex.e.g<? super io.reactivex.b.c> r5) {
        /*
            r4 = this;
        L_0x0000:
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.ct$j<T>> r0 = r4.f7341b
            java.lang.Object r0 = r0.get()
            io.reactivex.internal.operators.c.ct$j r0 = (io.reactivex.internal.operators.c.ct.j) r0
            if (r0 == 0) goto L_0x0010
            boolean r1 = r0.isDisposed()
            if (r1 == 0) goto L_0x0024
        L_0x0010:
            io.reactivex.internal.operators.c.ct$b<T> r1 = r4.c
            io.reactivex.internal.operators.c.ct$h r1 = r1.call()
            io.reactivex.internal.operators.c.ct$j r2 = new io.reactivex.internal.operators.c.ct$j
            r2.<init>(r1)
            java.util.concurrent.atomic.AtomicReference<io.reactivex.internal.operators.c.ct$j<T>> r1 = r4.f7341b
            boolean r0 = r1.compareAndSet(r0, r2)
            if (r0 == 0) goto L_0x0000
            r0 = r2
        L_0x0024:
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.f
            boolean r1 = r1.get()
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L_0x0038
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.f
            boolean r1 = r1.compareAndSet(r3, r2)
            if (r1 == 0) goto L_0x0038
            r1 = 1
            goto L_0x0039
        L_0x0038:
            r1 = 0
        L_0x0039:
            r5.accept(r0)     // Catch:{ all -> 0x0044 }
            if (r1 == 0) goto L_0x0043
            io.reactivex.ae<T> r5 = r4.f7340a
            r5.subscribe(r0)
        L_0x0043:
            return
        L_0x0044:
            r5 = move-exception
            if (r1 == 0) goto L_0x004c
            java.util.concurrent.atomic.AtomicBoolean r0 = r0.f
            r0.compareAndSet(r2, r3)
        L_0x004c:
            io.reactivex.c.b.throwIfFatal(r5)
            java.lang.RuntimeException r5 = io.reactivex.internal.util.h.wrapOrThrow(r5)
            goto L_0x0055
        L_0x0054:
            throw r5
        L_0x0055:
            goto L_0x0054
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.c.ct.connect(io.reactivex.e.g):void");
    }
}
