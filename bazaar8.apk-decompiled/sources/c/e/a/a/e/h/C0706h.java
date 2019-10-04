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

/* renamed from: c.e.a.a.e.h.h  reason: case insensitive filesystem */
/* compiled from: Ac4Extractor */
public final class C0706h implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f8100a = C0700b.f8078a;

    /* renamed from: b  reason: collision with root package name */
    public static final int f8101b = I.b("ID3");

    /* renamed from: c  reason: collision with root package name */
    public final long f8102c;

    /* renamed from: d  reason: collision with root package name */
    public final C0707i f8103d;

    /* renamed from: e  reason: collision with root package name */
    public final v f8104e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f8105f;

    public C0706h() {
        this(0);
    }

    public static /* synthetic */ g[] b() {
        return new g[]{new C0706h()};
    }

    public void a() {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0041, code lost:
        if ((r4 - r3) < 8192) goto L_0x0044;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0043, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0038, code lost:
        r9.b();
        r4 = r4 + 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(c.e.a.a.e.h r9) {
        /*
            r8 = this;
            c.e.a.a.o.v r0 = new c.e.a.a.o.v
            r1 = 10
            r0.<init>((int) r1)
            r2 = 0
            r3 = 0
        L_0x0009:
            byte[] r4 = r0.f9634a
            r9.a(r4, r2, r1)
            r0.e(r2)
            int r4 = r0.x()
            int r5 = f8101b
            if (r4 == r5) goto L_0x005e
            r9.b()
            r9.a(r3)
            r4 = r3
        L_0x0020:
            r1 = 0
        L_0x0021:
            byte[] r5 = r0.f9634a
            r6 = 7
            r9.a(r5, r2, r6)
            r0.e(r2)
            int r5 = r0.A()
            r6 = 44096(0xac40, float:6.1792E-41)
            if (r5 == r6) goto L_0x0048
            r6 = 44097(0xac41, float:6.1793E-41)
            if (r5 == r6) goto L_0x0048
            r9.b()
            int r4 = r4 + 1
            int r1 = r4 - r3
            r5 = 8192(0x2000, float:1.14794E-41)
            if (r1 < r5) goto L_0x0044
            return r2
        L_0x0044:
            r9.a(r4)
            goto L_0x0020
        L_0x0048:
            r6 = 1
            int r1 = r1 + r6
            r7 = 4
            if (r1 < r7) goto L_0x004e
            return r6
        L_0x004e:
            byte[] r6 = r0.f9634a
            int r5 = c.e.a.a.b.j.a((byte[]) r6, (int) r5)
            r6 = -1
            if (r5 != r6) goto L_0x0058
            return r2
        L_0x0058:
            int r5 = r5 + -7
            r9.a(r5)
            goto L_0x0021
        L_0x005e:
            r4 = 3
            r0.f(r4)
            int r4 = r0.t()
            int r5 = r4 + 10
            int r3 = r3 + r5
            r9.a(r4)
            goto L_0x0009
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.e.h.C0706h.a(c.e.a.a.e.h):boolean");
    }

    public C0706h(long j2) {
        this.f8102c = j2;
        this.f8103d = new C0707i();
        this.f8104e = new v(16384);
    }

    public void a(i iVar) {
        this.f8103d.a(iVar, new J.d(0, 1));
        iVar.a();
        iVar.a(new o.b(-9223372036854775807L));
    }

    public void a(long j2, long j3) {
        this.f8105f = false;
        this.f8103d.a();
    }

    public int a(h hVar, n nVar) {
        int read = hVar.read(this.f8104e.f9634a, 0, 16384);
        if (read == -1) {
            return -1;
        }
        this.f8104e.e(0);
        this.f8104e.d(read);
        if (!this.f8105f) {
            this.f8103d.a(this.f8102c, 4);
            this.f8105f = true;
        }
        this.f8103d.a(this.f8104e);
        return 0;
    }
}
