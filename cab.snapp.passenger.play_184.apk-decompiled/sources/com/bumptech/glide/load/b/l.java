package com.bumptech.glide.load.b;

import androidx.core.util.Pools;
import com.bumptech.glide.e.i;
import com.bumptech.glide.g.a.a;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.b.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

final class l<R> implements a.c, h.a<R> {
    private static final c f = new c();

    /* renamed from: a  reason: collision with root package name */
    final e f2220a;

    /* renamed from: b  reason: collision with root package name */
    boolean f2221b;
    DataSource c;
    q d;
    p<?> e;
    private final com.bumptech.glide.g.a.c g;
    private final Pools.Pool<l<?>> h;
    private final c i;
    private final m j;
    private final com.bumptech.glide.load.b.c.a k;
    private final com.bumptech.glide.load.b.c.a l;
    private final com.bumptech.glide.load.b.c.a m;
    private final com.bumptech.glide.load.b.c.a n;
    private final AtomicInteger o;
    private com.bumptech.glide.load.d p;
    private boolean q;
    private boolean r;
    private boolean s;
    private v<?> t;
    private boolean u;
    private boolean v;
    private h<R> w;
    private volatile boolean x;

    class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final i f2223b;

        a(i iVar) {
            this.f2223b = iVar;
        }

