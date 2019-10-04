package c.e.a.a.j;

import android.net.Uri;
import c.e.a.a.Z;
import c.e.a.a.j.v;
import c.e.a.a.n.A;
import c.e.a.a.n.e;
import c.e.a.a.n.j;
import c.e.a.a.n.l;
import c.e.a.a.n.t;
import c.e.a.a.n.v;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.Format;

/* compiled from: SingleSampleMediaSource */
public final class I extends m {

    /* renamed from: f  reason: collision with root package name */
    public final l f8426f;

    /* renamed from: g  reason: collision with root package name */
    public final j.a f8427g;

    /* renamed from: h  reason: collision with root package name */
    public final Format f8428h;

    /* renamed from: i  reason: collision with root package name */
    public final long f8429i;

    /* renamed from: j  reason: collision with root package name */
    public final v f8430j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f8431k;

    /* renamed from: l  reason: collision with root package name */
    public final Z f8432l;
    public final Object m;
    public A n;

    /* compiled from: SingleSampleMediaSource */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final j.a f8433a;

        /* renamed from: b  reason: collision with root package name */
        public v f8434b = new t();

        /* renamed from: c  reason: collision with root package name */
        public boolean f8435c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f8436d;

        /* renamed from: e  reason: collision with root package name */
        public Object f8437e;

        public a(j.a aVar) {
            C0737e.a(aVar);
            this.f8433a = aVar;
        }

        public I a(Uri uri, Format format, long j2) {
            this.f8436d = true;
            I i2 = new I(uri, this.f8433a, format, j2, this.f8434b, this.f8435c, this.f8437e);
            return i2;
        }
    }

    public void a() {
    }

    public void a(A a2) {
        this.n = a2;
        a(this.f8432l, (Object) null);
    }

    public void b() {
    }

    public I(Uri uri, j.a aVar, Format format, long j2, v vVar, boolean z, Object obj) {
        this.f8427g = aVar;
        this.f8428h = format;
        this.f8429i = j2;
        this.f8430j = vVar;
        this.f8431k = z;
        this.m = obj;
        this.f8426f = new l(uri, 1);
        E e2 = new E(j2, true, false, obj);
        this.f8432l = e2;
    }

    public u a(v.a aVar, e eVar, long j2) {
        G g2 = new G(this.f8426f, this.f8427g, this.n, this.f8428h, this.f8429i, this.f8430j, a(aVar), this.f8431k);
        return g2;
    }

    public void a(u uVar) {
        ((G) uVar).a();
    }
}
