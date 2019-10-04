package c.e.a.a.j;

import android.net.Uri;
import c.e.a.a.Z;
import c.e.a.a.e.e;
import c.e.a.a.j.a.c;
import c.e.a.a.j.v;
import c.e.a.a.j.y;
import c.e.a.a.n.A;
import c.e.a.a.n.j;
import c.e.a.a.n.t;
import c.e.a.a.n.v;

/* compiled from: ProgressiveMediaSource */
public final class z extends m implements y.c {

    /* renamed from: f  reason: collision with root package name */
    public final Uri f9043f;

    /* renamed from: g  reason: collision with root package name */
    public final j.a f9044g;

    /* renamed from: h  reason: collision with root package name */
    public final c.e.a.a.e.j f9045h;

    /* renamed from: i  reason: collision with root package name */
    public final v f9046i;

    /* renamed from: j  reason: collision with root package name */
    public final String f9047j;

    /* renamed from: k  reason: collision with root package name */
    public final int f9048k;

    /* renamed from: l  reason: collision with root package name */
    public final Object f9049l;
    public long m = -9223372036854775807L;
    public boolean n;
    public A o;

    /* compiled from: ProgressiveMediaSource */
    public static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        public final j.a f9050a;

        /* renamed from: b  reason: collision with root package name */
        public c.e.a.a.e.j f9051b;

        /* renamed from: c  reason: collision with root package name */
        public String f9052c;

        /* renamed from: d  reason: collision with root package name */
        public Object f9053d;

        /* renamed from: e  reason: collision with root package name */
        public v f9054e;

        /* renamed from: f  reason: collision with root package name */
        public int f9055f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f9056g;

        public a(j.a aVar) {
            this(aVar, new e());
        }

        public z a(Uri uri) {
            this.f9056g = true;
            z zVar = new z(uri, this.f9050a, this.f9051b, this.f9054e, this.f9052c, this.f9055f, this.f9053d);
            return zVar;
        }

        public a(j.a aVar, c.e.a.a.e.j jVar) {
            this.f9050a = aVar;
            this.f9051b = jVar;
            this.f9054e = new t();
            this.f9055f = 1048576;
        }
    }

    public z(Uri uri, j.a aVar, c.e.a.a.e.j jVar, v vVar, String str, int i2, Object obj) {
        this.f9043f = uri;
        this.f9044g = aVar;
        this.f9045h = jVar;
        this.f9046i = vVar;
        this.f9047j = str;
        this.f9048k = i2;
        this.f9049l = obj;
    }

    public void a() {
    }

    public void a(A a2) {
        this.o = a2;
        b(this.m, this.n);
    }

    public void b() {
    }

    public final void b(long j2, boolean z) {
        this.m = j2;
        this.n = z;
        E e2 = new E(this.m, this.n, false, this.f9049l);
        a((Z) e2, (Object) null);
    }

    public u a(v.a aVar, c.e.a.a.n.e eVar, long j2) {
        j a2 = this.f9044g.a();
        A a3 = this.o;
        if (a3 != null) {
            a2.a(a3);
        }
        y yVar = new y(this.f9043f, a2, this.f9045h.a(), this.f9046i, a(aVar), this, eVar, this.f9047j, this.f9048k);
        return yVar;
    }

    public void a(u uVar) {
        ((y) uVar).q();
    }

    public void a(long j2, boolean z) {
        if (j2 == -9223372036854775807L) {
            j2 = this.m;
        }
        if (this.m != j2 || this.n != z) {
            b(j2, z);
        }
    }
}
