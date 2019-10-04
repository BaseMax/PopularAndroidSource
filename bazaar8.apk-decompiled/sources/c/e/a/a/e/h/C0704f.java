package c.e.a.a.e.h;

import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.j;
import c.e.a.a.e.n;
import c.e.a.a.e.o;
import c.e.a.a.o.I;
import c.e.a.a.o.v;

/* renamed from: c.e.a.a.e.h.f  reason: case insensitive filesystem */
/* compiled from: Ac3Extractor */
public final class C0704f implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f8082a = C0699a.f8077a;

    /* renamed from: b  reason: collision with root package name */
    public static final int f8083b = I.b("ID3");

    /* renamed from: c  reason: collision with root package name */
    public final long f8084c;

    /* renamed from: d  reason: collision with root package name */
    public final C0705g f8085d;

    /* renamed from: e  reason: collision with root package name */
    public final v f8086e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f8087f;

    public C0704f() {
        this(0);
    }

    public static /* synthetic */ g[] b() {
        return new g[]{new C0704f()};
    }

    public void a() {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0032, code lost:
        r8.b();
        r4 = r4 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x003b, code lost:
        if ((r4 - r3) < 8192) goto L_0x003e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x003d, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(c.e.a.a.e.h r8) {
        /*
            r7 = this;
            c.e.a.a.o.v r0 = new c.e.a.a.o.v
            r1 = 10
            r0.<init>((int) r1)
            r2 = 0
            r3 = 0
        L_0x0009:
            byte[] r4 = r0.f9634a
            r8.a(r4, r2, r1)
            r0.e(r2)
            int r4 = r0.x()
            int r5 = f8083b
            if (r4 == r5) goto L_0x0058
            r8.b()
            r8.a(r3)
            r4 = r3
        L_0x0020:
            r1 = 0
        L_0x0021:
            byte[] r5 = r0.f9634a
            r6 = 6
            r8.a(r5, r2, r6)
            r0.e(r2)
            int r5 = r0.A()
            r6 = 2935(0xb77, float:4.113E-42)
            if (r5 == r6) goto L_0x0042
            r8.b()
            int r4 = r4 + 1
            int r1 = r4 - r3
            r5 = 8192(0x2000, float:1.14794E-41)
            if (r1 < r5) goto L_0x003e
            return r2
        L_0x003e:
            r8.a(r4)
            goto L_0x0020
        L_0x0042:
            r5 = 1
            int r1 = r1 + r5
            r6 = 4
            if (r1 < r6) goto L_0x0048
            return r5
        L_0x0048:
            byte[] r5 = r0.f9634a
            int r5 = c.e.a.a.b.C0695h.a((byte[]) r5)
            r6 = -1
            if (r5 != r6) goto L_0x0052
            return r2
        L_0x0052:
            int r5 = r5 + -6
            r8.a(r5)
            goto L_0x0021
        L_0x0058:
            r4 = 3
            r0.f(r4)
            int r4 = r0.t()
            int r5 = r4 + 10
            int r3 = r3 + r5
            r8.a(r4)
            goto L_0x0009
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.e.h.C0704f.a(c.e.a.a.e.h):boolean");
    }

    public C0704f(long j2) {
        this.f8084c = j2;
        this.f8085d = new C0705g();
        this.f8086e = new v(2786);
    }

    public void a(i iVar) {
        this.f8085d.a(iVar, new J.d(0, 1));
        iVar.a();
        iVar.a(new o.b(-9223372036854775807L));
    }

    public void a(long j2, long j3) {
        this.f8087f = false;
        this.f8085d.a();
    }

    public int a(h hVar, n nVar) {
        int read = hVar.read(this.f8086e.f9634a, 0, 2786);
        if (read == -1) {
            return -1;
        }
        this.f8086e.e(0);
        this.f8086e.d(read);
        if (!this.f8087f) {
            this.f8085d.a(this.f8084c, 4);
            this.f8087f = true;
        }
        this.f8085d.a(this.f8086e);
        return 0;
    }
}