        public final void run() {
            synchronized (l.this) {
                if (l.this.f2220a.a(this.f2223b)) {
                    l.this.b(this.f2223b);
                }
                l.this.a();
            }
        }
    }

    class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final i f2225b;

        b(i iVar) {
            this.f2225b = iVar;
        }

        public final void run() {
            synchronized (l.this) {
                if (l.this.f2220a.a(this.f2225b)) {
                    l.this.e.a();
                    l.this.a(this.f2225b);
                    l.this.c(this.f2225b);
                }
                l.this.a();
            }
        }
    }

    static class c {
        c() {
        }

        public final <R> p<R> build(v<R> vVar, boolean z) {
            return new p<>(vVar, z, true);
        }
    }

    static final class d {

        /* renamed from: a  reason: collision with root package name */
        final i f2226a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f2227b;

        d(i iVar, Executor executor) {
            this.f2226a = iVar;
            this.f2227b = executor;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.f2226a.equals(((d) obj).f2226a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f2226a.hashCode();
        }
    }

    static final class e implements Iterable<d> {

        /* renamed from: a  reason: collision with root package name */
        final List<d> f2228a;

        e() {
            this(new ArrayList(2));
        }

        private e(List<d> list) {
            this.f2228a = list;
        }

        /* access modifiers changed from: package-private */
        public final boolean a(i iVar) {
            return this.f2228a.contains(b(iVar));
        }

        /* access modifiers changed from: package-private */
        public final boolean a() {
            return this.f2228a.isEmpty();
        }

        /* access modifiers changed from: package-private */
        public final int b() {
            return this.f2228a.size();
        }

        /* access modifiers changed from: package-private */
        public final e c() {
            return new e(new ArrayList(this.f2228a));
        }

        static d b(i iVar) {
            return new d(iVar, com.bumptech.glide.g.e.directExecutor());
        }

        public final Iterator<d> iterator() {
            return this.f2228a.iterator();
        }
    }

    l(com.bumptech.glide.load.b.c.a aVar, com.bumptech.glide.load.b.c.a aVar2, com.bumptech.glide.load.b.c.a aVar3, com.bumptech.glide.load.b.c.a aVar4, m mVar, Pools.Pool<l<?>> pool) {
        this(aVar, aVar2, aVar3, aVar4, mVar, pool, f);
    }

    private l(com.bumptech.glide.load.b.c.a aVar, com.bumptech.glide.load.b.c.a aVar2, com.bumptech.glide.load.b.c.a aVar3, com.bumptech.glide.load.b.c.a aVar4, m mVar, Pools.Pool<l<?>> pool, c cVar) {
        this.f2220a = new e();
        this.g = com.bumptech.glide.g.a.c.newInstance();
        this.o = new AtomicInteger();
        this.k = aVar;
        this.l = aVar2;
        this.m = aVar3;
        this.n = aVar4;
        this.j = mVar;
        this.h = pool;
        this.i = cVar;
    }

    /* access modifiers changed from: package-private */
    public final synchronized l<R> a(com.bumptech.glide.load.d dVar, boolean z, boolean z2, boolean z3, boolean z4) {
        this.p = dVar;
        this.q = z;
        this.r = z2;
        this.s = z3;
        this.f2221b = z4;
        return this;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0017  */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x001a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void start(com.bumptech.glide.load.b.h<R> r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            r2.w = r3     // Catch:{ all -> 0x0023 }
            com.bumptech.glide.load.b.h$g r0 = com.bumptech.glide.load.b.h.g.INITIALIZE     // Catch:{ all -> 0x0023 }
            com.bumptech.glide.load.b.h$g r0 = r3.a(r0)     // Catch:{ all -> 0x0023 }
            com.bumptech.glide.load.b.h$g r1 = com.bumptech.glide.load.b.h.g.RESOURCE_CACHE     // Catch:{ all -> 0x0023 }
            if (r0 == r1) goto L_0x0014
            com.bumptech.glide.load.b.h$g r1 = com.bumptech.glide.load.b.h.g.DATA_CACHE     // Catch:{ all -> 0x0023 }
            if (r0 != r1) goto L_0x0012
            goto L_0x0014
        L_0x0012:
            r0 = 0
            goto L_0x0015
        L_0x0014:
            r0 = 1
        L_0x0015:
            if (r0 == 0) goto L_0x001a
            com.bumptech.glide.load.b.c.a r0 = r2.k     // Catch:{ all -> 0x0023 }
            goto L_0x001e
        L_0x001a:
            com.bumptech.glide.load.b.c.a r0 = r2.b()     // Catch:{ all -> 0x0023 }
        L_0x001e:
            r0.execute(r3)     // Catch:{ all -> 0x0023 }
            monitor-exit(r2)
            return
        L_0x0023:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.l.start(com.bumptech.glide.load.b.h):void");
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(i iVar, Executor executor) {
        this.g.throwIfRecycled();
        this.f2220a.f2228a.add(new d(iVar, executor));
        boolean z = true;
        if (this.u) {
            a(1);
            executor.execute(new b(iVar));
        } else if (this.v) {
            a(1);
            executor.execute(new a(iVar));
        } else {
            if (this.x) {
                z = false;
            }
            j.checkArgument(z, "Cannot add callbacks to a cancelled EngineJob");
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(i iVar) {
        try {
            iVar.onResourceReady(this.e, this.c);
        } catch (Throwable th) {
            throw new b(th);
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void b(i iVar) {
        try {
            iVar.onLoadFailed(this.d);
        } catch (Throwable th) {
            throw new b(th);
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void c(i iVar) {
        this.g.throwIfRecycled();
        this.f2220a.f2228a.remove(e.b(iVar));
        if (this.f2220a.a()) {
            boolean z = true;
            if (!c()) {
                this.x = true;
                this.w.cancel();
                this.j.onEngineJobCancelled(this, this.p);
            }
            if (!this.u) {
                if (!this.v) {
                    z = false;
                }
            }
            if (z && this.o.get() == 0) {
                d();
            }
        }
    }

    private com.bumptech.glide.load.b.c.a b() {
        if (this.r) {
            return this.m;
        }
        return this.s ? this.n : this.l;
    }

    private boolean c() {
        return this.v || this.u || this.x;
    }

    private synchronized void a(int i2) {
        j.checkArgument(c(), "Not yet complete!");
        if (this.o.getAndAdd(i2) == 0 && this.e != null) {
            this.e.a();
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a() {
        this.g.throwIfRecycled();
        j.checkArgument(c(), "Not yet complete!");
        int decrementAndGet = this.o.decrementAndGet();
        j.checkArgument(decrementAndGet >= 0, "Can't decrement below 0");
        if (decrementAndGet == 0) {
            if (this.e != null) {
                this.e.b();
            }
            d();
        }
    }

    private synchronized void d() {
        if (this.p != null) {
            this.f2220a.f2228a.clear();
            this.p = null;
            this.e = null;
            this.t = null;
            this.v = false;
            this.x = false;
            this.u = false;
            h<R> hVar = this.w;
            if (hVar.d.a()) {
                hVar.a();
            }
            this.w = null;
            this.d = null;
            this.c = null;
            this.h.release(this);
        } else {
            throw new IllegalArgumentException();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0048, code lost:
        r2.j.onEngineJobComplete(r2, r3, r0);
        r3 = r4.iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0055, code lost:
        if (r3.hasNext() == false) goto L_0x006a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0057, code lost:
        r4 = r3.next();
        r4.f2227b.execute(new com.bumptech.glide.load.b.l.b(r2, r4.f2226a));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x006a, code lost:
        a();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x006d, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onResourceReady(com.bumptech.glide.load.b.v<R> r3, com.bumptech.glide.load.DataSource r4) {
        /*
            r2 = this;
            monitor-enter(r2)
            r2.t = r3     // Catch:{ all -> 0x0081 }
            r2.c = r4     // Catch:{ all -> 0x0081 }
            monitor-exit(r2)     // Catch:{ all -> 0x0081 }
            monitor-enter(r2)
            com.bumptech.glide.g.a.c r3 = r2.g     // Catch:{ all -> 0x007e }
            r3.throwIfRecycled()     // Catch:{ all -> 0x007e }
            boolean r3 = r2.x     // Catch:{ all -> 0x007e }
            if (r3 == 0) goto L_0x001a
            com.bumptech.glide.load.b.v<?> r3 = r2.t     // Catch:{ all -> 0x007e }
            r3.recycle()     // Catch:{ all -> 0x007e }
            r2.d()     // Catch:{ all -> 0x007e }
            monitor-exit(r2)     // Catch:{ all -> 0x007e }
            return
        L_0x001a:
            com.bumptech.glide.load.b.l$e r3 = r2.f2220a     // Catch:{ all -> 0x007e }
            boolean r3 = r3.a()     // Catch:{ all -> 0x007e }
            if (r3 != 0) goto L_0x0076
            boolean r3 = r2.u     // Catch:{ all -> 0x007e }
            if (r3 != 0) goto L_0x006e
            com.bumptech.glide.load.b.l$c r3 = r2.i     // Catch:{ all -> 0x007e }
            com.bumptech.glide.load.b.v<?> r4 = r2.t     // Catch:{ all -> 0x007e }
            boolean r0 = r2.q     // Catch:{ all -> 0x007e }
            com.bumptech.glide.load.b.p r3 = r3.build(r4, r0)     // Catch:{ all -> 0x007e }
            r2.e = r3     // Catch:{ all -> 0x007e }
            r3 = 1
            r2.u = r3     // Catch:{ all -> 0x007e }
            com.bumptech.glide.load.b.l$e r4 = r2.f2220a     // Catch:{ all -> 0x007e }
            com.bumptech.glide.load.b.l$e r4 = r4.c()     // Catch:{ all -> 0x007e }
            int r0 = r4.b()     // Catch:{ all -> 0x007e }
            int r0 = r0 + r3
            r2.a((int) r0)     // Catch:{ all -> 0x007e }
            com.bumptech.glide.load.d r3 = r2.p     // Catch:{ all -> 0x007e }
            com.bumptech.glide.load.b.p<?> r0 = r2.e     // Catch:{ all -> 0x007e }
            monitor-exit(r2)     // Catch:{ all -> 0x007e }
            com.bumptech.glide.load.b.m r1 = r2.j
            r1.onEngineJobComplete(r2, r3, r0)
            java.util.Iterator r3 = r4.iterator()
        L_0x0051:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L_0x006a
            java.lang.Object r4 = r3.next()
            com.bumptech.glide.load.b.l$d r4 = (com.bumptech.glide.load.b.l.d) r4
            java.util.concurrent.Executor r0 = r4.f2227b
            com.bumptech.glide.load.b.l$b r1 = new com.bumptech.glide.load.b.l$b
            com.bumptech.glide.e.i r4 = r4.f2226a
            r1.<init>(r4)
            r0.execute(r1)
            goto L_0x0051
        L_0x006a:
            r2.a()
            return
        L_0x006e:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException     // Catch:{ all -> 0x007e }
            java.lang.String r4 = "Already have resource"
            r3.<init>(r4)     // Catch:{ all -> 0x007e }
            throw r3     // Catch:{ all -> 0x007e }
        L_0x0076:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException     // Catch:{ all -> 0x007e }
            java.lang.String r4 = "Received a resource without any callbacks to notify"
            r3.<init>(r4)     // Catch:{ all -> 0x007e }
            throw r3     // Catch:{ all -> 0x007e }
        L_0x007e:
            r3 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x007e }
            throw r3
        L_0x0081:
            r3 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0081 }
            goto L_0x0085
        L_0x0084:
            throw r3
        L_0x0085:
            goto L_0x0084
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.l.onResourceReady(com.bumptech.glide.load.b.v, com.bumptech.glide.load.DataSource):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0033, code lost:
        r3.j.onEngineJobComplete(r3, r0, null);
        r4 = r1.iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0041, code lost:
        if (r4.hasNext() == false) goto L_0x0056;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0043, code lost:
        r0 = r4.next();
        r0.f2227b.execute(new com.bumptech.glide.load.b.l.a(r3, r0.f2226a));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0056, code lost:
        a();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0059, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onLoadFailed(com.bumptech.glide.load.b.q r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            r3.d = r4     // Catch:{ all -> 0x006d }
            monitor-exit(r3)     // Catch:{ all -> 0x006d }
            monitor-enter(r3)
            com.bumptech.glide.g.a.c r4 = r3.g     // Catch:{ all -> 0x006a }
            r4.throwIfRecycled()     // Catch:{ all -> 0x006a }
            boolean r4 = r3.x     // Catch:{ all -> 0x006a }
            if (r4 == 0) goto L_0x0013
            r3.d()     // Catch:{ all -> 0x006a }
            monitor-exit(r3)     // Catch:{ all -> 0x006a }
            return
        L_0x0013:
            com.bumptech.glide.load.b.l$e r4 = r3.f2220a     // Catch:{ all -> 0x006a }
            boolean r4 = r4.a()     // Catch:{ all -> 0x006a }
            if (r4 != 0) goto L_0x0062
            boolean r4 = r3.v     // Catch:{ all -> 0x006a }
            if (r4 != 0) goto L_0x005a
            r4 = 1
            r3.v = r4     // Catch:{ all -> 0x006a }
            com.bumptech.glide.load.d r0 = r3.p     // Catch:{ all -> 0x006a }
            com.bumptech.glide.load.b.l$e r1 = r3.f2220a     // Catch:{ all -> 0x006a }
            com.bumptech.glide.load.b.l$e r1 = r1.c()     // Catch:{ all -> 0x006a }
            int r2 = r1.b()     // Catch:{ all -> 0x006a }
            int r2 = r2 + r4
            r3.a((int) r2)     // Catch:{ all -> 0x006a }
            monitor-exit(r3)     // Catch:{ all -> 0x006a }
            com.bumptech.glide.load.b.m r4 = r3.j
            r2 = 0
            r4.onEngineJobComplete(r3, r0, r2)
            java.util.Iterator r4 = r1.iterator()
        L_0x003d:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L_0x0056
            java.lang.Object r0 = r4.next()
            com.bumptech.glide.load.b.l$d r0 = (com.bumptech.glide.load.b.l.d) r0
            java.util.concurrent.Executor r1 = r0.f2227b
            com.bumptech.glide.load.b.l$a r2 = new com.bumptech.glide.load.b.l$a
            com.bumptech.glide.e.i r0 = r0.f2226a
            r2.<init>(r0)
            r1.execute(r2)
            goto L_0x003d
        L_0x0056:
            r3.a()
            return
        L_0x005a:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch:{ all -> 0x006a }
            java.lang.String r0 = "Already failed once"
            r4.<init>(r0)     // Catch:{ all -> 0x006a }
            throw r4     // Catch:{ all -> 0x006a }
        L_0x0062:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch:{ all -> 0x006a }
            java.lang.String r0 = "Received an exception without any callbacks to notify"
            r4.<init>(r0)     // Catch:{ all -> 0x006a }
            throw r4     // Catch:{ all -> 0x006a }
        L_0x006a:
            r4 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x006a }
            throw r4
        L_0x006d:
            r4 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x006d }
            goto L_0x0071
        L_0x0070:
            throw r4
        L_0x0071:
            goto L_0x0070
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.l.onLoadFailed(com.bumptech.glide.load.b.q):void");
    }

    public final void reschedule(h<?> hVar) {
        b().execute(hVar);
    }

    public final com.bumptech.glide.g.a.c getVerifier() {
        return this.g;
    }
}
