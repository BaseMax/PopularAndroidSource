package c.e.a.a.j.d.a;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import c.e.a.a.C0744q;
import c.e.a.a.j.d.a.e;
import c.e.a.a.j.d.a.f;
import c.e.a.a.j.d.g;
import c.e.a.a.j.w;
import c.e.a.a.n.l;
import c.e.a.a.n.v;
import c.e.a.a.n.y;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: DefaultHlsPlaylistTracker */
public final class c implements HlsPlaylistTracker, Loader.a<y<g>> {

    /* renamed from: a  reason: collision with root package name */
    public static final HlsPlaylistTracker.a f8704a = a.f8703a;

    /* renamed from: b  reason: collision with root package name */
    public final g f8705b;

    /* renamed from: c  reason: collision with root package name */
    public final i f8706c;

    /* renamed from: d  reason: collision with root package name */
    public final v f8707d;

    /* renamed from: e  reason: collision with root package name */
    public final HashMap<Uri, a> f8708e;

    /* renamed from: f  reason: collision with root package name */
    public final List<HlsPlaylistTracker.b> f8709f;

    /* renamed from: g  reason: collision with root package name */
    public final double f8710g;

    /* renamed from: h  reason: collision with root package name */
    public y.a<g> f8711h;

    /* renamed from: i  reason: collision with root package name */
    public w.a f8712i;

    /* renamed from: j  reason: collision with root package name */
    public Loader f8713j;

    /* renamed from: k  reason: collision with root package name */
    public Handler f8714k;

    /* renamed from: l  reason: collision with root package name */
    public HlsPlaylistTracker.c f8715l;
    public e m;
    public Uri n;
    public f o;
    public boolean p;
    public long q;

    /* compiled from: DefaultHlsPlaylistTracker */
    private final class a implements Loader.a<y<g>>, Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f8716a;

        /* renamed from: b  reason: collision with root package name */
        public final Loader f8717b = new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");

        /* renamed from: c  reason: collision with root package name */
        public final y<g> f8718c;

        /* renamed from: d  reason: collision with root package name */
        public f f8719d;

        /* renamed from: e  reason: collision with root package name */
        public long f8720e;

        /* renamed from: f  reason: collision with root package name */
        public long f8721f;

        /* renamed from: g  reason: collision with root package name */
        public long f8722g;

        /* renamed from: h  reason: collision with root package name */
        public long f8723h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f8724i;

        /* renamed from: j  reason: collision with root package name */
        public IOException f8725j;

        public a(Uri uri) {
            this.f8716a = uri;
            this.f8718c = new y<>(c.this.f8705b.a(4), uri, 4, (y.a<? extends g>) c.this.f8711h);
        }

