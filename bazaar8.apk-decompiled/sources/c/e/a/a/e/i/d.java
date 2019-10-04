package c.e.a.a.e.i;

import c.e.a.a.b.H;
import c.e.a.a.e.h;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.ParserException;

/* compiled from: WavHeaderReader */
public final class d {

    /* compiled from: WavHeaderReader */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f8302a;

        /* renamed from: b  reason: collision with root package name */
        public final long f8303b;

        public a(int i2, long j2) {
            this.f8302a = i2;
            this.f8303b = j2;
        }

        public static a a(h hVar, v vVar) {
            hVar.a(vVar.f9634a, 0, 8);
            vVar.e(0);
            return new a(vVar.i(), vVar.n());
        }
    }

    public static c a(h hVar) {
        C0737e.a(hVar);
        v vVar = new v(16);
        if (a.a(hVar, vVar).f8302a != H.f7416a) {
            return null;
        }
        hVar.a(vVar.f9634a, 0, 4);
        vVar.e(0);
        int i2 = vVar.i();
        if (i2 != H.f7417b) {
            p.b("WavHeaderReader", "Unsupported RIFF format: " + i2);
            return null;
        }
        a a2 = a.a(hVar, vVar);
        while (a2.f8302a != H.f7418c) {
            hVar.a((int) a2.f8303b);
            a2 = a.a(hVar, vVar);
        }
        C0737e.b(a2.f8303b >= 16);
        hVar.a(vVar.f9634a, 0, 16);
        vVar.e(0);
        int p = vVar.p();
        int p2 = vVar.p();
        int o = vVar.o();
        int o2 = vVar.o();
        int p3 = vVar.p();
        int p4 = vVar.p();
        int i3 = (p2 * p4) / 8;
        if (p3 == i3) {
            int a3 = H.a(p, p4);
            if (a3 == 0) {
                p.b("WavHeaderReader", "Unsupported WAV format: " + p4 + " bit/sample, type " + p);
                return null;
            }
            hVar.a(((int) a2.f8303b) - 16);
            c cVar = new c(p2, o, o2, p3, p4, a3);
            return cVar;
        }
        throw new ParserException("Expected block alignment: " + i3 + "; got: " + p3);
    }

    public static void a(h hVar, c cVar) {
        C0737e.a(hVar);
        C0737e.a(cVar);
        hVar.b();
        v vVar = new v(8);
        a a2 = a.a(hVar, vVar);
        while (a2.f8302a != I.b("data")) {
            p.d("WavHeaderReader", "Ignoring unknown WAV chunk: " + a2.f8302a);
            long j2 = a2.f8303b + 8;
            if (a2.f8302a == I.b("RIFF")) {
                j2 = 12;
            }
            if (j2 <= 2147483647L) {
                hVar.c((int) j2);
                a2 = a.a(hVar, vVar);
            } else {
                throw new ParserException("Chunk is too large (~2GB+) to skip; id: " + a2.f8302a);
            }
        }
        hVar.c(8);
        cVar.a(hVar.getPosition(), a2.f8303b);
    }
}
