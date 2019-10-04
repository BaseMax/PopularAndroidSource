package c.e.a.a.j.b;

import c.e.a.a.e.d;
import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.n;
import c.e.a.a.n.j;
import c.e.a.a.n.l;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.Format;

/* compiled from: InitializationChunk */
public final class k extends d {

    /* renamed from: i  reason: collision with root package name */
    public static final n f8504i = new n();

    /* renamed from: j  reason: collision with root package name */
    public final e f8505j;

    /* renamed from: k  reason: collision with root package name */
    public long f8506k;

    /* renamed from: l  reason: collision with root package name */
    public volatile boolean f8507l;

    public k(j jVar, l lVar, Format format, int i2, Object obj, e eVar) {
        super(jVar, lVar, 2, format, i2, obj, -9223372036854775807L, -9223372036854775807L);
        this.f8505j = eVar;
    }

    public void a() {
        d dVar;
        l a2 = this.f8459a.a(this.f8506k);
        try {
            dVar = new d(this.f8466h, a2.f9470e, this.f8466h.a(a2));
            if (this.f8506k == 0) {
                this.f8505j.a(null, -9223372036854775807L, -9223372036854775807L);
            }
            g gVar = this.f8505j.f8467a;
            int i2 = 0;
            while (i2 == 0 && !this.f8507l) {
                i2 = gVar.a((h) dVar, f8504i);
            }
            boolean z = true;
            if (i2 == 1) {
                z = false;
            }
            C0737e.b(z);
            this.f8506k = dVar.getPosition() - this.f8459a.f9470e;
            I.a((j) this.f8466h);
        } catch (Throwable th) {
            I.a((j) this.f8466h);
            throw th;
        }
    }

    public void b() {
        this.f8507l = true;
    }
}
