package kotlinx.coroutines.scheduling;

import com.crashlytics.android.answers.AnswersRetryFilesSender;
import h.f.b.f;
import h.f.b.j;
import h.h.g;
import i.a.K;
import i.a.L;
import i.a.Na;
import i.a.Oa;
import i.a.c.v;
import i.a.c.y;
import i.a.e.d;
import i.a.e.h;
import i.a.e.i;
import i.a.e.k;
import i.a.e.m;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* compiled from: CoroutineScheduler.kt */
public final class CoroutineScheduler implements Executor, Closeable {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicLongFieldUpdater f15803a = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack");

    /* renamed from: b  reason: collision with root package name */
    public static final AtomicLongFieldUpdater f15804b = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState");

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f15805c = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated");

    /* renamed from: d  reason: collision with root package name */
    public static final int f15806d = y.a("kotlinx.coroutines.scheduler.spins", (int) AnswersRetryFilesSender.BACKOFF_MS, 1, 0, 8, (Object) null);

    /* renamed from: e  reason: collision with root package name */
    public static final int f15807e = (f15806d + y.a("kotlinx.coroutines.scheduler.yields", 0, 0, 0, 8, (Object) null));

    /* renamed from: f  reason: collision with root package name */
    public static final int f15808f = ((int) TimeUnit.SECONDS.toNanos(1));

    /* renamed from: g  reason: collision with root package name */
    public static final int f15809g = ((int) g.b(g.a(k.f14809a / ((long) 4), 10), (long) f15808f));

    /* renamed from: h  reason: collision with root package name */
    public static final v f15810h = new v("NOT_IN_STACK");

    /* renamed from: i  reason: collision with root package name */
    public static final a f15811i = new a(null);
    public volatile int _isTerminated;
    public volatile long controlState;

    /* renamed from: j  reason: collision with root package name */
    public final d f15812j;

    /* renamed from: k  reason: collision with root package name */
    public final Semaphore f15813k;

    /* renamed from: l  reason: collision with root package name */
    public final b[] f15814l;
    public final Random m;
    public final int n;
    public final int o;
    public final long p;
    public volatile long parkedWorkersStack;
    public final String q;

    /* compiled from: CoroutineScheduler.kt */
    public enum WorkerState {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        RETIRING,
        TERMINATED
    }

    /* compiled from: CoroutineScheduler.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    public final class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        public static final AtomicIntegerFieldUpdater f15816a = AtomicIntegerFieldUpdater.newUpdater(b.class, "terminationState");

        /* renamed from: b  reason: collision with root package name */
        public final m f15817b;

        /* renamed from: c  reason: collision with root package name */
        public long f15818c;

        /* renamed from: d  reason: collision with root package name */
        public long f15819d;

        /* renamed from: e  reason: collision with root package name */
        public int f15820e;

        /* renamed from: f  reason: collision with root package name */
        public int f15821f;

        /* renamed from: g  reason: collision with root package name */
        public int f15822g;
        public volatile int indexInArray;
        public volatile Object nextParkedWorker;
        public volatile int spins;
        public volatile WorkerState state;
        public volatile int terminationState;

        public b() {
            setDaemon(true);
            this.f15817b = new m();
            this.state = WorkerState.RETIRING;
            this.terminationState = 0;
            this.nextParkedWorker = CoroutineScheduler.f15810h;
            this.f15820e = CoroutineScheduler.f15809g;
            this.f15821f = CoroutineScheduler.this.m.nextInt();
        }

        public final void a(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final void b(int i2) {
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.q);
            sb.append("-worker-");
            sb.append(i2 == 0 ? "TERMINATED" : String.valueOf(i2));
            setName(sb.toString());
            this.indexInArray = i2;
        }

        public final void c() {
            int i2 = this.spins;
            if (i2 <= CoroutineScheduler.f15807e) {
                this.spins = i2 + 1;
                if (i2 >= CoroutineScheduler.f15806d) {
                    Thread.yield();
                    return;
                }
                return;
            }
            if (this.f15820e < CoroutineScheduler.f15808f) {
                this.f15820e = g.b((this.f15820e * 3) >>> 1, CoroutineScheduler.f15808f);
            }
            a(WorkerState.PARKING);
            a((long) this.f15820e);
        }

