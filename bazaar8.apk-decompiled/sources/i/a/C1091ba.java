package i.a;

import h.c.e;
import h.f.b.j;
import h.h.g;
import i.a.c.A;
import i.a.c.B;
import i.a.c.m;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.TypeCastException;

/* renamed from: i.a.ba  reason: case insensitive filesystem */
/* compiled from: EventLoop.common.kt */
public abstract class C1091ba extends C1096ca implements P {

    /* renamed from: d  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f14730d = AtomicReferenceFieldUpdater.newUpdater(C1091ba.class, Object.class, "_queue");

    /* renamed from: e  reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f14731e = AtomicReferenceFieldUpdater.newUpdater(C1091ba.class, Object.class, "_delayed");
    public volatile Object _delayed = null;
    public volatile Object _queue = null;
    public volatile boolean isCompleted;

    /* renamed from: i.a.ba$a */
    /* compiled from: EventLoop.common.kt */
    public static abstract class a implements Runnable, Comparable<a>, X, B {

        /* renamed from: a  reason: collision with root package name */
        public Object f14732a;

        /* renamed from: b  reason: collision with root package name */
        public int f14733b;

        /* renamed from: c  reason: collision with root package name */
        public long f14734c;

        public void a(A<?> a2) {
            if (this.f14732a != C1100ea.f14820a) {
                this.f14732a = a2;
                return;
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        public final synchronized void f() {
            Object obj = this.f14732a;
            if (obj != C1100ea.f14820a) {
                if (!(obj instanceof b)) {
                    obj = null;
                }
                b bVar = (b) obj;
                if (bVar != null) {
                    bVar.b(this);
                }
                this.f14732a = C1100ea.f14820a;
            }
        }

        public A<?> g() {
            Object obj = this.f14732a;
            if (!(obj instanceof A)) {
                obj = null;
            }
            return (A) obj;
        }

        public int getIndex() {
            return this.f14733b;
        }

        public void setIndex(int i2) {
            this.f14733b = i2;
        }

        public String toString() {
            return "Delayed[nanos=" + this.f14734c + ']';
        }

        /* renamed from: a */
        public int compareTo(a aVar) {
            j.b(aVar, "other");
            long j2 = this.f14734c - aVar.f14734c;
            if (j2 > 0) {
                return 1;
            }
            return j2 < 0 ? -1 : 0;
        }

        public final boolean a(long j2) {
            return j2 - this.f14734c >= 0;
        }

        public final synchronized int a(long j2, b bVar, C1091ba baVar) {
            j.b(bVar, "delayed");
            j.b(baVar, "eventLoop");
            if (this.f14732a == C1100ea.f14820a) {
                return 2;
            }
            synchronized (bVar) {
                a aVar = (a) bVar.a();
                if (baVar.isCompleted) {
                    return 1;
                }
                if (aVar == null) {
                    bVar.f14735c = j2;
                } else {
                    long j3 = aVar.f14734c;
                    if (j3 - j2 < 0) {
                        j2 = j3;
                    }
                    if (j2 - bVar.f14735c > 0) {
                        bVar.f14735c = j2;
                    }
                }
                if (this.f14734c - bVar.f14735c < 0) {
                    this.f14734c = bVar.f14735c;
                }
                bVar.a(this);
                return 0;
            }
        }
    }

    /* renamed from: i.a.ba$b */
    /* compiled from: EventLoop.common.kt */
    public static final class b extends A<a> {

        /* renamed from: c  reason: collision with root package name */
        public long f14735c;

        public b(long j2) {
            this.f14735c = j2;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x0055  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long A() {
        /*
            r7 = this;
            boolean r0 = r7.B()
            if (r0 == 0) goto L_0x000b
            long r0 = r7.x()
            return r0
        L_0x000b:
            java.lang.Object r0 = r7._delayed
            i.a.ba$b r0 = (i.a.C1091ba.b) r0
            if (r0 == 0) goto L_0x004f
            boolean r1 = r0.c()
            if (r1 != 0) goto L_0x004f
            i.a.Na r1 = i.a.Oa.a()
            if (r1 == 0) goto L_0x0022
            long r1 = r1.b()
            goto L_0x0026
        L_0x0022:
            long r1 = java.lang.System.nanoTime()
        L_0x0026:
            monitor-enter(r0)
            i.a.c.B r3 = r0.a()     // Catch:{ all -> 0x004c }
            r4 = 0
            if (r3 == 0) goto L_0x0046
            i.a.ba$a r3 = (i.a.C1091ba.a) r3     // Catch:{ all -> 0x004c }
            boolean r5 = r3.a((long) r1)     // Catch:{ all -> 0x004c }
            r6 = 0
            if (r5 == 0) goto L_0x003c
            boolean r3 = r7.b(r3)     // Catch:{ all -> 0x004c }
            goto L_0x003d
        L_0x003c:
            r3 = 0
        L_0x003d:
            if (r3 == 0) goto L_0x0044
            i.a.c.B r3 = r0.a((int) r6)     // Catch:{ all -> 0x004c }
            r4 = r3
        L_0x0044:
            monitor-exit(r0)
            goto L_0x0047
        L_0x0046:
            monitor-exit(r0)
        L_0x0047:
            i.a.ba$a r4 = (i.a.C1091ba.a) r4
            if (r4 == 0) goto L_0x004f
            goto L_0x0026
        L_0x004c:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        L_0x004f:
            java.lang.Runnable r0 = r7.G()
            if (r0 == 0) goto L_0x0058
            r0.run()
        L_0x0058:
            long r0 = r7.x()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.C1091ba.A():long");
    }

    public final void F() {
        if (!K.a() || this.isCompleted) {
            while (true) {
                Object obj = this._queue;
                if (obj == null) {
                    if (f14730d.compareAndSet(this, null, C1100ea.f14821b)) {
                        return;
                    }
                } else if (obj instanceof m) {
                    ((m) obj).a();
                    return;
                } else if (obj != C1100ea.f14821b) {
                    m mVar = new m(8, true);
                    if (obj != null) {
                        mVar.a((Runnable) obj);
                        if (f14730d.compareAndSet(this, obj, mVar)) {
                            return;
                        }
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                    }
                } else {
                    return;
                }
            }
        } else {
            throw new AssertionError();
        }
    }

    public final Runnable G() {
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                return null;
            }
            if (obj instanceof m) {
                if (obj != null) {
                    m mVar = (m) obj;
                    Object f2 = mVar.f();
                    if (f2 != m.f14766c) {
                        return (Runnable) f2;
                    }
                    f14730d.compareAndSet(this, obj, mVar.e());
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */");
                }
            } else if (obj == C1100ea.f14821b) {
                return null;
            } else {
                if (f14730d.compareAndSet(this, obj, null)) {
                    if (obj != null) {
                        return (Runnable) obj;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x002b, code lost:
        if (r0 == i.a.C1100ea.a()) goto L_0x001a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean H() {
        /*
            r4 = this;
            boolean r0 = r4.z()
            r1 = 0
            if (r0 != 0) goto L_0x0008
            return r1
        L_0x0008:
            java.lang.Object r0 = r4._delayed
            i.a.ba$b r0 = (i.a.C1091ba.b) r0
            if (r0 == 0) goto L_0x0015
            boolean r0 = r0.c()
            if (r0 != 0) goto L_0x0015
            return r1
        L_0x0015:
            java.lang.Object r0 = r4._queue
            r2 = 1
            if (r0 != 0) goto L_0x001c
        L_0x001a:
            r1 = 1
            goto L_0x002e
        L_0x001c:
            boolean r3 = r0 instanceof i.a.c.m
            if (r3 == 0) goto L_0x0027
            i.a.c.m r0 = (i.a.c.m) r0
            boolean r1 = r0.c()
            goto L_0x002e
        L_0x0027:
            i.a.c.v r3 = i.a.C1100ea.f14821b
            if (r0 != r3) goto L_0x002e
            goto L_0x001a
        L_0x002e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.C1091ba.H():boolean");
    }

    public final void I() {
        Na a2 = Oa.a();
        long b2 = a2 != null ? a2.b() : System.nanoTime();
        while (true) {
            b bVar = (b) this._delayed;
            if (bVar != null) {
                a aVar = (a) bVar.f();
                if (aVar != null) {
                    a(b2, aVar);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public final void J() {
        this._queue = null;
        this._delayed = null;
    }

    public final void b(long j2, a aVar) {
        j.b(aVar, "delayedTask");
        int c2 = c(j2, aVar);
        if (c2 != 0) {
            if (c2 == 1) {
                a(j2, aVar);
            } else if (c2 != 2) {
                throw new IllegalStateException("unexpected result");
            }
        } else if (a(aVar)) {
            E();
        }
    }

    public final int c(long j2, a aVar) {
        if (this.isCompleted) {
            return 1;
        }
        b bVar = (b) this._delayed;
        if (bVar == null) {
            f14731e.compareAndSet(this, null, new b(j2));
            Object obj = this._delayed;
            if (obj != null) {
                bVar = (b) obj;
            } else {
                j.a();
                throw null;
            }
        }
        return aVar.a(j2, bVar, this);
    }

    public void shutdown() {
        Ma.f14650b.c();
        this.isCompleted = true;
        F();
        do {
        } while (A() <= 0);
        I();
    }

    public long x() {
        if (super.x() == 0) {
            return 0;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (obj instanceof m) {
                if (!((m) obj).c()) {
                    return 0;
                }
            } else if (obj == C1100ea.f14821b) {
                return Long.MAX_VALUE;
            } else {
                return 0;
            }
        }
        b bVar = (b) this._delayed;
        if (bVar != null) {
            a aVar = (a) bVar.d();
            if (aVar != null) {
                long j2 = aVar.f14734c;
                Na a2 = Oa.a();
                return g.a(j2 - (a2 != null ? a2.b() : System.nanoTime()), 0);
            }
        }
        return Long.MAX_VALUE;
    }

    public final void a(e eVar, Runnable runnable) {
        j.b(eVar, "context");
        j.b(runnable, "block");
        a(runnable);
    }

    public final void a(Runnable runnable) {
        j.b(runnable, "task");
        if (b(runnable)) {
            E();
        } else {
            M.f14648g.a(runnable);
        }
    }

    public final boolean b(Runnable runnable) {
        while (true) {
            Object obj = this._queue;
            if (this.isCompleted) {
                return false;
            }
            if (obj == null) {
                if (f14730d.compareAndSet(this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof m) {
                if (obj != null) {
                    m mVar = (m) obj;
                    int a2 = mVar.a(runnable);
                    if (a2 == 0) {
                        return true;
                    }
                    if (a2 == 1) {
                        f14730d.compareAndSet(this, obj, mVar.e());
                    } else if (a2 == 2) {
                        return false;
                    }
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */");
                }
            } else if (obj == C1100ea.f14821b) {
                return false;
            } else {
                m mVar2 = new m(8, true);
                if (obj != null) {
                    mVar2.a((Runnable) obj);
                    mVar2.a(runnable);
                    if (f14730d.compareAndSet(this, obj, mVar2)) {
                        return true;
                    }
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */");
                }
            }
        }
    }

    public final boolean a(a aVar) {
        b bVar = (b) this._delayed;
        return (bVar != null ? (a) bVar.d() : null) == aVar;
    }
}
