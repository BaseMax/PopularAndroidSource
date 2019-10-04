package c.e.a.a.j.e;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import c.e.a.a.C;
import c.e.a.a.C0744q;
import c.e.a.a.Z;
import c.e.a.a.j.E;
import c.e.a.a.j.e.a.a;
import c.e.a.a.j.e.b;
import c.e.a.a.j.e.c;
import c.e.a.a.j.m;
import c.e.a.a.j.q;
import c.e.a.a.j.r;
import c.e.a.a.j.u;
import c.e.a.a.j.v;
import c.e.a.a.j.w;
import c.e.a.a.n.A;
import c.e.a.a.n.e;
import c.e.a.a.n.j;
import c.e.a.a.n.t;
import c.e.a.a.n.v;
import c.e.a.a.n.x;
import c.e.a.a.n.y;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SsMediaSource */
public final class f extends m implements Loader.a<y<c.e.a.a.j.e.a.a>> {

    /* renamed from: f  reason: collision with root package name */
    public final boolean f8910f;

    /* renamed from: g  reason: collision with root package name */
    public final Uri f8911g;

    /* renamed from: h  reason: collision with root package name */
    public final j.a f8912h;

    /* renamed from: i  reason: collision with root package name */
    public final c.a f8913i;

    /* renamed from: j  reason: collision with root package name */
    public final q f8914j;

    /* renamed from: k  reason: collision with root package name */
    public final v f8915k;

    /* renamed from: l  reason: collision with root package name */
    public final long f8916l;
    public final w.a m;
    public final y.a<? extends c.e.a.a.j.e.a.a> n;
    public final ArrayList<d> o;
    public final Object p;
    public j q;
    public Loader r;
    public x s;
    public A t;
    public long u;
    public c.e.a.a.j.e.a.a v;
    public Handler w;

    /* compiled from: SsMediaSource */
    public static final class a implements c.e.a.a.j.a.c {

        /* renamed from: a  reason: collision with root package name */
        public final c.a f8917a;

        /* renamed from: b  reason: collision with root package name */
        public final j.a f8918b;

        /* renamed from: c  reason: collision with root package name */
        public y.a<? extends c.e.a.a.j.e.a.a> f8919c;

        /* renamed from: d  reason: collision with root package name */
        public List<StreamKey> f8920d;

        /* renamed from: e  reason: collision with root package name */
        public q f8921e;

        /* renamed from: f  reason: collision with root package name */
        public v f8922f;

        /* renamed from: g  reason: collision with root package name */
        public long f8923g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f8924h;

        /* renamed from: i  reason: collision with root package name */
        public Object f8925i;

        public a(j.a aVar) {
            this(new b.a(aVar), aVar);
        }

        public f createMediaSource(Uri uri) {
            this.f8924h = true;
            if (this.f8919c == null) {
                this.f8919c = new SsManifestParser();
            }
            List<StreamKey> list = this.f8920d;
            if (list != null) {
                this.f8919c = new c.e.a.a.h.c(this.f8919c, list);
            }
            C0737e.a(uri);
            f fVar = new f(null, uri, this.f8918b, this.f8919c, this.f8917a, this.f8921e, this.f8922f, this.f8923g, this.f8925i);
            return fVar;
        }

        public a(c.a aVar, j.a aVar2) {
            C0737e.a(aVar);
            this.f8917a = aVar;
            this.f8918b = aVar2;
            this.f8922f = new t();
            this.f8923g = 30000;
            this.f8921e = new r();
        }
    }

    static {
        C.a("goog.exo.smoothstreaming");
    }