        public final h d() {
            if (m()) {
                return e();
            }
            h b2 = this.f15817b.b();
            if (b2 == null) {
                b2 = CoroutineScheduler.this.f15812j.a(TaskMode.PROBABLY_BLOCKING);
            }
            return b2;
        }

        public final h e() {
            boolean z = a(CoroutineScheduler.this.n * 2) == 0;
            if (z) {
                h a2 = CoroutineScheduler.this.f15812j.a(TaskMode.NON_BLOCKING);
                if (a2 != null) {
                    return a2;
                }
            }
            h b2 = this.f15817b.b();
            if (b2 != null) {
                return b2;
            }
            if (!z) {
                h hVar = (h) CoroutineScheduler.this.f15812j.c();
                if (hVar != null) {
                    return hVar;
                }
            }
            return o();
        }

        public final int f() {
            return this.indexInArray;
        }

        public final m g() {
            return this.f15817b;
        }

        public final WorkerState getState() {
            return this.state;
        }

        public final Object h() {
            return this.nextParkedWorker;
        }

        public final CoroutineScheduler i() {
            return CoroutineScheduler.this;
        }

        public final void j() {
            this.f15820e = CoroutineScheduler.f15809g;
            this.spins = 0;
        }

        public final boolean k() {
            return this.state == WorkerState.BLOCKING;
        }

        public final boolean l() {
            return this.state == WorkerState.PARKING;
        }

        public final boolean m() {
            if (this.state == WorkerState.CPU_ACQUIRED) {
                return true;
            }
            if (!CoroutineScheduler.this.f15813k.tryAcquire()) {
                return false;
            }
            this.state = WorkerState.CPU_ACQUIRED;
            return true;
        }

        public final boolean n() {
            int i2 = this.terminationState;
            if (i2 == 1 || i2 == -1) {
                return false;
            }
            if (i2 == 0) {
                return f15816a.compareAndSet(this, 0, -1);
            }
            throw new IllegalStateException(("Invalid terminationState = " + i2).toString());
        }

        public final h o() {
            int c2 = CoroutineScheduler.this.z();
            if (c2 < 2) {
                return null;
            }
            int i2 = this.f15822g;
            if (i2 == 0) {
                i2 = a(c2);
            }
            int i3 = i2 + 1;
            if (i3 > c2) {
                i3 = 1;
            }
            this.f15822g = i3;
            b bVar = CoroutineScheduler.this.f15814l[i3];
            if (bVar == null || bVar == this || !this.f15817b.a(bVar.f15817b, CoroutineScheduler.this.f15812j)) {
                return null;
            }
            return this.f15817b.b();
        }

        public final void p() {
            synchronized (CoroutineScheduler.this.f15814l) {
                if (!CoroutineScheduler.this.isTerminated()) {
                    if (CoroutineScheduler.this.z() > CoroutineScheduler.this.n) {
                        if (a()) {
                            if (f15816a.compareAndSet(this, 0, 1)) {
                                int i2 = this.indexInArray;
                                b(0);
                                CoroutineScheduler.this.a(this, i2, 0);
                                int andDecrement = (int) (CoroutineScheduler.f15804b.getAndDecrement(CoroutineScheduler.this) & 2097151);
                                if (andDecrement != i2) {
                                    b bVar = CoroutineScheduler.this.f15814l[andDecrement];
                                    if (bVar != null) {
                                        CoroutineScheduler.this.f15814l[i2] = bVar;
                                        bVar.b(i2);
                                        CoroutineScheduler.this.a(bVar, andDecrement, i2);
                                    } else {
                                        j.a();
                                        throw null;
                                    }
                                }
                                CoroutineScheduler.this.f15814l[andDecrement] = null;
                                h.h hVar = h.h.f14579a;
                                this.state = WorkerState.TERMINATED;
                            }
                        }
                    }
                }
            }
        }

