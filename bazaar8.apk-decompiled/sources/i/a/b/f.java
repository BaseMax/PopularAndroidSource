package i.a.b;

import h.f.b.j;
import h.h;
import h.h.g;
import i.a.c.d;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.TypeCastException;

/* compiled from: ArrayBroadcastChannel.kt */
public final class f<E> extends d<E> implements h<E> {

    /* renamed from: c  reason: collision with root package name */
    public final ReentrantLock f14703c;

    /* renamed from: d  reason: collision with root package name */
    public final Object[] f14704d;

    /* renamed from: e  reason: collision with root package name */
    public final List<a<E>> f14705e;

    /* renamed from: f  reason: collision with root package name */
    public final int f14706f;
    public volatile long head;
    public volatile int size;
    public volatile long tail;

    /* compiled from: ArrayBroadcastChannel.kt */
    private static final class a<E> extends a<E> implements t<E> {

        /* renamed from: c  reason: collision with root package name */
        public final ReentrantLock f14707c = new ReentrantLock();

        /* renamed from: d  reason: collision with root package name */
        public final f<E> f14708d;
        public volatile long subHead;

        public a(f<E> fVar) {
            j.b(fVar, "broadcastChannel");
            this.f14708d = fVar;
        }

        public boolean c(Throwable th) {
            boolean a2 = a(th);
            if (a2) {
                f.a(this.f14708d, null, this, 1, null);
            }
            u();
            return a2;
        }

        public boolean j() {
            throw new IllegalStateException("Should not be used");
        }

        public boolean k() {
            throw new IllegalStateException("Should not be used");
        }

        public boolean o() {
            return false;
        }

        public boolean p() {
            return this.subHead >= this.f14708d.tail;
        }

        /* JADX INFO: finally extract failed */
        /* JADX WARNING: Removed duplicated region for block: B:12:0x0025  */
        /* JADX WARNING: Removed duplicated region for block: B:13:0x0027  */
        /* JADX WARNING: Removed duplicated region for block: B:16:0x002c  */
        /* JADX WARNING: Removed duplicated region for block: B:19:0x0037  */
        /* JADX WARNING: Removed duplicated region for block: B:21:0x003a  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public java.lang.Object s() {
            /*
                r8 = this;
                java.util.concurrent.locks.ReentrantLock r0 = r8.f14707c
                r0.lock()
                java.lang.Object r1 = r8.w()     // Catch:{ all -> 0x0041 }
                boolean r2 = r1 instanceof i.a.b.o     // Catch:{ all -> 0x0041 }
                r3 = 1
                if (r2 == 0) goto L_0x000f
                goto L_0x0013
            L_0x000f:
                java.lang.Object r2 = i.a.b.c.f14691c     // Catch:{ all -> 0x0041 }
                if (r1 != r2) goto L_0x0015
            L_0x0013:
                r2 = 0
                goto L_0x001d
            L_0x0015:
                long r4 = r8.subHead     // Catch:{ all -> 0x0041 }
                r6 = 1
                long r4 = r4 + r6
                r8.subHead = r4     // Catch:{ all -> 0x0041 }
                r2 = 1
            L_0x001d:
                r0.unlock()
                boolean r0 = r1 instanceof i.a.b.o
                r4 = 0
                if (r0 != 0) goto L_0x0027
                r0 = r4
                goto L_0x0028
            L_0x0027:
                r0 = r1
            L_0x0028:
                i.a.b.o r0 = (i.a.b.o) r0
                if (r0 == 0) goto L_0x0031
                java.lang.Throwable r0 = r0.f14716d
                r8.a((java.lang.Throwable) r0)
            L_0x0031:
                boolean r0 = r8.t()
                if (r0 == 0) goto L_0x0038
                r2 = 1
            L_0x0038:
                if (r2 == 0) goto L_0x0040
                i.a.b.f<E> r0 = r8.f14708d
                r2 = 3
                i.a.b.f.a(r0, r4, r4, r2, r4)
            L_0x0040:
                return r1
            L_0x0041:
                r1 = move-exception
                r0.unlock()
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: i.a.b.f.a.s():java.lang.Object");
        }

        public final boolean t() {
            o oVar;
            boolean z = false;
            while (true) {
                oVar = null;
                if (!v() || !this.f14707c.tryLock()) {
                    break;
                }
                try {
                    Object w = w();
                    if (w != c.f14691c) {
                        if (w instanceof o) {
                            oVar = w;
                            break;
                        }
                        u l2 = l();
                        if (l2 == null) {
                            break;
                        } else if (l2 instanceof o) {
                            break;
                        } else {
                            Object a2 = l2.a(w, null);
                            if (a2 != null) {
                                this.subHead++;
                                z = true;
                                this.f14707c.unlock();
                                if (l2 != null) {
                                    l2.b(a2);
                                } else {
                                    j.a();
                                    throw null;
                                }
                            }
                        }
                    }
                } finally {
                    this.f14707c.unlock();
                }
            }
            this.f14707c.unlock();
            if (oVar != null) {
                a(oVar.f14716d);
            }
            return z;
        }

        public final void u() {
            ReentrantLock reentrantLock = this.f14707c;
            reentrantLock.lock();
            try {
                this.subHead = this.f14708d.tail;
                h hVar = h.f14579a;
            } finally {
                reentrantLock.unlock();
            }
        }

        public final boolean v() {
            if (e() != null) {
                return false;
            }
            if (!p() || this.f14708d.e() != null) {
                return true;
            }
            return false;
        }

        public final Object w() {
            long j2 = this.subHead;
            Object e2 = this.f14708d.e();
            if (j2 >= this.f14708d.tail) {
                if (e2 == null) {
                    e2 = e();
                }
                if (e2 == null) {
                    e2 = c.f14691c;
                }
                return e2;
            }
            Object a2 = this.f14708d.a(j2);
            o<?> e3 = e();
            return e3 != null ? e3 : a2;
        }
    }

    public f(int i2) {
        this.f14706f = i2;
        if (this.f14706f < 1 ? false : true) {
            this.f14703c = new ReentrantLock();
            this.f14704d = new Object[this.f14706f];
            this.f14705e = d.a();
            return;
        }
        throw new IllegalArgumentException(("ArrayBroadcastChannel capacity must be at least 1, but " + this.f14706f + " was specified").toString());
    }

    public t<E> b() {
        a aVar = new a(this);
        a(this, aVar, null, 2, null);
        return aVar;
    }

    public String d() {
        return "(buffer:capacity=" + this.f14704d.length + ",size=" + this.size + ')';
    }

    public boolean j() {
        return false;
    }

    public boolean k() {
        return this.size >= this.f14706f;
    }

    public final void n() {
        boolean z = false;
        boolean z2 = false;
        for (a<E> t : this.f14705e) {
            if (t.t()) {
                z = true;
            }
            z2 = true;
        }
        if (z || !z2) {
            a(this, null, null, 3, null);
        }
    }

    public final long o() {
        long j2 = Long.MAX_VALUE;
        for (a<E> aVar : this.f14705e) {
            j2 = g.b(j2, aVar.subHead);
        }
        return j2;
    }

    public boolean a(Throwable th) {
        if (!super.a(th)) {
            return false;
        }
        n();
        return true;
    }

    public Object b(E e2) {
        ReentrantLock reentrantLock = this.f14703c;
        reentrantLock.lock();
        try {
            o<?> f2 = f();
            if (f2 != null) {
                return f2;
            }
            int i2 = this.size;
            if (i2 >= this.f14706f) {
                Object obj = c.f14690b;
                reentrantLock.unlock();
                return obj;
            }
            long j2 = this.tail;
            this.f14704d[(int) (j2 % ((long) this.f14706f))] = e2;
            this.size = i2 + 1;
            this.tail = j2 + 1;
            h hVar = h.f14579a;
            reentrantLock.unlock();
            n();
            return c.f14689a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static /* synthetic */ void a(f fVar, a aVar, a aVar2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            aVar = null;
        }
        if ((i2 & 2) != 0) {
            aVar2 = null;
        }
        fVar.a(aVar, aVar2);
    }

