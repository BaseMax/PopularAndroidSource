package com.bumptech.glide.request;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import b.i.j.e;
import c.b.a.c.b.D;
import c.b.a.c.b.r;
import c.b.a.c.d.c.a;
import c.b.a.g.a.g;
import c.b.a.g.c;
import c.b.a.g.f;
import c.b.a.g.h;
import c.b.a.i.a.d;
import c.b.a.i.k;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import java.util.List;

public final class SingleRequest<R> implements c, g, h, d.c {

    /* renamed from: a  reason: collision with root package name */
    public static final e<SingleRequest<?>> f12087a = d.a(150, new i());

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f12088b = Log.isLoggable("Request", 2);
    public int A;
    public int B;

    /* renamed from: c  reason: collision with root package name */
    public boolean f12089c;

    /* renamed from: d  reason: collision with root package name */
    public final String f12090d;

    /* renamed from: e  reason: collision with root package name */
    public final c.b.a.i.a.g f12091e;

    /* renamed from: f  reason: collision with root package name */
    public f<R> f12092f;

    /* renamed from: g  reason: collision with root package name */
    public c.b.a.g.d f12093g;

    /* renamed from: h  reason: collision with root package name */
    public Context f12094h;

    /* renamed from: i  reason: collision with root package name */
    public c.b.a.g f12095i;

    /* renamed from: j  reason: collision with root package name */
    public Object f12096j;

    /* renamed from: k  reason: collision with root package name */
    public Class<R> f12097k;

    /* renamed from: l  reason: collision with root package name */
    public c.b.a.g.g f12098l;
    public int m;
    public int n;
    public Priority o;
    public c.b.a.g.a.h<R> p;
    public List<f<R>> q;
    public r r;
    public c.b.a.g.b.c<? super R> s;
    public D<R> t;
    public r.d u;
    public long v;
    public Status w;
    public Drawable x;
    public Drawable y;
    public Drawable z;

    private enum Status {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    public SingleRequest() {
        this.f12090d = f12088b ? String.valueOf(super.hashCode()) : null;
        this.f12091e = c.b.a.i.a.g.a();
    }

    public static <R> SingleRequest<R> b(Context context, c.b.a.g gVar, Object obj, Class<R> cls, c.b.a.g.g gVar2, int i2, int i3, Priority priority, c.b.a.g.a.h<R> hVar, f<R> fVar, List<f<R>> list, c.b.a.g.d dVar, r rVar, c.b.a.g.b.c<? super R> cVar) {
        SingleRequest<R> a2 = f12087a.a();
        if (a2 == null) {
            a2 = new SingleRequest<>();
        }
        a2.a(context, gVar, obj, cls, gVar2, i2, i3, priority, hVar, fVar, list, dVar, rVar, cVar);
        return a2;
    }

    public final void a(Context context, c.b.a.g gVar, Object obj, Class<R> cls, c.b.a.g.g gVar2, int i2, int i3, Priority priority, c.b.a.g.a.h<R> hVar, f<R> fVar, List<f<R>> list, c.b.a.g.d dVar, r rVar, c.b.a.g.b.c<? super R> cVar) {
        this.f12094h = context;
        this.f12095i = gVar;
        this.f12096j = obj;
        this.f12097k = cls;
        this.f12098l = gVar2;
        this.m = i2;
        this.n = i3;
        this.o = priority;
        this.p = hVar;
        this.f12092f = fVar;
        this.q = list;
        this.f12093g = dVar;
        this.r = rVar;
        this.s = cVar;
        this.w = Status.PENDING;
    }

    public boolean c() {
        return this.w == Status.FAILED;
    }

    public void clear() {
        k.b();
        g();
        this.f12091e.b();
        if (this.w != Status.CLEARED) {
            k();
            D<R> d2 = this.t;
            if (d2 != null) {
                a((D<?>) d2);
            }
            if (h()) {
                this.p.c(n());
            }
            this.w = Status.CLEARED;
        }
    }

    public boolean d() {
        return this.w == Status.CLEARED;
    }

