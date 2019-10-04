package c.e.a.a.j.d;

import android.net.Uri;
import c.e.a.a.C;
import c.e.a.a.C0744q;
import c.e.a.a.Z;
import c.e.a.a.j.E;
import c.e.a.a.j.a.c;
import c.e.a.a.j.d.a.b;
import c.e.a.a.j.d.a.d;
import c.e.a.a.j.d.a.f;
import c.e.a.a.j.d.a.i;
import c.e.a.a.j.q;
import c.e.a.a.j.r;
import c.e.a.a.j.u;
import c.e.a.a.j.v;
import c.e.a.a.n.A;
import c.e.a.a.n.e;
import c.e.a.a.n.j;
import c.e.a.a.n.t;
import c.e.a.a.n.v;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import java.util.List;

/* compiled from: HlsMediaSource */
public final class m extends c.e.a.a.j.m implements HlsPlaylistTracker.c {

    /* renamed from: f  reason: collision with root package name */
    public final h f8817f;

    /* renamed from: g  reason: collision with root package name */
    public final Uri f8818g;

    /* renamed from: h  reason: collision with root package name */
    public final g f8819h;

    /* renamed from: i  reason: collision with root package name */
    public final q f8820i;

    /* renamed from: j  reason: collision with root package name */
    public final v f8821j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f8822k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f8823l;
    public final HlsPlaylistTracker m;
    public final Object n;
    public A o;

    /* compiled from: HlsMediaSource */
    public static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        public final g f8824a;

        /* renamed from: b  reason: collision with root package name */
        public h f8825b;

        /* renamed from: c  reason: collision with root package name */
        public i f8826c;

        /* renamed from: d  reason: collision with root package name */
        public List<StreamKey> f8827d;

        /* renamed from: e  reason: collision with root package name */
        public HlsPlaylistTracker.a f8828e;

        /* renamed from: f  reason: collision with root package name */
        public q f8829f;

        /* renamed from: g  reason: collision with root package name */
        public v f8830g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f8831h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f8832i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f8833j;

        /* renamed from: k  reason: collision with root package name */
        public Object f8834k;

        public a(j.a aVar) {
            this((g) new e(aVar));
        }

        public m createMediaSource(Uri uri) {
            this.f8833j = true;
            List<StreamKey> list = this.f8827d;
            if (list != null) {
                this.f8826c = new d(this.f8826c, list);
            }
            g gVar = this.f8824a;
            h hVar = this.f8825b;
            q qVar = this.f8829f;
            v vVar = this.f8830g;
            m mVar = new m(uri, gVar, hVar, qVar, vVar, this.f8828e.a(gVar, vVar, this.f8826c), this.f8831h, this.f8832i, this.f8834k);
            return mVar;
        }

        public a(g gVar) {
            C0737e.a(gVar);
            this.f8824a = gVar;
            this.f8826c = new b();
            this.f8828e = c.e.a.a.j.d.a.c.f8704a;
            this.f8825b = h.f8796a;
            this.f8830g = new t();
            this.f8829f = new r();
        }
    }

    static {
        C.a("goog.exo.hls");
    }

    public void a(A a2) {
        this.o = a2;
        this.m.a(this.f8818g, a((v.a) null), this);
    }

    public void b() {
        this.m.stop();
    }

    public m(Uri uri, g gVar, h hVar, q qVar, c.e.a.a.n.v vVar, HlsPlaylistTracker hlsPlaylistTracker, boolean z, boolean z2, Object obj) {
        this.f8818g = uri;
        this.f8819h = gVar;
        this.f8817f = hVar;
        this.f8820i = qVar;
        this.f8821j = vVar;
        this.m = hlsPlaylistTracker;
        this.f8822k = z;
        this.f8823l = z2;
        this.n = obj;
    }

    public void a() {
        this.m.d();
    }

    public u a(v.a aVar, e eVar, long j2) {
        k kVar = new k(this.f8817f, this.m, this.f8819h, this.o, this.f8821j, a(aVar), eVar, this.f8820i, this.f8822k, this.f8823l);
        return kVar;
    }

    public void a(u uVar) {
        ((k) uVar).h();
    }

    public void a(f fVar) {
        E e2;
        long j2;
        long j3;
        f fVar2 = fVar;
        long b2 = fVar2.m ? C0744q.b(fVar2.f8750f) : -9223372036854775807L;
        int i2 = fVar2.f8748d;
        long j4 = (i2 == 2 || i2 == 1) ? b2 : -9223372036854775807L;
        long j5 = fVar2.f8749e;
        if (this.m.b()) {
            long a2 = fVar2.f8750f - this.m.a();
            long j6 = fVar2.f8756l ? a2 + fVar2.p : -9223372036854775807L;
            List<f.a> list = fVar2.o;
            if (j5 == -9223372036854775807L) {
                if (list.isEmpty()) {
                    j3 = 0;
                } else {
                    j3 = list.get(Math.max(0, list.size() - 3)).f8762f;
                }
                j2 = j3;
            } else {
                j2 = j5;
            }
            E e3 = new E(j4, b2, j6, fVar2.p, a2, j2, true, !fVar2.f8756l, this.n);
            e2 = e3;
        } else {
            long j7 = j5 == -9223372036854775807L ? 0 : j5;
            long j8 = fVar2.p;
            e2 = new E(j4, b2, j8, j8, 0, j7, true, false, this.n);
        }
        a((Z) e2, (Object) new i(this.m.c(), fVar2));
    }
}
