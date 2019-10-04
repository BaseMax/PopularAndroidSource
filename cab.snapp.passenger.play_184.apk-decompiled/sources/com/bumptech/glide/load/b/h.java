package com.bumptech.glide.load.b;

import android.os.Build;
import android.util.Log;
import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.g.a.a;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.b.f;
import com.bumptech.glide.load.b.i;
import com.bumptech.glide.load.resource.bitmap.k;
import java.util.ArrayList;
import java.util.List;

final class h<R> implements a.c, f.a, Comparable<h<?>>, Runnable {
    private DataSource A;
    private com.bumptech.glide.load.a.d<?> B;
    private volatile f C;
    private volatile boolean D;
    private volatile boolean E;

    /* renamed from: a  reason: collision with root package name */
    final g<R> f2194a = new g<>();

    /* renamed from: b  reason: collision with root package name */
    final d f2195b;
    final c<?> c = new c<>();
    final e d = new e();
    com.bumptech.glide.e e;
    com.bumptech.glide.load.d f;
    Priority g;
    n h;
    int i;
    int j;
    j k;
    com.bumptech.glide.load.g l;
    a<R> m;
    int n;
    f o;
    boolean p;
    Object q;
    com.bumptech.glide.load.d r;
    private final List<Throwable> s = new ArrayList();
    private final com.bumptech.glide.g.a.c t = com.bumptech.glide.g.a.c.newInstance();
    private final Pools.Pool<h<?>> u;
    private g v;
    private long w;
    private Thread x;
    private com.bumptech.glide.load.d y;
    private Object z;