    public void e() {
        g();
        this.f12091e.b();
        this.v = c.b.a.i.e.a();
        if (this.f12096j == null) {
            if (k.b(this.m, this.n)) {
                this.A = this.m;
                this.B = this.n;
            }
            a(new GlideException("Received null model"), m() == null ? 5 : 3);
            return;
        }
        Status status = this.w;
        if (status == Status.RUNNING) {
            throw new IllegalArgumentException("Cannot restart a running request");
        } else if (status == Status.COMPLETE) {
            a((D<?>) this.t, DataSource.MEMORY_CACHE);
        } else {
            this.w = Status.WAITING_FOR_SIZE;
            if (k.b(this.m, this.n)) {
                a(this.m, this.n);
            } else {
                this.p.b((g) this);
            }
            Status status2 = this.w;
            if ((status2 == Status.RUNNING || status2 == Status.WAITING_FOR_SIZE) && i()) {
                this.p.b(n());
            }
            if (f12088b) {
                a("finished run method in " + c.b.a.i.e.a(this.v));
            }
        }
    }

    public c.b.a.i.a.g f() {
        return this.f12091e;
    }

    public final void g() {
        if (this.f12089c) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    public final boolean h() {
        c.b.a.g.d dVar = this.f12093g;
        return dVar == null || dVar.f(this);
    }

    public final boolean i() {
        c.b.a.g.d dVar = this.f12093g;
        return dVar == null || dVar.c(this);
    }

    public boolean isComplete() {
        return this.w == Status.COMPLETE;
    }

    public boolean isRunning() {
        Status status = this.w;
        return status == Status.RUNNING || status == Status.WAITING_FOR_SIZE;
    }

    public final boolean j() {
        c.b.a.g.d dVar = this.f12093g;
        return dVar == null || dVar.d(this);
    }

    public final void k() {
        g();
        this.f12091e.b();
        this.p.a((g) this);
        r.d dVar = this.u;
        if (dVar != null) {
            dVar.a();
            this.u = null;
        }
    }

    public final Drawable l() {
        if (this.x == null) {
            this.x = this.f12098l.d();
            if (this.x == null && this.f12098l.c() > 0) {
                this.x = a(this.f12098l.c());
            }
        }
        return this.x;
    }

    public final Drawable m() {
        if (this.z == null) {
            this.z = this.f12098l.e();
            if (this.z == null && this.f12098l.f() > 0) {
                this.z = a(this.f12098l.f());
            }
        }
        return this.z;
    }

    public final Drawable n() {
        if (this.y == null) {
            this.y = this.f12098l.k();
            if (this.y == null && this.f12098l.p() > 0) {
                this.y = a(this.f12098l.p());
            }
        }
        return this.y;
    }

    public final boolean o() {
        c.b.a.g.d dVar = this.f12093g;
        return dVar == null || !dVar.f();
    }

    public final void p() {
        c.b.a.g.d dVar = this.f12093g;
        if (dVar != null) {
            dVar.b(this);
        }
    }

    public final void q() {
        c.b.a.g.d dVar = this.f12093g;
        if (dVar != null) {
            dVar.e(this);
        }
    }

    public final void r() {
        if (i()) {
            Drawable drawable = null;
            if (this.f12096j == null) {
                drawable = m();
            }
            if (drawable == null) {
                drawable = l();
            }
            if (drawable == null) {
                drawable = n();
            }
            this.p.a(drawable);
        }
    }

    public boolean b() {
        return isComplete();
    }

    public void a() {
        g();
        this.f12094h = null;
        this.f12095i = null;
        this.f12096j = null;
        this.f12097k = null;
        this.f12098l = null;
        this.m = -1;
        this.n = -1;
        this.p = null;
        this.q = null;
        this.f12092f = null;
        this.f12093g = null;
        this.s = null;
        this.u = null;
        this.x = null;
        this.y = null;
        this.z = null;
        this.A = -1;
        this.B = -1;
        f12087a.a(this);
    }

    public final void a(D<?> d2) {
        this.r.b(d2);
        this.t = null;
    }

    public final Drawable a(int i2) {
        return a.a((Context) this.f12095i, i2, this.f12098l.u() != null ? this.f12098l.u() : this.f12094h.getTheme());
    }

    public void a(int i2, int i3) {
        this.f12091e.b();
        if (f12088b) {
            a("Got onSizeReady in " + c.b.a.i.e.a(this.v));
        }
        if (this.w == Status.WAITING_FOR_SIZE) {
            this.w = Status.RUNNING;
            float t2 = this.f12098l.t();
            this.A = a(i2, t2);
            this.B = a(i3, t2);
            if (f12088b) {
                a("finished setup for calling load in " + c.b.a.i.e.a(this.v));
            }
            r rVar = this.r;
            c.b.a.g gVar = this.f12095i;
            r.d a2 = rVar.a(gVar, this.f12096j, this.f12098l.s(), this.A, this.B, this.f12098l.r(), this.f12097k, this.o, this.f12098l.b(), this.f12098l.v(), this.f12098l.C(), this.f12098l.A(), this.f12098l.h(), this.f12098l.y(), this.f12098l.x(), this.f12098l.w(), this.f12098l.g(), this);
            this.u = a2;
            if (this.w != Status.RUNNING) {
                this.u = null;
            }
            if (f12088b) {
                a("finished onSizeReady in " + c.b.a.i.e.a(this.v));
            }
        }
    }

    public static int a(int i2, float f2) {
        return i2 == Integer.MIN_VALUE ? i2 : Math.round(f2 * ((float) i2));
    }

    public void a(D<?> d2, DataSource dataSource) {
        this.f12091e.b();
        this.u = null;
        if (d2 == null) {
            a(new GlideException("Expected to receive a Resource<R> with an object of " + this.f12097k + " inside, but instead got null."));
            return;
        }
        Object obj = d2.get();
        if (obj == null || !this.f12097k.isAssignableFrom(obj.getClass())) {
            a(d2);
            StringBuilder sb = new StringBuilder();
            sb.append("Expected to receive an object of ");
            sb.append(this.f12097k);
            sb.append(" but instead got ");
            String str = "";
            sb.append(obj != null ? obj.getClass() : str);
            sb.append("{");
            sb.append(obj);
            sb.append("} inside Resource{");
            sb.append(d2);
            sb.append("}.");
            if (obj == null) {
                str = " To indicate failure return a null Resource object, rather than a Resource object containing null data.";
            }
            sb.append(str);
            a(new GlideException(sb.toString()));
        } else if (!j()) {
            a(d2);
            this.w = Status.COMPLETE;
        } else {
            a(d2, obj, dataSource);
        }
    }

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x00ab A[Catch:{ all -> 0x00bc }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(c.b.a.c.b.D<R> r11, R r12, com.bumptech.glide.load.DataSource r13) {
        /*
            r10 = this;
            boolean r6 = r10.o()
            com.bumptech.glide.request.SingleRequest$Status r0 = com.bumptech.glide.request.SingleRequest.Status.COMPLETE
            r10.w = r0
            r10.t = r11
            c.b.a.g r11 = r10.f12095i
            int r11 = r11.d()
            r0 = 3
            if (r11 > r0) goto L_0x006a
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r0 = "Finished loading "
            r11.append(r0)
            java.lang.Class r0 = r12.getClass()
            java.lang.String r0 = r0.getSimpleName()
            r11.append(r0)
            java.lang.String r0 = " from "
            r11.append(r0)
            r11.append(r13)
            java.lang.String r0 = " for "
            r11.append(r0)
            java.lang.Object r0 = r10.f12096j
            r11.append(r0)
            java.lang.String r0 = " with size ["
            r11.append(r0)
            int r0 = r10.A
            r11.append(r0)
            java.lang.String r0 = "x"
            r11.append(r0)
            int r0 = r10.B
            r11.append(r0)
            java.lang.String r0 = "] in "
            r11.append(r0)
            long r0 = r10.v
            double r0 = c.b.a.i.e.a(r0)
            r11.append(r0)
            java.lang.String r0 = " ms"
            r11.append(r0)
            java.lang.String r11 = r11.toString()
            java.lang.String r0 = "Glide"
            android.util.Log.d(r0, r11)
        L_0x006a:
            r11 = 1
            r10.f12089c = r11
            r7 = 0
            java.util.List<c.b.a.g.f<R>> r0 = r10.q     // Catch:{ all -> 0x00bc }
            if (r0 == 0) goto L_0x0092
            java.util.List<c.b.a.g.f<R>> r0 = r10.q     // Catch:{ all -> 0x00bc }
            java.util.Iterator r8 = r0.iterator()     // Catch:{ all -> 0x00bc }
            r9 = 0
        L_0x0079:
            boolean r0 = r8.hasNext()     // Catch:{ all -> 0x00bc }
            if (r0 == 0) goto L_0x0093
            java.lang.Object r0 = r8.next()     // Catch:{ all -> 0x00bc }
            c.b.a.g.f r0 = (c.b.a.g.f) r0     // Catch:{ all -> 0x00bc }
            java.lang.Object r2 = r10.f12096j     // Catch:{ all -> 0x00bc }
            c.b.a.g.a.h<R> r3 = r10.p     // Catch:{ all -> 0x00bc }
            r1 = r12
            r4 = r13
            r5 = r6
            boolean r0 = r0.a(r1, r2, r3, r4, r5)     // Catch:{ all -> 0x00bc }
            r9 = r9 | r0
            goto L_0x0079
        L_0x0092:
            r9 = 0
        L_0x0093:
            c.b.a.g.f<R> r0 = r10.f12092f     // Catch:{ all -> 0x00bc }
            if (r0 == 0) goto L_0x00a7
            c.b.a.g.f<R> r0 = r10.f12092f     // Catch:{ all -> 0x00bc }
            java.lang.Object r2 = r10.f12096j     // Catch:{ all -> 0x00bc }
            c.b.a.g.a.h<R> r3 = r10.p     // Catch:{ all -> 0x00bc }
            r1 = r12
            r4 = r13
            r5 = r6
            boolean r0 = r0.a(r1, r2, r3, r4, r5)     // Catch:{ all -> 0x00bc }
            if (r0 == 0) goto L_0x00a7
            goto L_0x00a8
        L_0x00a7:
            r11 = 0
        L_0x00a8:
            r11 = r11 | r9
            if (r11 != 0) goto L_0x00b6
            c.b.a.g.b.c<? super R> r11 = r10.s     // Catch:{ all -> 0x00bc }
            c.b.a.g.b.b r11 = r11.a(r13, r6)     // Catch:{ all -> 0x00bc }
            c.b.a.g.a.h<R> r13 = r10.p     // Catch:{ all -> 0x00bc }
            r13.a(r12, r11)     // Catch:{ all -> 0x00bc }
        L_0x00b6:
            r10.f12089c = r7
            r10.q()
            return
        L_0x00bc:
            r11 = move-exception
            r10.f12089c = r7
            goto L_0x00c1
        L_0x00c0:
            throw r11
        L_0x00c1:
            goto L_0x00c0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.request.SingleRequest.a(c.b.a.c.b.D, java.lang.Object, com.bumptech.glide.load.DataSource):void");
    }

    public void a(GlideException glideException) {
        a(glideException, 5);
    }

    /* JADX INFO: finally extract failed */
    public final void a(GlideException glideException, int i2) {
        boolean z2;
        this.f12091e.b();
        int d2 = this.f12095i.d();
        if (d2 <= i2) {
            Log.w("Glide", "Load failed for " + this.f12096j + " with size [" + this.A + "x" + this.B + "]", glideException);
            if (d2 <= 4) {
                glideException.a("Glide");
            }
        }
        this.u = null;
        this.w = Status.FAILED;
        boolean z3 = true;
        this.f12089c = true;
        try {
            if (this.q != null) {
                z2 = false;
                for (f<R> a2 : this.q) {
                    z2 |= a2.a(glideException, this.f12096j, this.p, o());
                }
            } else {
                z2 = false;
            }
            if (this.f12092f == null || !this.f12092f.a(glideException, this.f12096j, this.p, o())) {
                z3 = false;
            }
            if (!z2 && !z3) {
                r();
            }
            this.f12089c = false;
            p();
        } catch (Throwable th) {
            this.f12089c = false;
            throw th;
        }
    }

    public boolean a(c cVar) {
        if (!(cVar instanceof SingleRequest)) {
            return false;
        }
        SingleRequest singleRequest = (SingleRequest) cVar;
        if (this.m != singleRequest.m || this.n != singleRequest.n || !k.a(this.f12096j, singleRequest.f12096j) || !this.f12097k.equals(singleRequest.f12097k) || !this.f12098l.equals(singleRequest.f12098l) || this.o != singleRequest.o || !a((SingleRequest<?>) this, (SingleRequest<?>) singleRequest)) {
            return false;
        }
        return true;
    }

    public static boolean a(SingleRequest<?> singleRequest, SingleRequest<?> singleRequest2) {
        List<f<R>> list = singleRequest.q;
        int size = list == null ? 0 : list.size();
        List<f<R>> list2 = singleRequest2.q;
        if (size == (list2 == null ? 0 : list2.size())) {
            return true;
        }
        return false;
    }

    public final void a(String str) {
        Log.v("Request", str + " this: " + this.f12090d);
    }
}