    public final void a(a<E> aVar, a<E> aVar2) {
        w m;
        Object d2;
        while (true) {
            ReentrantLock reentrantLock = this.f14703c;
            reentrantLock.lock();
            if (aVar != null) {
                try {
                    aVar.subHead = this.tail;
                    boolean isEmpty = this.f14705e.isEmpty();
                    this.f14705e.add(aVar);
                    if (!isEmpty) {
                        return;
                    }
                } finally {
                    reentrantLock.unlock();
                }
            }
            if (aVar2 != null) {
                this.f14705e.remove(aVar2);
                if (this.head != aVar2.subHead) {
                    reentrantLock.unlock();
                    return;
                }
            }
            long o = o();
            long j2 = this.tail;
            long j3 = this.head;
            long b2 = g.b(o, j2);
            if (b2 <= j3) {
                reentrantLock.unlock();
                return;
            }
            int i2 = this.size;
            while (j3 < b2) {
                this.f14704d[(int) (j3 % ((long) this.f14706f))] = null;
                boolean z = i2 >= this.f14706f;
                j3++;
                this.head = j3;
                i2--;
                this.size = i2;
                if (z) {
                    do {
                        m = m();
                        if (m == null) {
                            continue;
                        } else if (!(m instanceof o)) {
                            if (m != null) {
                                d2 = m.d(null);
                            } else {
                                j.a();
                                throw null;
                            }
                        }
                    } while (d2 == null);
                    Object[] objArr = this.f14704d;
                    int i3 = (int) (j2 % ((long) this.f14706f));
                    if (m != null) {
                        objArr[i3] = m.q();
                        this.size = i2 + 1;
                        this.tail = j2 + 1;
                        h hVar = h.f14579a;
                        reentrantLock.unlock();
                        if (m != null) {
                            m.c(d2);
                            n();
                            aVar = null;
                            aVar2 = null;
                        } else {
                            j.a();
                            throw null;
                        }
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.channels.Send");
                    }
                }
            }
            reentrantLock.unlock();
            return;
        }
    }

    public final E a(long j2) {
        return this.f14704d[(int) (j2 % ((long) this.f14706f))];
    }
}