    /* renamed from: com.bumptech.glide.load.b.h$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2196a = new int[f.values().length];

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f2197b = new int[g.values().length];
        static final /* synthetic */ int[] c = new int[EncodeStrategy.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(25:0|1|2|3|(2:5|6)|7|9|10|11|12|13|15|16|17|18|19|20|21|23|24|25|26|27|28|30) */
        /* JADX WARNING: Can't wrap try/catch for region: R(26:0|1|2|3|5|6|7|9|10|11|12|13|15|16|17|18|19|20|21|23|24|25|26|27|28|30) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0032 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x0047 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x0052 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x0070 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:27:0x007a */
        static {
            /*
                com.bumptech.glide.load.EncodeStrategy[] r0 = com.bumptech.glide.load.EncodeStrategy.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                c = r0
                r0 = 1
                int[] r1 = c     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.bumptech.glide.load.EncodeStrategy r2 = com.bumptech.glide.load.EncodeStrategy.SOURCE     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r2 = r2.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                r1 = 2
                int[] r2 = c     // Catch:{ NoSuchFieldError -> 0x001f }
                com.bumptech.glide.load.EncodeStrategy r3 = com.bumptech.glide.load.EncodeStrategy.TRANSFORMED     // Catch:{ NoSuchFieldError -> 0x001f }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2[r3] = r1     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                com.bumptech.glide.load.b.h$g[] r2 = com.bumptech.glide.load.b.h.g.values()
                int r2 = r2.length
                int[] r2 = new int[r2]
                f2197b = r2
                int[] r2 = f2197b     // Catch:{ NoSuchFieldError -> 0x0032 }
                com.bumptech.glide.load.b.h$g r3 = com.bumptech.glide.load.b.h.g.RESOURCE_CACHE     // Catch:{ NoSuchFieldError -> 0x0032 }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x0032 }
                r2[r3] = r0     // Catch:{ NoSuchFieldError -> 0x0032 }
            L_0x0032:
                int[] r2 = f2197b     // Catch:{ NoSuchFieldError -> 0x003c }
                com.bumptech.glide.load.b.h$g r3 = com.bumptech.glide.load.b.h.g.DATA_CACHE     // Catch:{ NoSuchFieldError -> 0x003c }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x003c }
                r2[r3] = r1     // Catch:{ NoSuchFieldError -> 0x003c }
            L_0x003c:
                r2 = 3
                int[] r3 = f2197b     // Catch:{ NoSuchFieldError -> 0x0047 }
                com.bumptech.glide.load.b.h$g r4 = com.bumptech.glide.load.b.h.g.SOURCE     // Catch:{ NoSuchFieldError -> 0x0047 }
                int r4 = r4.ordinal()     // Catch:{ NoSuchFieldError -> 0x0047 }
                r3[r4] = r2     // Catch:{ NoSuchFieldError -> 0x0047 }
            L_0x0047:
                int[] r3 = f2197b     // Catch:{ NoSuchFieldError -> 0x0052 }
                com.bumptech.glide.load.b.h$g r4 = com.bumptech.glide.load.b.h.g.FINISHED     // Catch:{ NoSuchFieldError -> 0x0052 }
                int r4 = r4.ordinal()     // Catch:{ NoSuchFieldError -> 0x0052 }
                r5 = 4
                r3[r4] = r5     // Catch:{ NoSuchFieldError -> 0x0052 }
            L_0x0052:
                int[] r3 = f2197b     // Catch:{ NoSuchFieldError -> 0x005d }
                com.bumptech.glide.load.b.h$g r4 = com.bumptech.glide.load.b.h.g.INITIALIZE     // Catch:{ NoSuchFieldError -> 0x005d }
                int r4 = r4.ordinal()     // Catch:{ NoSuchFieldError -> 0x005d }
                r5 = 5
                r3[r4] = r5     // Catch:{ NoSuchFieldError -> 0x005d }
            L_0x005d:
                com.bumptech.glide.load.b.h$f[] r3 = com.bumptech.glide.load.b.h.f.values()
                int r3 = r3.length
                int[] r3 = new int[r3]
                f2196a = r3
                int[] r3 = f2196a     // Catch:{ NoSuchFieldError -> 0x0070 }
                com.bumptech.glide.load.b.h$f r4 = com.bumptech.glide.load.b.h.f.INITIALIZE     // Catch:{ NoSuchFieldError -> 0x0070 }
                int r4 = r4.ordinal()     // Catch:{ NoSuchFieldError -> 0x0070 }
                r3[r4] = r0     // Catch:{ NoSuchFieldError -> 0x0070 }
            L_0x0070:
                int[] r0 = f2196a     // Catch:{ NoSuchFieldError -> 0x007a }
                com.bumptech.glide.load.b.h$f r3 = com.bumptech.glide.load.b.h.f.SWITCH_TO_SOURCE_SERVICE     // Catch:{ NoSuchFieldError -> 0x007a }
                int r3 = r3.ordinal()     // Catch:{ NoSuchFieldError -> 0x007a }
                r0[r3] = r1     // Catch:{ NoSuchFieldError -> 0x007a }
            L_0x007a:
                int[] r0 = f2196a     // Catch:{ NoSuchFieldError -> 0x0084 }
                com.bumptech.glide.load.b.h$f r1 = com.bumptech.glide.load.b.h.f.DECODE_DATA     // Catch:{ NoSuchFieldError -> 0x0084 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0084 }
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0084 }
            L_0x0084:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.h.AnonymousClass1.<clinit>():void");
        }
    }

    interface a<R> {
        void onLoadFailed(q qVar);

        void onResourceReady(v<R> vVar, DataSource dataSource);

        void reschedule(h<?> hVar);
    }

    final class b<Z> implements i.a<Z> {

        /* renamed from: b  reason: collision with root package name */
        private final DataSource f2199b;

        b(DataSource dataSource) {
            this.f2199b = dataSource;
        }

        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v2, resolved type: com.bumptech.glide.load.b.v<Z>} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r14v7, resolved type: com.bumptech.glide.load.b.x} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r14v8, resolved type: com.bumptech.glide.load.b.d} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v4, resolved type: com.bumptech.glide.load.b.v<Z>} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v7, resolved type: com.bumptech.glide.load.b.v<Z>} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r14v18, resolved type: com.bumptech.glide.load.b.x} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v10, resolved type: com.bumptech.glide.load.b.x} */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final com.bumptech.glide.load.b.v<Z> onResourceDecoded(com.bumptech.glide.load.b.v<Z> r14) {
            /*
                r13 = this;
                com.bumptech.glide.load.b.h r0 = com.bumptech.glide.load.b.h.this
                com.bumptech.glide.load.DataSource r1 = r13.f2199b
                java.lang.Object r2 = r14.get()
                java.lang.Class r10 = r2.getClass()
                com.bumptech.glide.load.DataSource r2 = com.bumptech.glide.load.DataSource.RESOURCE_DISK_CACHE
                r3 = 0
                if (r1 == r2) goto L_0x0024
                com.bumptech.glide.load.b.g<R> r2 = r0.f2194a
                com.bumptech.glide.load.j r2 = r2.c(r10)
                com.bumptech.glide.e r4 = r0.e
                int r5 = r0.i
                int r6 = r0.j
                com.bumptech.glide.load.b.v r4 = r2.transform(r4, r14, r5, r6)
                r9 = r2
                r2 = r4
                goto L_0x0026
            L_0x0024:
                r2 = r14
                r9 = r3
            L_0x0026:
                boolean r4 = r14.equals(r2)
                if (r4 != 0) goto L_0x002f
                r14.recycle()
            L_0x002f:
                com.bumptech.glide.load.b.g<R> r14 = r0.f2194a
                com.bumptech.glide.e r14 = r14.f2192a
                com.bumptech.glide.f r14 = r14.getRegistry()
                boolean r14 = r14.isResourceEncoderAvailable(r2)
                if (r14 == 0) goto L_0x0050
                com.bumptech.glide.load.b.g<R> r14 = r0.f2194a
                com.bumptech.glide.e r14 = r14.f2192a
                com.bumptech.glide.f r14 = r14.getRegistry()
                com.bumptech.glide.load.i r3 = r14.getResultEncoder(r2)
                com.bumptech.glide.load.g r14 = r0.l
                com.bumptech.glide.load.EncodeStrategy r14 = r3.getEncodeStrategy(r14)
                goto L_0x0052
            L_0x0050:
                com.bumptech.glide.load.EncodeStrategy r14 = com.bumptech.glide.load.EncodeStrategy.NONE
            L_0x0052:
                r12 = r3
                com.bumptech.glide.load.b.g<R> r3 = r0.f2194a
                com.bumptech.glide.load.d r4 = r0.r
                java.util.List r3 = r3.c()
                int r5 = r3.size()
                r6 = 0
                r7 = 0
            L_0x0061:
                r8 = 1
                if (r7 >= r5) goto L_0x0077
                java.lang.Object r11 = r3.get(r7)
                com.bumptech.glide.load.c.n$a r11 = (com.bumptech.glide.load.c.n.a) r11
                com.bumptech.glide.load.d r11 = r11.sourceKey
                boolean r11 = r11.equals(r4)
                if (r11 == 0) goto L_0x0074
                r6 = 1
                goto L_0x0077
            L_0x0074:
                int r7 = r7 + 1
                goto L_0x0061
            L_0x0077:
                r3 = r6 ^ 1
                com.bumptech.glide.load.b.j r4 = r0.k
                boolean r1 = r4.isResourceCacheable(r3, r1, r14)
                if (r1 == 0) goto L_0x00dd
                if (r12 == 0) goto L_0x00cf
                int[] r1 = com.bumptech.glide.load.b.h.AnonymousClass1.c
                int r3 = r14.ordinal()
                r1 = r1[r3]
                if (r1 == r8) goto L_0x00b9
                r3 = 2
                if (r1 != r3) goto L_0x00a9
                com.bumptech.glide.load.b.x r14 = new com.bumptech.glide.load.b.x
                com.bumptech.glide.load.b.g<R> r1 = r0.f2194a
                com.bumptech.glide.e r1 = r1.f2192a
                com.bumptech.glide.load.b.a.b r4 = r1.getArrayPool()
                com.bumptech.glide.load.d r5 = r0.r
                com.bumptech.glide.load.d r6 = r0.f
                int r7 = r0.i
                int r8 = r0.j
                com.bumptech.glide.load.g r11 = r0.l
                r3 = r14
                r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11)
                goto L_0x00c2
            L_0x00a9:
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.String r14 = java.lang.String.valueOf(r14)
                java.lang.String r1 = "Unknown strategy: "
                java.lang.String r14 = r1.concat(r14)
                r0.<init>(r14)
                throw r0
            L_0x00b9:
                com.bumptech.glide.load.b.d r14 = new com.bumptech.glide.load.b.d
                com.bumptech.glide.load.d r1 = r0.r
                com.bumptech.glide.load.d r3 = r0.f
                r14.<init>(r1, r3)
            L_0x00c2:
                com.bumptech.glide.load.b.u r2 = com.bumptech.glide.load.b.u.a(r2)
                com.bumptech.glide.load.b.h$c<?> r0 = r0.c
                r0.f2200a = r14
                r0.f2201b = r12
                r0.c = r2
                goto L_0x00dd
            L_0x00cf:
                com.bumptech.glide.f$d r14 = new com.bumptech.glide.f$d
                java.lang.Object r0 = r2.get()
                java.lang.Class r0 = r0.getClass()
                r14.<init>(r0)
                throw r14
            L_0x00dd:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.b.h.b.onResourceDecoded(com.bumptech.glide.load.b.v):com.bumptech.glide.load.b.v");
        }
    }

    static class c<Z> {

        /* renamed from: a  reason: collision with root package name */
        com.bumptech.glide.load.d f2200a;

        /* renamed from: b  reason: collision with root package name */
        com.bumptech.glide.load.i<Z> f2201b;
        u<Z> c;

        c() {
        }

        /* access modifiers changed from: package-private */
        public final void a(d dVar, com.bumptech.glide.load.g gVar) {
            com.bumptech.glide.g.a.b.beginSection("DecodeJob.encode");
            try {
                dVar.getDiskCache().put(this.f2200a, new e(this.f2201b, this.c, gVar));
            } finally {
                this.c.a();
                com.bumptech.glide.g.a.b.endSection();
            }
        }

        /* access modifiers changed from: package-private */
        public final boolean a() {
            return this.c != null;
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            this.f2200a = null;
            this.f2201b = null;
            this.c = null;
        }
    }

    interface d {
        com.bumptech.glide.load.b.b.a getDiskCache();
    }

    static class e {

        /* renamed from: a  reason: collision with root package name */
        private boolean f2202a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f2203b;
        private boolean c;

        e() {
        }

        /* access modifiers changed from: package-private */
        public final synchronized boolean a() {
            this.f2202a = true;
            return e();
        }

        /* access modifiers changed from: package-private */
        public final synchronized boolean b() {
            this.f2203b = true;
            return e();
        }

        /* access modifiers changed from: package-private */
        public final synchronized boolean c() {
            this.c = true;
            return e();
        }

        /* access modifiers changed from: package-private */
        public final synchronized void d() {
            this.f2203b = false;
            this.f2202a = false;
            this.c = false;
        }

        private boolean e() {
            return (this.c || this.f2203b) && this.f2202a;
        }
    }

    enum f {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    enum g {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    h(d dVar, Pools.Pool<h<?>> pool) {
        this.f2195b = dVar;
        this.u = pool;
    }

    private void b() {
        if (this.d.b()) {
            a();
        }
    }

    private void c() {
        if (this.d.c()) {
            a();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.d.d();
        this.c.b();
        this.f2194a.a();
        this.D = false;
        this.e = null;
        this.f = null;
        this.l = null;
        this.g = null;
        this.h = null;
        this.m = null;
        this.v = null;
        this.C = null;
        this.x = null;
        this.r = null;
        this.z = null;
        this.A = null;
        this.B = null;
        this.w = 0;
        this.E = false;
        this.q = null;
        this.s.clear();
        this.u.release(this);
    }

    public final void cancel() {
        this.E = true;
        f fVar = this.C;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    public final void run() {
        com.bumptech.glide.g.a.b.beginSectionFormat("DecodeJob#run(model=%s)", this.q);
        com.bumptech.glide.load.a.d<?> dVar = this.B;
        try {
            if (this.E) {
                f();
                if (dVar != null) {
                    dVar.cleanup();
                }
                com.bumptech.glide.g.a.b.endSection();
                return;
            }
            int i2 = AnonymousClass1.f2196a[this.o.ordinal()];
            if (i2 == 1) {
                this.v = a(g.INITIALIZE);
                this.C = d();
                e();
            } else if (i2 == 2) {
                e();
            } else if (i2 == 3) {
                h();
            } else {
                throw new IllegalStateException("Unrecognized run reason: " + this.o);
            }
            if (dVar != null) {
                dVar.cleanup();
            }
            com.bumptech.glide.g.a.b.endSection();
        } catch (b e2) {
            throw e2;
        } catch (Throwable th) {
            if (dVar != null) {
                dVar.cleanup();
            }
            com.bumptech.glide.g.a.b.endSection();
            throw th;
        }
    }

    private f d() {
        int i2 = AnonymousClass1.f2197b[this.v.ordinal()];
        if (i2 == 1) {
            return new w(this.f2194a, this);
        }
        if (i2 == 2) {
            return new c(this.f2194a, this);
        }
        if (i2 == 3) {
            return new z(this.f2194a, this);
        }
        if (i2 == 4) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: " + this.v);
    }

    private void e() {
        this.x = Thread.currentThread();
        this.w = com.bumptech.glide.g.f.getLogTime();
        boolean z2 = false;
        while (!this.E && this.C != null) {
            z2 = this.C.startNext();
            if (z2) {
                break;
            }
            this.v = a(this.v);
            this.C = d();
            if (this.v == g.SOURCE) {
                reschedule();
                return;
            }
        }
        if ((this.v == g.FINISHED || this.E) && !z2) {
            f();
        }
    }

    private void f() {
        g();
        this.m.onLoadFailed(new q("Failed to load resource", (List<Throwable>) new ArrayList(this.s)));
        c();
    }

    private void a(v<R> vVar, DataSource dataSource) {
        g();
        this.m.onResourceReady(vVar, dataSource);
    }

    private void g() {
        Throwable th;
        this.t.throwIfRecycled();
        if (this.D) {
            if (this.s.isEmpty()) {
                th = null;
            } else {
                List<Throwable> list = this.s;
                th = list.get(list.size() - 1);
            }
            throw new IllegalStateException("Already notified", th);
        }
        this.D = true;
    }

    /* access modifiers changed from: package-private */
    public final g a(g gVar) {
        while (true) {
            int i2 = AnonymousClass1.f2197b[gVar.ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    return this.p ? g.FINISHED : g.SOURCE;
                }
                if (i2 != 3 && i2 != 4) {
                    if (i2 != 5) {
                        throw new IllegalArgumentException("Unrecognized stage: ".concat(String.valueOf(gVar)));
                    } else if (this.k.decodeCachedResource()) {
                        return g.RESOURCE_CACHE;
                    } else {
                        gVar = g.RESOURCE_CACHE;
                    }
                }
            } else if (this.k.decodeCachedData()) {
                return g.DATA_CACHE;
            } else {
                gVar = g.DATA_CACHE;
            }
        }
        return g.FINISHED;
    }

    public final void reschedule() {
        this.o = f.SWITCH_TO_SOURCE_SERVICE;
        this.m.reschedule(this);
    }

    public final void onDataFetcherReady(com.bumptech.glide.load.d dVar, Object obj, com.bumptech.glide.load.a.d<?> dVar2, DataSource dataSource, com.bumptech.glide.load.d dVar3) {
        this.r = dVar;
        this.z = obj;
        this.B = dVar2;
        this.A = dataSource;
        this.y = dVar3;
        if (Thread.currentThread() != this.x) {
            this.o = f.DECODE_DATA;
            this.m.reschedule(this);
            return;
        }
        com.bumptech.glide.g.a.b.beginSection("DecodeJob.decodeFromRetrievedData");
        try {
            h();
        } finally {
            com.bumptech.glide.g.a.b.endSection();
        }
    }

    public final void onDataFetcherFailed(com.bumptech.glide.load.d dVar, Exception exc, com.bumptech.glide.load.a.d<?> dVar2, DataSource dataSource) {
        dVar2.cleanup();
        q qVar = new q("Fetching data failed", (Throwable) exc);
        qVar.a(dVar, dataSource, dVar2.getDataClass());
        this.s.add(qVar);
        if (Thread.currentThread() != this.x) {
            this.o = f.SWITCH_TO_SOURCE_SERVICE;
            this.m.reschedule(this);
            return;
        }
        e();
    }

    private void h() {
        if (Log.isLoggable("DecodeJob", 2)) {
            long j2 = this.w;
            a("Retrieved data", j2, "data: " + this.z + ", cache key: " + this.r + ", fetcher: " + this.B);
        }
        v<R> vVar = null;
        try {
            vVar = a(this.B, this.z, this.A);
        } catch (q e2) {
            e2.a(this.y, this.A, null);
            this.s.add(e2);
        }
        if (vVar != null) {
            b(vVar, this.A);
        } else {
            e();
        }
    }

    private void b(v<R> vVar, DataSource dataSource) {
        if (vVar instanceof r) {
            ((r) vVar).initialize();
        }
        u<R> uVar = null;
        u<R> uVar2 = vVar;
        if (this.c.a()) {
            u<R> a2 = u.a(vVar);
            uVar = a2;
            uVar2 = a2;
        }
        a(uVar2, dataSource);
        this.v = g.ENCODE;
        try {
            if (this.c.a()) {
                this.c.a(this.f2195b, this.l);
            }
            b();
        } finally {
            if (uVar != null) {
                uVar.a();
            }
        }
    }

    private <Data> v<R> a(com.bumptech.glide.load.a.d<?> dVar, Data data, DataSource dataSource) throws q {
        if (data == null) {
            dVar.cleanup();
            return null;
        }
        try {
            long logTime = com.bumptech.glide.g.f.getLogTime();
            v<R> a2 = a(data, dataSource, this.f2194a.b(data.getClass()));
            if (Log.isLoggable("DecodeJob", 2)) {
                a("Decoded result ".concat(String.valueOf(a2)), logTime, (String) null);
            }
            return a2;
        } finally {
            dVar.cleanup();
        }
    }

    private void a(String str, long j2, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(com.bumptech.glide.g.f.getElapsedMillis(j2));
        sb.append(", load key: ");
        sb.append(this.h);
        sb.append(str2 != null ? ", ".concat(String.valueOf(str2)) : "");
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
    }

    public final com.bumptech.glide.g.a.c getVerifier() {
        return this.t;
    }

    public final int compareTo(h<?> hVar) {
        int ordinal = this.g.ordinal() - hVar.g.ordinal();
        return ordinal == 0 ? this.n - hVar.n : ordinal;
    }

    private <Data, ResourceType> v<R> a(Data data, DataSource dataSource, t<Data, ResourceType, R> tVar) throws q {
        com.bumptech.glide.load.g gVar = this.l;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z2 = dataSource == DataSource.RESOURCE_DISK_CACHE || this.f2194a.n;
            Boolean bool = (Boolean) gVar.get(k.ALLOW_HARDWARE_CONFIG);
            if (bool == null || (bool.booleanValue() && !z2)) {
                gVar = new com.bumptech.glide.load.g();
                gVar.putAll(this.l);
                gVar.set(k.ALLOW_HARDWARE_CONFIG, Boolean.valueOf(z2));
            }
        }
        com.bumptech.glide.load.g gVar2 = gVar;
        com.bumptech.glide.load.a.e rewinder = this.e.getRegistry().getRewinder(data);
        try {
            return tVar.load(rewinder, gVar2, this.i, this.j, new b(dataSource));
        } finally {
            rewinder.cleanup();
        }
    }
}
