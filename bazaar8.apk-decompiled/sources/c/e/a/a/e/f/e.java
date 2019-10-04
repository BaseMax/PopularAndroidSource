package c.e.a.a.e.f;

import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.i;
import c.e.a.a.e.j;
import c.e.a.a.e.n;
import c.e.a.a.e.q;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.ParserException;

/* compiled from: OggExtractor */
public class e implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f7919a = a.f7900a;

    /* renamed from: b  reason: collision with root package name */
    public i f7920b;

    /* renamed from: c  reason: collision with root package name */
    public k f7921c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f7922d;

    public static /* synthetic */ g[] b() {
        return new g[]{new e()};
    }

    public void a() {
    }

    public boolean a(h hVar) {
        try {
            return b(hVar);
        } catch (ParserException unused) {
            return false;
        }
    }

    public void a(i iVar) {
        this.f7920b = iVar;
    }

    public final boolean b(h hVar) {
        g gVar = new g();
        if (gVar.a(hVar, true) && (gVar.f7930c & 2) == 2) {
            int min = Math.min(gVar.f7937j, 8);
            v vVar = new v(min);
            hVar.a(vVar.f9634a, 0, min);
            a(vVar);
            if (d.c(vVar)) {
                this.f7921c = new d();
            } else {
                a(vVar);
                if (m.c(vVar)) {
                    this.f7921c = new m();
                } else {
                    a(vVar);
                    if (i.b(vVar)) {
                        this.f7921c = new i();
                    }
                }
            }
            return true;
        }
        return false;
    }

    public void a(long j2, long j3) {
        k kVar = this.f7921c;
        if (kVar != null) {
            kVar.a(j2, j3);
        }
    }

    public int a(h hVar, n nVar) {
        if (this.f7921c == null) {
            if (b(hVar)) {
                hVar.b();
            } else {
                throw new ParserException("Failed to determine bitstream type");
            }
        }
        if (!this.f7922d) {
            q a2 = this.f7920b.a(0, 1);
            this.f7920b.a();
            this.f7921c.a(this.f7920b, a2);
            this.f7922d = true;
        }
        return this.f7921c.a(hVar, nVar);
    }

    public static v a(v vVar) {
        vVar.e(0);
        return vVar;
    }
}