        public void run() {
            boolean z = false;
            while (!CoroutineScheduler.this.isTerminated() && this.state != WorkerState.TERMINATED) {
                h d2 = d();
                if (d2 == null) {
                    if (this.state == WorkerState.CPU_ACQUIRED) {
                        c();
                    } else {
                        b();
                    }
                    z = true;
                } else {
                    TaskMode a2 = d2.a();
                    if (z) {
                        b(a2);
                        z = false;
                    }
                    a(a2, d2.f14806a);
                    CoroutineScheduler.this.a(d2);
                    a(a2);
                }
            }
            a(WorkerState.TERMINATED);
        }

        public final boolean a(WorkerState workerState) {
            j.b(workerState, "newState");
            WorkerState workerState2 = this.state;
            boolean z = workerState2 == WorkerState.CPU_ACQUIRED;
            if (z) {
                CoroutineScheduler.this.f15813k.release();
            }
            if (workerState2 != workerState) {
                this.state = workerState;
            }
            return z;
        }

        public final void b() {
            a(WorkerState.PARKING);
            if (a()) {
                this.terminationState = 0;
                if (this.f15818c == 0) {
                    this.f15818c = System.nanoTime() + CoroutineScheduler.this.p;
                }
                if (a(CoroutineScheduler.this.p) && System.nanoTime() - this.f15818c >= 0) {
                    this.f15818c = 0;
                    p();
                }
            }
        }

        public final void a(TaskMode taskMode, long j2) {
            if (taskMode != TaskMode.NON_BLOCKING) {
                CoroutineScheduler.f15804b.addAndGet(CoroutineScheduler.this, 2097152);
                if (a(WorkerState.BLOCKING)) {
                    CoroutineScheduler.this.B();
                }
            } else if (CoroutineScheduler.this.f15813k.availablePermits() != 0) {
                long a2 = k.f14815g.a();
                long j3 = k.f14809a;
                if (a2 - j2 >= j3 && a2 - this.f15819d >= j3 * ((long) 5)) {
                    this.f15819d = a2;
                    CoroutineScheduler.this.B();
                }
            }
        }

        public b(CoroutineScheduler coroutineScheduler, int i2) {
            this();
            b(i2);
        }

        public final void b(TaskMode taskMode) {
            this.f15818c = 0;
            this.f15822g = 0;
            if (this.state == WorkerState.PARKING) {
                if (K.a()) {
                    if (!(taskMode == TaskMode.PROBABLY_BLOCKING)) {
                        throw new AssertionError();
                    }
                }
                this.state = WorkerState.BLOCKING;
                this.f15820e = CoroutineScheduler.f15809g;
            }
            this.spins = 0;
        }

        public final void a(TaskMode taskMode) {
            if (taskMode != TaskMode.NON_BLOCKING) {
                CoroutineScheduler.f15804b.addAndGet(CoroutineScheduler.this, -2097152);
                WorkerState workerState = this.state;
                if (workerState != WorkerState.TERMINATED) {
                    if (K.a()) {
                        if (!(workerState == WorkerState.BLOCKING)) {
                            throw new AssertionError();
                        }
                    }
                    this.state = WorkerState.RETIRING;
                }
            }
        }

        public final int a(int i2) {
            int i3 = this.f15821f;
            this.f15821f = i3 ^ (i3 << 13);
            int i4 = this.f15821f;
            this.f15821f = i4 ^ (i4 >> 17);
            int i5 = this.f15821f;
            this.f15821f = i5 ^ (i5 << 5);
            int i6 = i2 - 1;
            if ((i6 & i2) == 0) {
                return this.f15821f & i6;
            }
            return (this.f15821f & Integer.MAX_VALUE) % i2;
        }

        public final boolean a(long j2) {
            CoroutineScheduler.this.b(this);
            if (!a()) {
                return false;
            }
            LockSupport.parkNanos(j2);
            return true;
        }