        public void c() {
            this.f8723h = 0;
            if (!this.f8724i && !this.f8717b.c()) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (elapsedRealtime < this.f8722g) {
                    this.f8724i = true;
                    c.this.f8714k.postDelayed(this, this.f8722g - elapsedRealtime);
                    return;
                }
                d();
            }
        }

        public final void d() {
            long a2 = this.f8717b.a(this.f8718c, this, c.this.f8707d.a(this.f8718c.f9531b));
            w.a g2 = c.this.f8712i;
            y<g> yVar = this.f8718c;
            g2.a(yVar.f9530a, yVar.f9531b, a2);
        }

        public void e() {
            this.f8717b.a();
            IOException iOException = this.f8725j;
            if (iOException != null) {
                throw iOException;
            }
        }

        public void f() {
            this.f8717b.d();
        }

        public void run() {
            this.f8724i = false;
            d();
        }

        /* JADX WARNING: Code restructure failed: missing block: B:9:0x002b, code lost:
            if ((r10.f8720e + r4) <= r2) goto L_0x002e;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean b() {
            /*
                r10 = this;
                c.e.a.a.j.d.a.f r0 = r10.f8719d
                r1 = 0
                if (r0 != 0) goto L_0x0006
                return r1
            L_0x0006:
                long r2 = android.os.SystemClock.elapsedRealtime()
                r4 = 30000(0x7530, double:1.4822E-319)
                c.e.a.a.j.d.a.f r0 = r10.f8719d
                long r6 = r0.p
                long r6 = c.e.a.a.C0744q.b(r6)
                long r4 = java.lang.Math.max(r4, r6)
                c.e.a.a.j.d.a.f r0 = r10.f8719d
                boolean r6 = r0.f8756l
                r7 = 1
                if (r6 != 0) goto L_0x002d
                int r0 = r0.f8748d
                r6 = 2
                if (r0 == r6) goto L_0x002d
                if (r0 == r7) goto L_0x002d
                long r8 = r10.f8720e
                long r8 = r8 + r4
                int r0 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
                if (r0 <= 0) goto L_0x002e
            L_0x002d:
                r1 = 1
            L_0x002e:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.d.a.c.a.b():boolean");
        }

        public f a() {
            return this.f8719d;
        }

        public void a(y<g> yVar, long j2, long j3) {
            g e2 = yVar.e();
            if (e2 instanceof f) {
                long j4 = j3;
                a((f) e2, j4);
                c.this.f8712i.b(yVar.f9530a, yVar.f(), yVar.d(), 4, j2, j4, yVar.c());
                return;
            }
            this.f8725j = new ParserException("Loaded playlist has unexpected type.");
        }

        public void a(y<g> yVar, long j2, long j3, boolean z) {
            c.this.f8712i.a(yVar.f9530a, yVar.f(), yVar.d(), 4, j2, j3, yVar.c());
        }

        public Loader.b a(y<g> yVar, long j2, long j3, IOException iOException, int i2) {
            Loader.b bVar;
            y<g> yVar2 = yVar;
            long b2 = c.this.f8707d.b(yVar2.f9531b, j3, iOException, i2);
            boolean z = b2 != -9223372036854775807L;
            boolean z2 = c.this.a(this.f8716a, b2) || !z;
            if (z) {
                z2 |= a(b2);
            }
            if (z2) {
                long a2 = c.this.f8707d.a(yVar2.f9531b, j3, iOException, i2);
                bVar = a2 != -9223372036854775807L ? Loader.a(false, a2) : Loader.f12877d;
            } else {
                bVar = Loader.f12876c;
            }
            c.this.f8712i.a(yVar2.f9530a, yVar.f(), yVar.d(), 4, j2, j3, yVar.c(), iOException, !bVar.a());
            return bVar;
        }

        public final void a(f fVar, long j2) {
            f fVar2 = fVar;
            f fVar3 = this.f8719d;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f8720e = elapsedRealtime;
            this.f8719d = c.this.b(fVar3, fVar2);
            f fVar4 = this.f8719d;
            if (fVar4 != fVar3) {
                this.f8725j = null;
                this.f8721f = elapsedRealtime;
                c.this.a(this.f8716a, fVar4);
            } else if (!fVar4.f8756l) {
                f fVar5 = this.f8719d;
                if (fVar2.f8753i + ((long) fVar2.o.size()) < fVar5.f8753i) {
                    this.f8725j = new HlsPlaylistTracker.PlaylistResetException(this.f8716a);
                    boolean unused = c.this.a(this.f8716a, -9223372036854775807L);
                } else {
                    double b2 = (double) C0744q.b(fVar5.f8755k);
                    double a2 = c.this.f8710g;
                    Double.isNaN(b2);
                    if (((double) (elapsedRealtime - this.f8721f)) > b2 * a2) {
                        this.f8725j = new HlsPlaylistTracker.PlaylistStuckException(this.f8716a);
                        long b3 = c.this.f8707d.b(4, j2, this.f8725j, 1);
                        boolean unused2 = c.this.a(this.f8716a, b3);
                        if (b3 != -9223372036854775807L) {
                            a(b3);
                        }
                    }
                }
            }
            f fVar6 = this.f8719d;
            this.f8722g = elapsedRealtime + C0744q.b(fVar6 != fVar3 ? fVar6.f8755k : fVar6.f8755k / 2);
            if (this.f8716a.equals(c.this.n) && !this.f8719d.f8756l) {
                c();
            }
        }

        public final boolean a(long j2) {
            this.f8723h = SystemClock.elapsedRealtime() + j2;
            return this.f8716a.equals(c.this.n) && !c.this.e();
        }
    }

    public c(g gVar, v vVar, i iVar) {
        this(gVar, vVar, iVar, 3.5d);
    }

    public void stop() {
        this.n = null;
        this.o = null;
        this.m = null;
        this.q = -9223372036854775807L;
        this.f8713j.d();
        this.f8713j = null;
        for (a f2 : this.f8708e.values()) {
            f2.f();
        }
        this.f8714k.removeCallbacksAndMessages(null);
        this.f8714k = null;
        this.f8708e.clear();
    }

    public c(g gVar, v vVar, i iVar, double d2) {
        this.f8705b = gVar;
        this.f8706c = iVar;
        this.f8707d = vVar;
        this.f8710g = d2;
        this.f8709f = new ArrayList();
        this.f8708e = new HashMap<>();
        this.q = -9223372036854775807L;
    }

    public void b(HlsPlaylistTracker.b bVar) {
        this.f8709f.add(bVar);
    }

    public e c() {
        return this.m;
    }

    public void d() {
        Loader loader = this.f8713j;
        if (loader != null) {
            loader.a();
        }
        Uri uri = this.n;
        if (uri != null) {
            b(uri);
        }
    }

    public final boolean e() {
        List<e.b> list = this.m.f8731f;
        int size = list.size();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i2 = 0; i2 < size; i2++) {
            a aVar = this.f8708e.get(list.get(i2).f8742a);
            if (elapsedRealtime > aVar.f8723h) {
                this.n = aVar.f8716a;
                aVar.c();
                return true;
            }
        }
        return false;
    }

    public void b(Uri uri) {
        this.f8708e.get(uri).e();
    }

    public void c(Uri uri) {
        this.f8708e.get(uri).c();
    }

    public boolean b() {
        return this.p;
    }

    public final int c(f fVar, f fVar2) {
        if (fVar2.f8751g) {
            return fVar2.f8752h;
        }
        f fVar3 = this.o;
        int i2 = fVar3 != null ? fVar3.f8752h : 0;
        if (fVar == null) {
            return i2;
        }
        f.a a2 = a(fVar, fVar2);
        return a2 != null ? (fVar.f8752h + a2.f8761e) - fVar2.o.get(0).f8761e : i2;
    }

    public final f b(f fVar, f fVar2) {
        if (fVar2.a(fVar)) {
            return fVar2.a(d(fVar, fVar2), c(fVar, fVar2));
        }
        if (fVar2.f8756l) {
            fVar = fVar.a();
        }
        return fVar;
    }

    public final boolean d(Uri uri) {
        List<e.b> list = this.m.f8731f;
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (uri.equals(list.get(i2).f8742a)) {
                return true;
            }
        }
        return false;
    }

    public void a(Uri uri, w.a aVar, HlsPlaylistTracker.c cVar) {
        this.f8714k = new Handler();
        this.f8712i = aVar;
        this.f8715l = cVar;
        y yVar = new y(this.f8705b.a(4), uri, 4, this.f8706c.a());
        C0737e.b(this.f8713j == null);
        this.f8713j = new Loader("DefaultHlsPlaylistTracker:MasterPlaylist");
        aVar.a(yVar.f9530a, yVar.f9531b, this.f8713j.a(yVar, this, this.f8707d.a(yVar.f9531b)));
    }

    public final long d(f fVar, f fVar2) {
        if (fVar2.m) {
            return fVar2.f8750f;
        }
        f fVar3 = this.o;
        long j2 = fVar3 != null ? fVar3.f8750f : 0;
        if (fVar == null) {
            return j2;
        }
        int size = fVar.o.size();
        f.a a2 = a(fVar, fVar2);
        if (a2 != null) {
            return fVar.f8750f + a2.f8762f;
        }
        return ((long) size) == fVar2.f8753i - fVar.f8753i ? fVar.b() : j2;
    }

    public final void e(Uri uri) {
        if (!uri.equals(this.n) && d(uri)) {
            f fVar = this.o;
            if (fVar == null || !fVar.f8756l) {
                this.n = uri;
                this.f8708e.get(this.n).c();
            }
        }
    }

    public void a(HlsPlaylistTracker.b bVar) {
        this.f8709f.remove(bVar);
    }

    public f a(Uri uri, boolean z) {
        f a2 = this.f8708e.get(uri).a();
        if (a2 != null && z) {
            e(uri);
        }
        return a2;
    }

    public long a() {
        return this.q;
    }

    public boolean a(Uri uri) {
        return this.f8708e.get(uri).b();
    }

    public void a(y<g> yVar, long j2, long j3) {
        e eVar;
        g e2 = yVar.e();
        boolean z = e2 instanceof f;
        if (z) {
            eVar = e.a(e2.f8769a);
        } else {
            eVar = (e) e2;
        }
        this.m = eVar;
        this.f8711h = this.f8706c.a(eVar);
        this.n = eVar.f8731f.get(0).f8742a;
        a(eVar.f8730e);
        a aVar = this.f8708e.get(this.n);
        if (z) {
            aVar.a((f) e2, j3);
        } else {
            long j4 = j3;
            aVar.c();
        }
        this.f8712i.b(yVar.f9530a, yVar.f(), yVar.d(), 4, j2, j3, yVar.c());
    }

    public void a(y<g> yVar, long j2, long j3, boolean z) {
        w.a aVar = this.f8712i;
        l lVar = yVar.f9530a;
        Uri f2 = yVar.f();
        aVar.a(lVar, f2, yVar.d(), 4, j2, j3, yVar.c());
    }

    public Loader.b a(y<g> yVar, long j2, long j3, IOException iOException, int i2) {
        y<g> yVar2 = yVar;
        long a2 = this.f8707d.a(yVar2.f9531b, j3, iOException, i2);
        boolean z = a2 == -9223372036854775807L;
        this.f8712i.a(yVar2.f9530a, yVar.f(), yVar.d(), 4, j2, j3, yVar.c(), iOException, z);
        if (z) {
            return Loader.f12877d;
        }
        return Loader.a(false, a2);
    }

    public final void a(List<Uri> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Uri uri = list.get(i2);
            this.f8708e.put(uri, new a(uri));
        }
    }

    public final void a(Uri uri, f fVar) {
        if (uri.equals(this.n)) {
            if (this.o == null) {
                this.p = !fVar.f8756l;
                this.q = fVar.f8750f;
            }
            this.o = fVar;
            this.f8715l.a(fVar);
        }
        int size = this.f8709f.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f8709f.get(i2).c();
        }
    }

    public final boolean a(Uri uri, long j2) {
        int size = this.f8709f.size();
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            z |= !this.f8709f.get(i2).a(uri, j2);
        }
        return z;
    }

    public static f.a a(f fVar, f fVar2) {
        int i2 = (int) (fVar2.f8753i - fVar.f8753i);
        List<f.a> list = fVar.o;
        if (i2 < list.size()) {
            return list.get(i2);
        }
        return null;
    }
}
