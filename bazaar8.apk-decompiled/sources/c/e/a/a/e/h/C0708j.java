package c.e.a.a.e.h;

import c.e.a.a.e.c;
import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.j;
import c.e.a.a.e.n;
import c.e.a.a.e.o;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.u;
import c.e.a.a.o.v;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.exoplayer2.ParserException;

/* renamed from: c.e.a.a.e.h.j  reason: case insensitive filesystem */
/* compiled from: AdtsExtractor */
public final class C0708j implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f8118a = C0701c.f8079a;

    /* renamed from: b  reason: collision with root package name */
    public static final int f8119b = I.b("ID3");

    /* renamed from: c  reason: collision with root package name */
    public final int f8120c;

    /* renamed from: d  reason: collision with root package name */
    public final C0709k f8121d;

    /* renamed from: e  reason: collision with root package name */
    public final v f8122e;

    /* renamed from: f  reason: collision with root package name */
    public final v f8123f;

    /* renamed from: g  reason: collision with root package name */
    public final u f8124g;

    /* renamed from: h  reason: collision with root package name */
    public final long f8125h;

    /* renamed from: i  reason: collision with root package name */
    public i f8126i;

    /* renamed from: j  reason: collision with root package name */
    public long f8127j;

    /* renamed from: k  reason: collision with root package name */
    public long f8128k;

    /* renamed from: l  reason: collision with root package name */
    public int f8129l;
    public boolean m;
    public boolean n;
    public boolean o;

    public C0708j() {
        this(0);
    }

    public static /* synthetic */ g[] b() {
        return new g[]{new C0708j()};
    }

    public void a() {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x0021, code lost:
        r9.b();
        r3 = r3 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x002a, code lost:
        if ((r3 - r0) < 8192) goto L_0x002d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x002c, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(c.e.a.a.e.h r9) {
        /*
            r8 = this;
            int r0 = r8.c(r9)
            r1 = 0
            r3 = r0
        L_0x0006:
            r2 = 0
            r4 = 0
        L_0x0008:
            c.e.a.a.o.v r5 = r8.f8123f
            byte[] r5 = r5.f9634a
            r6 = 2
            r9.a(r5, r1, r6)
            c.e.a.a.o.v r5 = r8.f8123f
            r5.e(r1)
            c.e.a.a.o.v r5 = r8.f8123f
            int r5 = r5.A()
            boolean r5 = c.e.a.a.e.h.C0709k.a((int) r5)
            if (r5 != 0) goto L_0x0031
            r9.b()
            int r3 = r3 + 1
            int r2 = r3 - r0
            r4 = 8192(0x2000, float:1.14794E-41)
            if (r2 < r4) goto L_0x002d
            return r1
        L_0x002d:
            r9.a(r3)
            goto L_0x0006
        L_0x0031:
            r5 = 1
            int r2 = r2 + r5
            r6 = 4
            if (r2 < r6) goto L_0x003b
            r7 = 188(0xbc, float:2.63E-43)
            if (r4 <= r7) goto L_0x003b
            return r5
        L_0x003b:
            c.e.a.a.o.v r5 = r8.f8123f
            byte[] r5 = r5.f9634a
            r9.a(r5, r1, r6)
            c.e.a.a.o.u r5 = r8.f8124g
            r6 = 14
            r5.b(r6)
            c.e.a.a.o.u r5 = r8.f8124g
            r6 = 13
            int r5 = r5.a((int) r6)
            r6 = 6
            if (r5 > r6) goto L_0x0055
            return r1
        L_0x0055:
            int r6 = r5 + -6
            r9.a(r6)
            int r4 = r4 + r5
            goto L_0x0008
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.e.h.C0708j.a(c.e.a.a.e.h):boolean");
    }

    public final int c(h hVar) {
        int i2 = 0;
        while (true) {
            hVar.a(this.f8123f.f9634a, 0, 10);
            this.f8123f.e(0);
            if (this.f8123f.x() != f8119b) {
                break;
            }
            this.f8123f.f(3);
            int t = this.f8123f.t();
            i2 += t + 10;
            hVar.a(t);
        }
        hVar.b();
        hVar.a(i2);
        if (this.f8128k == -1) {
            this.f8128k = (long) i2;
        }
        return i2;
    }

    public C0708j(long j2) {
        this(j2, 0);
    }

    public final void b(h hVar) {
        if (!this.m) {
            this.f8129l = -1;
            hVar.b();
            long j2 = 0;
            if (hVar.getPosition() == 0) {
                c(hVar);
            }
            int i2 = 0;
            while (true) {
                if (!hVar.b(this.f8123f.f9634a, 0, 2, true)) {
                    break;
                }
                this.f8123f.e(0);
                if (!C0709k.a(this.f8123f.A())) {
                    i2 = 0;
                    break;
                } else if (!hVar.b(this.f8123f.f9634a, 0, 4, true)) {
                    break;
                } else {
                    this.f8124g.b(14);
                    int a2 = this.f8124g.a(13);
                    if (a2 > 6) {
                        j2 += (long) a2;
                        i2++;
                        if (i2 != 1000) {
                            if (!hVar.a(a2 - 6, true)) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        this.m = true;
                        throw new ParserException("Malformed ADTS stream");
                    }
                }
            }
            hVar.b();
            if (i2 > 0) {
                this.f8129l = (int) (j2 / ((long) i2));
            } else {
                this.f8129l = -1;
            }
            this.m = true;
        }
    }

    public C0708j(long j2, int i2) {
        this.f8125h = j2;
        this.f8127j = j2;
        this.f8120c = i2;
        this.f8121d = new C0709k(true);
        this.f8122e = new v(2048);
        this.f8129l = -1;
        this.f8128k = -1;
        this.f8123f = new v(10);
        this.f8124g = new u(this.f8123f.f9634a);
    }

    public void a(i iVar) {
        this.f8126i = iVar;
        this.f8121d.a(iVar, new J.d(0, 1));
        iVar.a();
    }

    public void a(long j2, long j3) {
        this.n = false;
        this.f8121d.a();
        this.f8127j = this.f8125h + j3;
    }

    public int a(h hVar, n nVar) {
        long length = hVar.getLength();
        boolean z = ((this.f8120c & 1) == 0 || length == -1) ? false : true;
        if (z) {
            b(hVar);
        }
        int read = hVar.read(this.f8122e.f9634a, 0, 2048);
        boolean z2 = read == -1;
        a(length, z, z2);
        if (z2) {
            return -1;
        }
        this.f8122e.e(0);
        this.f8122e.d(read);
        if (!this.n) {
            this.f8121d.a(this.f8127j, 4);
            this.n = true;
        }
        this.f8121d.a(this.f8122e);
        return 0;
    }

    public final void a(long j2, boolean z, boolean z2) {
        if (!this.o) {
            boolean z3 = z && this.f8129l > 0;
            if (!z3 || this.f8121d.c() != -9223372036854775807L || z2) {
                i iVar = this.f8126i;
                C0737e.a(iVar);
                i iVar2 = iVar;
                if (!z3 || this.f8121d.c() == -9223372036854775807L) {
                    iVar2.a(new o.b(-9223372036854775807L));
                } else {
                    iVar2.a(a(j2));
                }
                this.o = true;
            }
        }
    }

    public final o a(long j2) {
        long j3 = j2;
        c cVar = new c(j3, this.f8128k, a(this.f8129l, this.f8121d.c()), this.f8129l);
        return cVar;
    }

    public static int a(int i2, long j2) {
        return (int) ((((long) (i2 * 8)) * RetryManager.NANOSECONDS_IN_MS) / j2);
    }
}