        public final boolean a() {
            h a2 = CoroutineScheduler.this.f15812j.a(TaskMode.PROBABLY_BLOCKING);
            if (a2 == null) {
                return true;
            }
            this.f15817b.a(a2, CoroutineScheduler.this.f15812j);
            return false;
        }
    }

    public CoroutineScheduler(int i2, int i3, long j2, String str) {
        j.b(str, "schedulerName");
        this.n = i2;
        this.o = i3;
        this.p = j2;
        this.q = str;
        if (this.n >= 1) {
            if (this.o >= this.n) {
                if (this.o <= 2097150) {
                    if (this.p > 0) {
                        this.f15812j = new d();
                        this.f15813k = new Semaphore(this.n, false);
                        this.parkedWorkersStack = 0;
                        this.f15814l = new b[(this.o + 1)];
                        this.controlState = 0;
                        this.m = new Random();
                        this._isTerminated = 0;
                        return;
                    }
                    throw new IllegalArgumentException(("Idle worker keep alive time " + this.p + " must be positive").toString());
                }
                throw new IllegalArgumentException(("Max pool size " + this.o + " should not exceed maximal supported number of threads 2097150").toString());
            }
            throw new IllegalArgumentException(("Max pool size " + this.o + " should be greater than or equals to core pool size " + this.n).toString());
        }
        throw new IllegalArgumentException(("Core pool size " + this.n + " should be at least 1").toString());
    }

    public final b A() {
        while (true) {
            long j2 = this.parkedWorkersStack;
            b bVar = this.f15814l[(int) (2097151 & j2)];
            if (bVar == null) {
                return null;
            }
            long j3 = (2097152 + j2) & -2097152;
            int a2 = a(bVar);
            if (a2 >= 0) {
                if (f15803a.compareAndSet(this, j2, ((long) a2) | j3)) {
                    bVar.a((Object) f15810h);
                    return bVar;
                }
            }
        }
    }

    public final void B() {
        if (this.f15813k.availablePermits() == 0) {
            C();
        } else if (!C()) {
            long j2 = this.controlState;
            if (((int) (2097151 & j2)) - ((int) ((j2 & 4398044413952L) >> 21)) < this.n) {
                int x = x();
                if (x == 1 && this.n > 1) {
                    x();
                }
                if (x > 0) {
                    return;
                }
            }
            C();
        }
    }

    public final boolean C() {
        while (true) {
            b A = A();
            if (A == null) {
                return false;
            }
            A.j();
            boolean l2 = A.l();
            LockSupport.unpark(A);
            if (l2 && A.n()) {
                return true;
            }
        }
    }

    public void close() {
        h(10000);
    }

    public void execute(Runnable runnable) {
        j.b(runnable, "command");
        a(this, runnable, null, false, 6, null);
    }

    public final boolean isTerminated() {
        return this._isTerminated != 0;
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (b bVar : this.f15814l) {
            if (bVar != null) {
                int c2 = bVar.g().c();
                int i7 = i.a.e.a.f14790a[bVar.getState().ordinal()];
                if (i7 == 1) {
                    i4++;
                } else if (i7 == 2) {
                    i3++;
                    arrayList.add(String.valueOf(c2) + "b");
                } else if (i7 == 3) {
                    i2++;
                    arrayList.add(String.valueOf(c2) + "c");
                } else if (i7 == 4) {
                    i5++;
                    if (c2 > 0) {
                        arrayList.add(String.valueOf(c2) + "r");
                    }
                } else if (i7 == 5) {
                    i6++;
                }
            }
        }
        long j2 = this.controlState;
        return this.q + '@' + L.b(this) + '[' + "Pool Size {" + "core = " + this.n + ", " + "max = " + this.o + "}, " + "Worker States {" + "CPU = " + i2 + ", " + "blocking = " + i3 + ", " + "parked = " + i4 + ", " + "retired = " + i5 + ", " + "terminated = " + i6 + "}, " + "running workers queues = " + arrayList + ", " + "global queue size = " + this.f15812j.b() + ", " + "Control State Workers {" + "created = " + ((int) (2097151 & j2)) + ", " + "blocking = " + ((int) ((j2 & 4398044413952L) >> 21)) + '}' + "]";
    }

    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0074, code lost:
        return 0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int x() {
        /*
            r10 = this;
            kotlinx.coroutines.scheduling.CoroutineScheduler$b[] r0 = r10.f15814l
            monitor-enter(r0)
            boolean r1 = r10.isTerminated()     // Catch:{ all -> 0x0075 }
            if (r1 == 0) goto L_0x000c
            r1 = -1
            monitor-exit(r0)
            return r1
        L_0x000c:
            long r1 = r10.controlState     // Catch:{ all -> 0x0075 }
            r3 = 2097151(0x1fffff, double:1.0361303E-317)
            long r5 = r1 & r3
            int r6 = (int) r5     // Catch:{ all -> 0x0075 }
            r7 = 4398044413952(0x3ffffe00000, double:2.1729226538177E-311)
            long r1 = r1 & r7
            r5 = 21
            long r1 = r1 >> r5
            int r2 = (int) r1     // Catch:{ all -> 0x0075 }
            int r1 = r6 - r2
            int r2 = r10.n     // Catch:{ all -> 0x0075 }
            r5 = 0
            if (r1 < r2) goto L_0x0027
            monitor-exit(r0)
            return r5
        L_0x0027:
            int r2 = r10.o     // Catch:{ all -> 0x0075 }
            if (r6 >= r2) goto L_0x0073
            java.util.concurrent.Semaphore r2 = r10.f15813k     // Catch:{ all -> 0x0075 }
            int r2 = r2.availablePermits()     // Catch:{ all -> 0x0075 }
            if (r2 != 0) goto L_0x0034
            goto L_0x0073
        L_0x0034:
            long r6 = r10.controlState     // Catch:{ all -> 0x0075 }
            long r6 = r6 & r3
            int r2 = (int) r6     // Catch:{ all -> 0x0075 }
            r6 = 1
            int r2 = r2 + r6
            if (r2 <= 0) goto L_0x0044
            kotlinx.coroutines.scheduling.CoroutineScheduler$b[] r7 = r10.f15814l     // Catch:{ all -> 0x0075 }
            r7 = r7[r2]     // Catch:{ all -> 0x0075 }
            if (r7 != 0) goto L_0x0044
            r7 = 1
            goto L_0x0045
        L_0x0044:
            r7 = 0
        L_0x0045:
            if (r7 == 0) goto L_0x006b
            kotlinx.coroutines.scheduling.CoroutineScheduler$b r7 = new kotlinx.coroutines.scheduling.CoroutineScheduler$b     // Catch:{ all -> 0x0075 }
            r7.<init>(r10, r2)     // Catch:{ all -> 0x0075 }
            r7.start()     // Catch:{ all -> 0x0075 }
            java.util.concurrent.atomic.AtomicLongFieldUpdater r8 = f15804b     // Catch:{ all -> 0x0075 }
            long r8 = r8.incrementAndGet(r10)     // Catch:{ all -> 0x0075 }
            long r3 = r3 & r8
            int r4 = (int) r3     // Catch:{ all -> 0x0075 }
            if (r2 != r4) goto L_0x005a
            r5 = 1
        L_0x005a:
            if (r5 == 0) goto L_0x0063
            kotlinx.coroutines.scheduling.CoroutineScheduler$b[] r3 = r10.f15814l     // Catch:{ all -> 0x0075 }
            r3[r2] = r7     // Catch:{ all -> 0x0075 }
            int r1 = r1 + r6
            monitor-exit(r0)
            return r1
        L_0x0063:
            java.lang.String r1 = "Failed requirement."
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException     // Catch:{ all -> 0x0075 }
            r2.<init>(r1)     // Catch:{ all -> 0x0075 }
            throw r2     // Catch:{ all -> 0x0075 }
        L_0x006b:
            java.lang.String r1 = "Failed requirement."
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException     // Catch:{ all -> 0x0075 }
            r2.<init>(r1)     // Catch:{ all -> 0x0075 }
            throw r2     // Catch:{ all -> 0x0075 }
        L_0x0073:
            monitor-exit(r0)
            return r5
        L_0x0075:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.x():int");
    }

    public final b y() {
        Thread currentThread = Thread.currentThread();
        if (!(currentThread instanceof b)) {
            currentThread = null;
        }
        b bVar = (b) currentThread;
        if (bVar == null || !j.a((Object) bVar.i(), (Object) this)) {
            return null;
        }
        return bVar;
    }

    public final int z() {
        return (int) (this.controlState & 2097151);
    }

    public final void b(b bVar) {
        long j2;
        long j3;
        int f2;
        if (bVar.h() == f15810h) {
            do {
                j2 = this.parkedWorkersStack;
                int i2 = (int) (2097151 & j2);
                j3 = (2097152 + j2) & -2097152;
                f2 = bVar.f();
                if (K.a()) {
                    if (!(f2 != 0)) {
                        throw new AssertionError();
                    }
                }
                bVar.a((Object) this.f15814l[i2]);
            } while (!f15803a.compareAndSet(this, j2, ((long) f2) | j3));
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x006a, code lost:
        if (r9 != null) goto L_0x0075;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void h(long r9) {
        /*
            r8 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = f15805c
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r8, r1, r2)
            if (r0 != 0) goto L_0x000b
            return
        L_0x000b:
            kotlinx.coroutines.scheduling.CoroutineScheduler$b r0 = r8.y()
            kotlinx.coroutines.scheduling.CoroutineScheduler$b[] r3 = r8.f15814l
            monitor-enter(r3)
            long r4 = r8.controlState     // Catch:{ all -> 0x00a3 }
            r6 = 2097151(0x1fffff, double:1.0361303E-317)
            long r4 = r4 & r6
            int r5 = (int) r4
            monitor-exit(r3)
            if (r2 > r5) goto L_0x005f
            r3 = 1
        L_0x001d:
            kotlinx.coroutines.scheduling.CoroutineScheduler$b[] r4 = r8.f15814l
            r4 = r4[r3]
            if (r4 == 0) goto L_0x005a
            if (r4 == r0) goto L_0x0055
        L_0x0025:
            boolean r6 = r4.isAlive()
            if (r6 == 0) goto L_0x0032
            java.util.concurrent.locks.LockSupport.unpark(r4)
            r4.join(r9)
            goto L_0x0025
        L_0x0032:
            kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState r6 = r4.getState()
            boolean r7 = i.a.K.a()
            if (r7 == 0) goto L_0x004c
            kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState r7 = kotlinx.coroutines.scheduling.CoroutineScheduler.WorkerState.TERMINATED
            if (r6 != r7) goto L_0x0042
            r6 = 1
            goto L_0x0043
        L_0x0042:
            r6 = 0
        L_0x0043:
            if (r6 == 0) goto L_0x0046
            goto L_0x004c
        L_0x0046:
            java.lang.AssertionError r9 = new java.lang.AssertionError
            r9.<init>()
            throw r9
        L_0x004c:
            i.a.e.m r4 = r4.g()
            i.a.e.d r6 = r8.f15812j
            r4.a((i.a.e.d) r6)
        L_0x0055:
            if (r3 == r5) goto L_0x005f
            int r3 = r3 + 1
            goto L_0x001d
        L_0x005a:
            h.f.b.j.a()
            r9 = 0
            throw r9
        L_0x005f:
            i.a.e.d r9 = r8.f15812j
            r9.a()
        L_0x0064:
            if (r0 == 0) goto L_0x006d
            i.a.e.h r9 = r0.d()
            if (r9 == 0) goto L_0x006d
            goto L_0x0075
        L_0x006d:
            i.a.e.d r9 = r8.f15812j
            java.lang.Object r9 = r9.c()
            i.a.e.h r9 = (i.a.e.h) r9
        L_0x0075:
            if (r9 == 0) goto L_0x007b
            r8.a((i.a.e.h) r9)
            goto L_0x0064
        L_0x007b:
            if (r0 == 0) goto L_0x0082
            kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState r9 = kotlinx.coroutines.scheduling.CoroutineScheduler.WorkerState.TERMINATED
            r0.a((kotlinx.coroutines.scheduling.CoroutineScheduler.WorkerState) r9)
        L_0x0082:
            boolean r9 = i.a.K.a()
            if (r9 == 0) goto L_0x009c
            java.util.concurrent.Semaphore r9 = r8.f15813k
            int r9 = r9.availablePermits()
            int r10 = r8.n
            if (r9 != r10) goto L_0x0093
            r1 = 1
        L_0x0093:
            if (r1 == 0) goto L_0x0096
            goto L_0x009c
        L_0x0096:
            java.lang.AssertionError r9 = new java.lang.AssertionError
            r9.<init>()
            throw r9
        L_0x009c:
            r9 = 0
            r8.parkedWorkersStack = r9
            r8.controlState = r9
            return
        L_0x00a3:
            r9 = move-exception
            monitor-exit(r3)
            goto L_0x00a7
        L_0x00a6:
            throw r9
        L_0x00a7:
            goto L_0x00a6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.h(long):void");
    }

    public final int a(b bVar) {
        Object h2 = bVar.h();
        while (h2 != f15810h) {
            if (h2 == null) {
                return 0;
            }
            b bVar2 = (b) h2;
            int f2 = bVar2.f();
            if (f2 != 0) {
                return f2;
            }
            h2 = bVar2.h();
        }
        return -1;
    }

    public static /* synthetic */ void a(CoroutineScheduler coroutineScheduler, Runnable runnable, i iVar, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            iVar = i.a.e.g.f14805b;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        coroutineScheduler.a(runnable, iVar, z);
    }

    public final void a(Runnable runnable, i iVar, boolean z) {
        j.b(runnable, "block");
        j.b(iVar, "taskContext");
        Na a2 = Oa.a();
        if (a2 != null) {
            a2.e();
        }
        h a3 = a(runnable, iVar);
        int a4 = a(a3, z);
        if (a4 != -1) {
            if (a4 != 1) {
                B();
            } else if (this.f15812j.a(a3)) {
                B();
            } else {
                throw new RejectedExecutionException(this.q + " was terminated");
            }
        }
    }

    public final h a(Runnable runnable, i iVar) {
        j.b(runnable, "block");
        j.b(iVar, "taskContext");
        long a2 = k.f14815g.a();
        if (!(runnable instanceof h)) {
            return new i.a.e.j(runnable, a2, iVar);
        }
        h hVar = (h) runnable;
        hVar.f14806a = a2;
        hVar.f14807b = iVar;
        return hVar;
    }

    public final int a(h hVar, boolean z) {
        boolean z2;
        b y = y();
        if (y == null || y.getState() == WorkerState.TERMINATED) {
            return 1;
        }
        int i2 = -1;
        if (hVar.a() == TaskMode.NON_BLOCKING) {
            if (y.k()) {
                i2 = 0;
            } else if (!y.m()) {
                return 1;
            }
        }
        if (z) {
            z2 = y.g().b(hVar, this.f15812j);
        } else {
            z2 = y.g().a(hVar, this.f15812j);
        }
        if (!z2 || y.g().a() > k.f14810b) {
            return 0;
        }
        return i2;
    }

    public final void a(h hVar) {
        Na a2;
        try {
            hVar.run();
            a2 = Oa.a();
            if (a2 == null) {
                return;
            }
        } catch (Throwable th) {
            Na a3 = Oa.a();
            if (a3 != null) {
                a3.c();
            }
            throw th;
        }
        a2.c();
    }

    public final void a(b bVar, int i2, int i3) {
        while (true) {
            long j2 = this.parkedWorkersStack;
            int i4 = (int) (2097151 & j2);
            long j3 = (2097152 + j2) & -2097152;
            int a2 = i4 == i2 ? i3 == 0 ? a(bVar) : i3 : i4;
            if (a2 >= 0) {
                if (f15803a.compareAndSet(this, j2, j3 | ((long) a2))) {
                    return;
                }
            }
        }
    }
}