    public void b() {
        this.v = this.f8910f ? this.v : null;
        this.q = null;
        this.u = 0;
        Loader loader = this.r;
        if (loader != null) {
            loader.d();
            this.r = null;
        }
        Handler handler = this.w;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.w = null;
        }
    }

    public final void c() {
        E e2;
        for (int i2 = 0; i2 < this.o.size(); i2++) {
            this.o.get(i2).b(this.v);
        }
        long j2 = Long.MIN_VALUE;
        long j3 = Long.MAX_VALUE;
        for (a.b bVar : this.v.f8869f) {
            if (bVar.f8885k > 0) {
                long min = Math.min(j3, bVar.b(0));
                j2 = Math.max(j2, bVar.b(bVar.f8885k - 1) + bVar.a(bVar.f8885k - 1));
                j3 = min;
            }
        }
        if (j3 == Long.MAX_VALUE) {
            e2 = new E(this.v.f8867d ? -9223372036854775807L : 0, 0, 0, 0, true, this.v.f8867d, this.p);
        } else {
            c.e.a.a.j.e.a.a aVar = this.v;
            if (aVar.f8867d) {
                long j4 = aVar.f8871h;
                if (j4 != -9223372036854775807L && j4 > 0) {
                    j3 = Math.max(j3, j2 - j4);
                }
                long j5 = j3;
                long j6 = j2 - j5;
                long a2 = j6 - C0744q.a(this.f8916l);
                if (a2 < 5000000) {
                    a2 = Math.min(5000000, j6 / 2);
                }
                e2 = new E(-9223372036854775807L, j6, j5, a2, true, true, this.p);
            } else {
                long j7 = aVar.f8870g;
                long j8 = j7 != -9223372036854775807L ? j7 : j2 - j3;
                e2 = new E(j3 + j8, j8, j3, 0, true, false, this.p);
            }
        }
        a((Z) e2, (Object) this.v);
    }

    public final void d() {
        if (this.v.f8867d) {
            this.w.postDelayed(new a(this), Math.max(0, (this.u + 5000) - SystemClock.elapsedRealtime()));
        }
    }

    public final void e() {
        y yVar = new y(this.q, this.f8911g, 4, this.n);
        this.m.a(yVar.f9530a, yVar.f9531b, this.r.a(yVar, this, this.f8915k.a(yVar.f9531b)));
    }

    public f(c.e.a.a.j.e.a.a aVar, Uri uri, j.a aVar2, y.a<? extends c.e.a.a.j.e.a.a> aVar3, c.a aVar4, q qVar, v vVar, long j2, Object obj) {
        Uri uri2;
        boolean z = false;
        C0737e.b(aVar == null || !aVar.f8867d);
        this.v = aVar;
        if (uri == null) {
            uri2 = null;
        } else {
            uri2 = c.e.a.a.j.e.a.b.a(uri);
        }
        this.f8911g = uri2;
        this.f8912h = aVar2;
        this.n = aVar3;
        this.f8913i = aVar4;
        this.f8914j = qVar;
        this.f8915k = vVar;
        this.f8916l = j2;
        this.m = a((v.a) null);
        this.p = obj;
        this.f8910f = aVar != null ? true : z;
        this.o = new ArrayList<>();
    }

    public void a(A a2) {
        this.t = a2;
        if (this.f8910f) {
            this.s = new x.a();
            c();
            return;
        }
        this.q = this.f8912h.a();
        this.r = new Loader("Loader:Manifest");
        this.s = this.r;
        this.w = new Handler();
        e();
    }

    public void a() {
        this.s.a();
    }

    public u a(v.a aVar, e eVar, long j2) {
        d dVar = new d(this.v, this.f8913i, this.t, this.f8914j, this.f8915k, a(aVar), this.s, eVar);
        this.o.add(dVar);
        return dVar;
    }

    public void a(u uVar) {
        ((d) uVar).c();
        this.o.remove(uVar);
    }

    public void a(y<c.e.a.a.j.e.a.a> yVar, long j2, long j3) {
        y<c.e.a.a.j.e.a.a> yVar2 = yVar;
        this.m.b(yVar2.f9530a, yVar.f(), yVar.d(), yVar2.f9531b, j2, j3, yVar.c());
        this.v = yVar.e();
        this.u = j2 - j3;
        c();
        d();
    }

    public void a(y<c.e.a.a.j.e.a.a> yVar, long j2, long j3, boolean z) {
        y<c.e.a.a.j.e.a.a> yVar2 = yVar;
        this.m.a(yVar2.f9530a, yVar.f(), yVar.d(), yVar2.f9531b, j2, j3, yVar.c());
    }

    public Loader.b a(y<c.e.a.a.j.e.a.a> yVar, long j2, long j3, IOException iOException, int i2) {
        Loader.b bVar;
        y<c.e.a.a.j.e.a.a> yVar2 = yVar;
        long a2 = this.f8915k.a(4, j3, iOException, i2);
        if (a2 == -9223372036854775807L) {
            bVar = Loader.f12877d;
        } else {
            bVar = Loader.a(false, a2);
        }
        this.m.a(yVar2.f9530a, yVar.f(), yVar.d(), yVar2.f9531b, j2, j3, yVar.c(), iOException, !bVar.a());
        return bVar;
    }
}
