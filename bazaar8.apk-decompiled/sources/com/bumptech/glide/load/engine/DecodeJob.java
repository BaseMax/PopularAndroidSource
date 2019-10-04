package com.bumptech.glide.load.engine;

import android.os.Build;
import android.util.Log;
import c.b.a.c.b.A;
import c.b.a.c.b.C;
import c.b.a.c.b.C0361d;
import c.b.a.c.b.C0363f;
import c.b.a.c.b.C0364g;
import c.b.a.c.b.C0365h;
import c.b.a.c.b.D;
import c.b.a.c.b.E;
import c.b.a.c.b.H;
import c.b.a.c.b.j;
import c.b.a.c.b.p;
import c.b.a.c.b.v;
import c.b.a.c.b.y;
import c.b.a.c.d.a.k;
import c.b.a.c.f;
import c.b.a.c.h;
import c.b.a.c.i;
import c.b.a.i.a.d;
import c.b.a.i.a.g;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class DecodeJob<R> implements C0364g.a, Runnable, Comparable<DecodeJob<?>>, d.c {
    public DataSource A;
    public c.b.a.c.a.d<?> B;
    public volatile C0364g C;
    public volatile boolean D;
    public volatile boolean E;

    /* renamed from: a  reason: collision with root package name */
    public final C0365h<R> f12047a = new C0365h<>();

    /* renamed from: b  reason: collision with root package name */
    public final List<Throwable> f12048b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public final g f12049c = g.a();

    /* renamed from: d  reason: collision with root package name */
    public final d f12050d;

    /* renamed from: e  reason: collision with root package name */
    public final b.i.j.e<DecodeJob<?>> f12051e;

    /* renamed from: f  reason: collision with root package name */
    public final c<?> f12052f = new c<>();

    /* renamed from: g  reason: collision with root package name */
    public final e f12053g = new e();

    /* renamed from: h  reason: collision with root package name */
    public c.b.a.g f12054h;

    /* renamed from: i  reason: collision with root package name */
    public c.b.a.c.c f12055i;

    /* renamed from: j  reason: collision with root package name */
    public Priority f12056j;

    /* renamed from: k  reason: collision with root package name */
    public v f12057k;

    /* renamed from: l  reason: collision with root package name */
    public int f12058l;
    public int m;
    public p n;
    public f o;
    public a<R> p;
    public int q;
    public Stage r;
    public RunReason s;
    public long t;
    public boolean u;
    public Object v;
    public Thread w;
    public c.b.a.c.c x;
    public c.b.a.c.c y;
    public Object z;

    private enum RunReason {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    private enum Stage {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    interface a<R> {
        void a(D<R> d2, DataSource dataSource);

        void a(DecodeJob<?> decodeJob);

        void a(GlideException glideException);
    }

    private final class b<Z> implements j.a<Z> {

        /* renamed from: a  reason: collision with root package name */
        public final DataSource f12061a;

        public b(DataSource dataSource) {
            this.f12061a = dataSource;
        }

        public D<Z> a(D<Z> d2) {
            return DecodeJob.this.a(this.f12061a, d2);
        }
    }

    private static class c<Z> {

        /* renamed from: a  reason: collision with root package name */
        public c.b.a.c.c f12063a;

        /* renamed from: b  reason: collision with root package name */
        public h<Z> f12064b;

        /* renamed from: c  reason: collision with root package name */
        public C<Z> f12065c;

        public <X> void a(c.b.a.c.c cVar, h<X> hVar, C<X> c2) {
            this.f12063a = cVar;
            this.f12064b = hVar;
            this.f12065c = c2;
        }

        public boolean b() {
            return this.f12065c != null;
        }

        public void a(d dVar, f fVar) {
            c.b.a.i.a.e.a("DecodeJob.encode");
            try {
                dVar.a().a(this.f12063a, new C0363f(this.f12064b, this.f12065c, fVar));
            } finally {
                this.f12065c.e();
                c.b.a.i.a.e.a();
            }
        }

        public void a() {
            this.f12063a = null;
            this.f12064b = null;
            this.f12065c = null;
        }
    }

    interface d {
        c.b.a.c.b.b.a a();
    }

    private static class e {

        /* renamed from: a  reason: collision with root package name */
        public boolean f12066a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f12067b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f12068c;

        public synchronized boolean a() {
            this.f12067b = true;
            return a(false);
        }

        public synchronized boolean b(boolean z) {
            this.f12066a = true;
            return a(z);
        }

        public synchronized void c() {
            this.f12067b = false;
            this.f12066a = false;
            this.f12068c = false;
        }

        public final boolean a(boolean z) {
            return (this.f12068c || z || this.f12067b) && this.f12066a;
        }

        public synchronized boolean b() {
            this.f12068c = true;
            return a(false);
        }
    }

    public DecodeJob(d dVar, b.i.j.e<DecodeJob<?>> eVar) {
        this.f12050d = dVar;
        this.f12051e = eVar;
    }

    public DecodeJob<R> a(c.b.a.g gVar, Object obj, v vVar, c.b.a.c.c cVar, int i2, int i3, Class<?> cls, Class<R> cls2, Priority priority, p pVar, Map<Class<?>, i<?>> map, boolean z2, boolean z3, boolean z4, f fVar, a<R> aVar, int i4) {
        this.f12047a.a(gVar, obj, cVar, i2, i3, pVar, cls, cls2, priority, fVar, map, z2, z3, this.f12050d);
        this.f12054h = gVar;
        this.f12055i = cVar;
        this.f12056j = priority;
        this.f12057k = vVar;
        this.f12058l = i2;
        this.m = i3;
        this.n = pVar;
        this.u = z4;
        this.o = fVar;
        this.p = aVar;
        this.q = i4;
        this.s = RunReason.INITIALIZE;
        this.v = obj;
        return this;
    }

    public final void b(D<R> d2, DataSource dataSource) {
        if (d2 instanceof y) {
            ((y) d2).d();
        }
        C<R> c2 = null;
        C<R> c3 = d2;
        if (this.f12052f.b()) {
            C<R> b2 = C.b(d2);
            c2 = b2;
            c3 = b2;
        }
        a(c3, dataSource);
        this.r = Stage.ENCODE;
        try {
            if (this.f12052f.b()) {
                this.f12052f.a(this.f12050d, this.o);
            }
            l();
        } finally {
            if (c2 != null) {
                c2.e();
            }
        }
    }

    public g f() {
        return this.f12049c;
    }

    public void g() {
        this.s = RunReason.SWITCH_TO_SOURCE_SERVICE;
        this.p.a((DecodeJob<?>) this);
    }

    public final int getPriority() {
        return this.f12056j.ordinal();
    }

    public void h() {
        this.E = true;
        C0364g gVar = this.C;
        if (gVar != null) {
            gVar.cancel();
        }
    }

    public final void i() {
        if (Log.isLoggable("DecodeJob", 2)) {
            long j2 = this.t;
            a("Retrieved data", j2, "data: " + this.z + ", cache key: " + this.x + ", fetcher: " + this.B);
        }
        D<R> d2 = null;
        try {
            d2 = a(this.B, this.z, this.A);
        } catch (GlideException e2) {
            e2.a(this.y, this.A);
            this.f12048b.add(e2);
        }
        if (d2 != null) {
            b(d2, this.A);
        } else {
            o();
        }
    }

    public final C0364g j() {
        int i2 = i.f3980b[this.r.ordinal()];
        if (i2 == 1) {
            return new E(this.f12047a, this);
        }
        if (i2 == 2) {
            return new C0361d(this.f12047a, this);
        }
        if (i2 == 3) {
            return new H(this.f12047a, this);
        }
        if (i2 == 4) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: " + this.r);
    }

    public final void k() {
        q();
        this.p.a(new GlideException("Failed to load resource", (List<Throwable>) new ArrayList(this.f12048b)));
        m();
    }

    public final void l() {
        if (this.f12053g.a()) {
            n();
        }
    }

    public final void m() {
        if (this.f12053g.b()) {
            n();
        }
    }

    public final void n() {
        this.f12053g.c();
        this.f12052f.a();
        this.f12047a.a();
        this.D = false;
        this.f12054h = null;
        this.f12055i = null;
        this.o = null;
        this.f12056j = null;
        this.f12057k = null;
        this.p = null;
        this.r = null;
        this.C = null;
        this.w = null;
        this.x = null;
        this.z = null;
        this.A = null;
        this.B = null;
        this.t = 0;
        this.E = false;
        this.v = null;
        this.f12048b.clear();
        this.f12051e.a(this);
    }

    public final void o() {
        this.w = Thread.currentThread();
        this.t = c.b.a.i.e.a();
        boolean z2 = false;
        while (!this.E && this.C != null) {
            z2 = this.C.a();
            if (z2) {
                break;
            }
            this.r = a(this.r);
            this.C = j();
            if (this.r == Stage.SOURCE) {
                g();
                return;
            }
        }
        if ((this.r == Stage.FINISHED || this.E) && !z2) {
            k();
        }
    }

    public final void p() {
        int i2 = i.f3979a[this.s.ordinal()];
        if (i2 == 1) {
            this.r = a(Stage.INITIALIZE);
            this.C = j();
            o();
        } else if (i2 == 2) {
            o();
        } else if (i2 == 3) {
            i();
        } else {
            throw new IllegalStateException("Unrecognized run reason: " + this.s);
        }
    }

    public final void q() {
        this.f12049c.b();
        if (!this.D) {
            this.D = true;
            return;
        }
        throw new IllegalStateException("Already notified");
    }

    public boolean r() {
        Stage a2 = a(Stage.INITIALIZE);
        return a2 == Stage.RESOURCE_CACHE || a2 == Stage.DATA_CACHE;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001e, code lost:
        if (r1 != null) goto L_0x0020;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r5 = this;
            java.lang.String r0 = "DecodeJob"
            java.lang.Object r1 = r5.v
            java.lang.String r2 = "DecodeJob#run(model=%s)"
            c.b.a.i.a.e.a(r2, r1)
            c.b.a.c.a.d<?> r1 = r5.B
            boolean r2 = r5.E     // Catch:{ Throwable -> 0x0029 }
            if (r2 == 0) goto L_0x001b
            r5.k()     // Catch:{ Throwable -> 0x0029 }
            if (r1 == 0) goto L_0x0017
            r1.b()
        L_0x0017:
            c.b.a.i.a.e.a()
            return
        L_0x001b:
            r5.p()     // Catch:{ Throwable -> 0x0029 }
            if (r1 == 0) goto L_0x0023
        L_0x0020:
            r1.b()
        L_0x0023:
            c.b.a.i.a.e.a()
            goto L_0x0066
        L_0x0027:
            r0 = move-exception
            goto L_0x0068
        L_0x0029:
            r2 = move-exception
            r3 = 3
            boolean r3 = android.util.Log.isLoggable(r0, r3)     // Catch:{ all -> 0x0027 }
            if (r3 == 0) goto L_0x0051
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0027 }
            r3.<init>()     // Catch:{ all -> 0x0027 }
            java.lang.String r4 = "DecodeJob threw unexpectedly, isCancelled: "
            r3.append(r4)     // Catch:{ all -> 0x0027 }
            boolean r4 = r5.E     // Catch:{ all -> 0x0027 }
            r3.append(r4)     // Catch:{ all -> 0x0027 }
            java.lang.String r4 = ", stage: "
            r3.append(r4)     // Catch:{ all -> 0x0027 }
            com.bumptech.glide.load.engine.DecodeJob$Stage r4 = r5.r     // Catch:{ all -> 0x0027 }
            r3.append(r4)     // Catch:{ all -> 0x0027 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x0027 }
            android.util.Log.d(r0, r3, r2)     // Catch:{ all -> 0x0027 }
        L_0x0051:
            com.bumptech.glide.load.engine.DecodeJob$Stage r0 = r5.r     // Catch:{ all -> 0x0027 }
            com.bumptech.glide.load.engine.DecodeJob$Stage r3 = com.bumptech.glide.load.engine.DecodeJob.Stage.ENCODE     // Catch:{ all -> 0x0027 }
            if (r0 == r3) goto L_0x005f
            java.util.List<java.lang.Throwable> r0 = r5.f12048b     // Catch:{ all -> 0x0027 }
            r0.add(r2)     // Catch:{ all -> 0x0027 }
            r5.k()     // Catch:{ all -> 0x0027 }
        L_0x005f:
            boolean r0 = r5.E     // Catch:{ all -> 0x0027 }
            if (r0 == 0) goto L_0x0067
            if (r1 == 0) goto L_0x0023
            goto L_0x0020
        L_0x0066:
            return
        L_0x0067:
            throw r2     // Catch:{ all -> 0x0027 }
        L_0x0068:
            if (r1 == 0) goto L_0x006d
            r1.b()
        L_0x006d:
            c.b.a.i.a.e.a()
            goto L_0x0072
        L_0x0071:
            throw r0
        L_0x0072:
            goto L_0x0071
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.DecodeJob.run():void");
    }

    public void a(boolean z2) {
        if (this.f12053g.b(z2)) {
            n();
        }
    }

    /* renamed from: a */
    public int compareTo(DecodeJob<?> decodeJob) {
        int priority = getPriority() - decodeJob.getPriority();
        return priority == 0 ? this.q - decodeJob.q : priority;
    }

    public final void a(D<R> d2, DataSource dataSource) {
        q();
        this.p.a(d2, dataSource);
    }

    public final Stage a(Stage stage) {
        int i2 = i.f3980b[stage.ordinal()];
        if (i2 == 1) {
            return this.n.a() ? Stage.DATA_CACHE : a(Stage.DATA_CACHE);
        } else if (i2 == 2) {
            return this.u ? Stage.FINISHED : Stage.SOURCE;
        } else if (i2 == 3 || i2 == 4) {
            return Stage.FINISHED;
        } else {
            if (i2 == 5) {
                return this.n.b() ? Stage.RESOURCE_CACHE : a(Stage.RESOURCE_CACHE);
            }
            throw new IllegalArgumentException("Unrecognized stage: " + stage);
        }
    }

    public void a(c.b.a.c.c cVar, Object obj, c.b.a.c.a.d<?> dVar, DataSource dataSource, c.b.a.c.c cVar2) {
        this.x = cVar;
        this.z = obj;
        this.B = dVar;
        this.A = dataSource;
        this.y = cVar2;
        if (Thread.currentThread() != this.w) {
            this.s = RunReason.DECODE_DATA;
            this.p.a((DecodeJob<?>) this);
            return;
        }
        c.b.a.i.a.e.a("DecodeJob.decodeFromRetrievedData");
        try {
            i();
        } finally {
            c.b.a.i.a.e.a();
        }
    }

    public void a(c.b.a.c.c cVar, Exception exc, c.b.a.c.a.d<?> dVar, DataSource dataSource) {
        dVar.b();
        GlideException glideException = new GlideException("Fetching data failed", (Throwable) exc);
        glideException.a(cVar, dataSource, dVar.a());
        this.f12048b.add(glideException);
        if (Thread.currentThread() != this.w) {
            this.s = RunReason.SWITCH_TO_SOURCE_SERVICE;
            this.p.a((DecodeJob<?>) this);
            return;
        }
        o();
    }

    public final <Data> D<R> a(c.b.a.c.a.d<?> dVar, Data data, DataSource dataSource) {
        if (data == null) {
            dVar.b();
            return null;
        }
        try {
            long a2 = c.b.a.i.e.a();
            D<R> a3 = a(data, dataSource);
            if (Log.isLoggable("DecodeJob", 2)) {
                a("Decoded result " + a3, a2);
            }
            return a3;
        } finally {
            dVar.b();
        }
    }

    public final <Data> D<R> a(Data data, DataSource dataSource) {
        return a(data, dataSource, this.f12047a.a(data.getClass()));
    }

    public final f a(DataSource dataSource) {
        f fVar = this.o;
        if (Build.VERSION.SDK_INT < 26) {
            return fVar;
        }
        boolean z2 = dataSource == DataSource.RESOURCE_DISK_CACHE || this.f12047a.n();
        Boolean bool = (Boolean) fVar.a(k.f4170d);
        if (bool != null && (!bool.booleanValue() || z2)) {
            return fVar;
        }
        f fVar2 = new f();
        fVar2.a(this.o);
        fVar2.a(k.f4170d, Boolean.valueOf(z2));
        return fVar2;
    }

    public final <Data, ResourceType> D<R> a(Data data, DataSource dataSource, A<Data, ResourceType, R> a2) {
        f a3 = a(dataSource);
        c.b.a.c.a.e b2 = this.f12054h.f().b(data);
        try {
            return a2.a(b2, a3, this.f12058l, this.m, new b(dataSource));
        } finally {
            b2.b();
        }
    }

    public final void a(String str, long j2) {
        a(str, j2, (String) null);
    }

    public final void a(String str, long j2, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(c.b.a.i.e.a(j2));
        sb.append(", load key: ");
        sb.append(this.f12057k);
        if (str2 != null) {
            str3 = ", " + str2;
        } else {
            str3 = "";
        }
        sb.append(str3);
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
        Log.v("DecodeJob", sb.toString());
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v5, resolved type: c.b.a.c.b.F} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v6, resolved type: c.b.a.c.b.e} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v9, resolved type: c.b.a.c.b.F} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v11, resolved type: c.b.a.c.b.F} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <Z> c.b.a.c.b.D<Z> a(com.bumptech.glide.load.DataSource r12, c.b.a.c.b.D<Z> r13) {
        /*
            r11 = this;
            java.lang.Object r0 = r13.get()
            java.lang.Class r8 = r0.getClass()
            com.bumptech.glide.load.DataSource r0 = com.bumptech.glide.load.DataSource.RESOURCE_DISK_CACHE
            r1 = 0
            if (r12 == r0) goto L_0x0020
            c.b.a.c.b.h<R> r0 = r11.f12047a
            c.b.a.c.i r0 = r0.b(r8)
            c.b.a.g r2 = r11.f12054h
            int r3 = r11.f12058l
            int r4 = r11.m
            c.b.a.c.b.D r2 = r0.a(r2, r13, r3, r4)
            r7 = r0
            r0 = r2
            goto L_0x0022
        L_0x0020:
            r0 = r13
            r7 = r1
        L_0x0022:
            boolean r2 = r13.equals(r0)
            if (r2 != 0) goto L_0x002b
            r13.a()
        L_0x002b:
            c.b.a.c.b.h<R> r13 = r11.f12047a
            boolean r13 = r13.b((c.b.a.c.b.D<?>) r0)
            if (r13 == 0) goto L_0x0040
            c.b.a.c.b.h<R> r13 = r11.f12047a
            c.b.a.c.h r1 = r13.a(r0)
            c.b.a.c.f r13 = r11.o
            com.bumptech.glide.load.EncodeStrategy r13 = r1.a(r13)
            goto L_0x0042
        L_0x0040:
            com.bumptech.glide.load.EncodeStrategy r13 = com.bumptech.glide.load.EncodeStrategy.NONE
        L_0x0042:
            r10 = r1
            c.b.a.c.b.h<R> r1 = r11.f12047a
            c.b.a.c.c r2 = r11.x
            boolean r1 = r1.a((c.b.a.c.c) r2)
            r2 = 1
            r1 = r1 ^ r2
            c.b.a.c.b.p r3 = r11.n
            boolean r12 = r3.a(r1, r12, r13)
            if (r12 == 0) goto L_0x00b3
            if (r10 == 0) goto L_0x00a5
            int[] r12 = c.b.a.c.b.i.f3981c
            int r1 = r13.ordinal()
            r12 = r12[r1]
            if (r12 == r2) goto L_0x0092
            r1 = 2
            if (r12 != r1) goto L_0x007b
            c.b.a.c.b.F r12 = new c.b.a.c.b.F
            c.b.a.c.b.h<R> r13 = r11.f12047a
            c.b.a.c.b.a.b r2 = r13.b()
            c.b.a.c.c r3 = r11.x
            c.b.a.c.c r4 = r11.f12055i
            int r5 = r11.f12058l
            int r6 = r11.m
            c.b.a.c.f r9 = r11.o
            r1 = r12
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            goto L_0x009b
        L_0x007b:
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Unknown strategy: "
            r0.append(r1)
            r0.append(r13)
            java.lang.String r13 = r0.toString()
            r12.<init>(r13)
            throw r12
        L_0x0092:
            c.b.a.c.b.e r12 = new c.b.a.c.b.e
            c.b.a.c.c r13 = r11.x
            c.b.a.c.c r1 = r11.f12055i
            r12.<init>(r13, r1)
        L_0x009b:
            c.b.a.c.b.C r0 = c.b.a.c.b.C.b(r0)
            com.bumptech.glide.load.engine.DecodeJob$c<?> r13 = r11.f12052f
            r13.a(r12, r10, r0)
            goto L_0x00b3
        L_0x00a5:
            com.bumptech.glide.Registry$NoResultEncoderAvailableException r12 = new com.bumptech.glide.Registry$NoResultEncoderAvailableException
            java.lang.Object r13 = r0.get()
            java.lang.Class r13 = r13.getClass()
            r12.<init>(r13)
            throw r12
        L_0x00b3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.DecodeJob.a(com.bumptech.glide.load.DataSource, c.b.a.c.b.D):c.b.a.c.b.D");
    }
}
