package c.e.a.a.e.d;

import c.e.a.a.e.g;
import c.e.a.a.e.i;
import c.e.a.a.e.j;
import c.e.a.a.e.k;
import c.e.a.a.e.l;
import c.e.a.a.e.m;
import c.e.a.a.e.n;
import c.e.a.a.e.o;
import c.e.a.a.e.q;
import c.e.a.a.g.c.h;
import c.e.a.a.o.I;
import c.e.a.a.o.v;
import com.crashlytics.android.answers.RetryManager;
import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import java.io.EOFException;
import java.util.List;

/* compiled from: Mp3Extractor */
public final class e implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f7719a = a.f7714a;

    /* renamed from: b  reason: collision with root package name */
    public static final h.a f7720b = b.f7715a;

    /* renamed from: c  reason: collision with root package name */
    public static final int f7721c = I.b("Xing");

    /* renamed from: d  reason: collision with root package name */
    public static final int f7722d = I.b("Info");

    /* renamed from: e  reason: collision with root package name */
    public static final int f7723e = I.b("VBRI");

    /* renamed from: f  reason: collision with root package name */
    public final int f7724f;

    /* renamed from: g  reason: collision with root package name */
    public final long f7725g;

    /* renamed from: h  reason: collision with root package name */
    public final v f7726h;

    /* renamed from: i  reason: collision with root package name */
    public final m f7727i;

    /* renamed from: j  reason: collision with root package name */
    public final k f7728j;

    /* renamed from: k  reason: collision with root package name */
    public final l f7729k;

    /* renamed from: l  reason: collision with root package name */
    public i f7730l;
    public q m;
    public int n;
    public Metadata o;
    public a p;
    public long q;
    public long r;
    public int s;

    /* compiled from: Mp3Extractor */
    interface a extends o {
        long a(long j2);

        long b();
    }

    public e() {
        this(0);
    }

    public static /* synthetic */ boolean a(int i2, int i3, int i4, int i5, int i6) {
        return (i3 == 67 && i4 == 79 && i5 == 77 && (i6 == 77 || i2 == 2)) || (i3 == 77 && i4 == 76 && i5 == 76 && (i6 == 84 || i2 == 2));
    }

    public static boolean a(int i2, long j2) {
        return ((long) (i2 & -128000)) == (j2 & -128000);
    }

    public static /* synthetic */ g[] b() {
        return new g[]{new e()};
    }

    public void a() {
    }

    public boolean a(c.e.a.a.e.h hVar) {
        return a(hVar, true);
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0039  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final c.e.a.a.e.d.e.a c(c.e.a.a.e.h r10) {
        /*
            r9 = this;
            c.e.a.a.o.v r5 = new c.e.a.a.o.v
            c.e.a.a.e.m r0 = r9.f7727i
            int r0 = r0.f8317j
            r5.<init>((int) r0)
            byte[] r0 = r5.f9634a
            c.e.a.a.e.m r1 = r9.f7727i
            int r1 = r1.f8317j
            r6 = 0
            r10.a(r0, r6, r1)
            c.e.a.a.e.m r0 = r9.f7727i
            int r1 = r0.f8315h
            r2 = 1
            r1 = r1 & r2
            r3 = 21
            if (r1 == 0) goto L_0x0026
            int r0 = r0.f8319l
            if (r0 == r2) goto L_0x002a
            r3 = 36
            r7 = 36
            goto L_0x0031
        L_0x0026:
            int r0 = r0.f8319l
            if (r0 == r2) goto L_0x002d
        L_0x002a:
            r7 = 21
            goto L_0x0031
        L_0x002d:
            r3 = 13
            r7 = 13
        L_0x0031:
            int r8 = a((c.e.a.a.o.v) r5, (int) r7)
            int r0 = f7721c
            if (r8 == r0) goto L_0x005d
            int r0 = f7722d
            if (r8 != r0) goto L_0x003e
            goto L_0x005d
        L_0x003e:
            int r0 = f7723e
            if (r8 != r0) goto L_0x0058
            long r0 = r10.getLength()
            long r2 = r10.getPosition()
            c.e.a.a.e.m r4 = r9.f7727i
            c.e.a.a.e.d.f r0 = c.e.a.a.e.d.f.a(r0, r2, r4, r5)
            c.e.a.a.e.m r1 = r9.f7727i
            int r1 = r1.f8317j
            r10.c(r1)
            goto L_0x00ad
        L_0x0058:
            r0 = 0
            r10.b()
            goto L_0x00ad
        L_0x005d:
            long r0 = r10.getLength()
            long r2 = r10.getPosition()
            c.e.a.a.e.m r4 = r9.f7727i
            c.e.a.a.e.d.g r0 = c.e.a.a.e.d.g.a(r0, r2, r4, r5)
            if (r0 == 0) goto L_0x0095
            c.e.a.a.e.k r1 = r9.f7728j
            boolean r1 = r1.a()
            if (r1 != 0) goto L_0x0095
            r10.b()
            int r7 = r7 + 141
            r10.a(r7)
            c.e.a.a.o.v r1 = r9.f7726h
            byte[] r1 = r1.f9634a
            r2 = 3
            r10.a(r1, r6, r2)
            c.e.a.a.o.v r1 = r9.f7726h
            r1.e(r6)
            c.e.a.a.e.k r1 = r9.f7728j
            c.e.a.a.o.v r2 = r9.f7726h
            int r2 = r2.x()
            r1.a((int) r2)
        L_0x0095:
            c.e.a.a.e.m r1 = r9.f7727i
            int r1 = r1.f8317j
            r10.c(r1)
            if (r0 == 0) goto L_0x00ad
            boolean r1 = r0.c()
            if (r1 != 0) goto L_0x00ad
            int r1 = f7722d
            if (r8 != r1) goto L_0x00ad
            c.e.a.a.e.d.e$a r10 = r9.b(r10)
            return r10
        L_0x00ad:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.e.d.e.c(c.e.a.a.e.h):c.e.a.a.e.d.e$a");
    }

    public final boolean d(c.e.a.a.e.h hVar) {
        a aVar = this.p;
        if (aVar != null) {
            long b2 = aVar.b();
            if (b2 != -1 && hVar.a() > b2 - 4) {
                return true;
            }
        }
        try {
            return !hVar.b(this.f7726h.f9634a, 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    public final int e(c.e.a.a.e.h hVar) {
        if (this.s == 0) {
            hVar.b();
            if (d(hVar)) {
                return -1;
            }
            this.f7726h.e(0);
            int i2 = this.f7726h.i();
            if (!a(i2, (long) this.n) || m.a(i2) == -1) {
                hVar.c(1);
                this.n = 0;
                return 0;
            }
            m.a(i2, this.f7727i);
            if (this.q == -9223372036854775807L) {
                this.q = this.p.a(hVar.getPosition());
                if (this.f7725g != -9223372036854775807L) {
                    this.q += this.f7725g - this.p.a(0);
                }
            }
            this.s = this.f7727i.f8317j;
        }
        int a2 = this.m.a(hVar, this.s, true);
        if (a2 == -1) {
            return -1;
        }
        this.s -= a2;
        if (this.s > 0) {
            return 0;
        }
        long j2 = this.q;
        long j3 = this.r * RetryManager.NANOSECONDS_IN_MS;
        m mVar = this.f7727i;
        this.m.a(j2 + (j3 / ((long) mVar.f8318k)), 1, mVar.f8317j, 0, null);
        this.r += (long) this.f7727i.n;
        this.s = 0;
        return 0;
    }

    public e(int i2) {
        this(i2, -9223372036854775807L);
    }

    public void a(i iVar) {
        this.f7730l = iVar;
        this.m = this.f7730l.a(0, 1);
        this.f7730l.a();
    }

    public final a b(c.e.a.a.e.h hVar) {
        hVar.a(this.f7726h.f9634a, 0, 4);
        this.f7726h.e(0);
        m.a(this.f7726h.i(), this.f7727i);
        c cVar = new c(hVar.getLength(), hVar.getPosition(), this.f7727i);
        return cVar;
    }

    public e(int i2, long j2) {
        this.f7724f = i2;
        this.f7725g = j2;
        this.f7726h = new v(10);
        this.f7727i = new m();
        this.f7728j = new k();
        this.q = -9223372036854775807L;
        this.f7729k = new l();
    }

    public void a(long j2, long j3) {
        this.n = 0;
        this.q = -9223372036854775807L;
        this.r = 0;
        this.s = 0;
    }

    public int a(c.e.a.a.e.h hVar, n nVar) {
        if (this.n == 0) {
            try {
                a(hVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        } else {
            c.e.a.a.e.h hVar2 = hVar;
        }
        if (this.p == null) {
            a c2 = c(hVar);
            d a2 = a(this.o, hVar.getPosition());
            if (a2 != null) {
                this.p = a2;
            } else if (c2 != null) {
                this.p = c2;
            }
            a aVar = this.p;
            if (aVar == null || (!aVar.c() && (this.f7724f & 1) != 0)) {
                this.p = b(hVar);
            }
            this.f7730l.a(this.p);
            q qVar = this.m;
            m mVar = this.f7727i;
            String str = mVar.f8316i;
            int i2 = mVar.f8319l;
            int i3 = mVar.f8318k;
            k kVar = this.f7728j;
            qVar.a(Format.a((String) null, str, (String) null, -1, (int) CodedOutputStream.DEFAULT_BUFFER_SIZE, i2, i3, -1, kVar.f8305b, kVar.f8306c, (List<byte[]>) null, (DrmInitData) null, 0, (String) null, (this.f7724f & 2) != 0 ? null : this.o));
        }
        return e(hVar);
    }

    public final boolean a(c.e.a.a.e.h hVar, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        h.a aVar;
        int i7 = z ? 16384 : 131072;
        hVar.b();
        if (hVar.getPosition() == 0) {
            if ((this.f7724f & 2) == 0) {
                aVar = null;
            } else {
                aVar = f7720b;
            }
            this.o = this.f7729k.a(hVar, aVar);
            Metadata metadata = this.o;
            if (metadata != null) {
                this.f7728j.a(metadata);
            }
            int a2 = (int) hVar.a();
            if (!z) {
                hVar.c(a2);
            }
            i2 = a2;
            i5 = 0;
            i4 = 0;
            i3 = 0;
        } else {
            i5 = 0;
            i4 = 0;
            i3 = 0;
            i2 = 0;
        }
        while (true) {
            if (!d(hVar)) {
                this.f7726h.e(0);
                int i8 = this.f7726h.i();
                if (i5 == 0 || a(i8, (long) i5)) {
                    int a3 = m.a(i8);
                    if (a3 != -1) {
                        i6 = i4 + 1;
                        if (i6 != 1) {
                            if (i6 == 4) {
                                break;
                            }
                        } else {
                            m.a(i8, this.f7727i);
                            i5 = i8;
                        }
                        hVar.a(a3 - 4);
                    }
                }
                int i9 = i3 + 1;
                if (i3 != i7) {
                    if (z) {
                        hVar.b();
                        hVar.a(i2 + i9);
                    } else {
                        hVar.c(1);
                    }
                    i3 = i9;
                    i5 = 0;
                    i6 = 0;
                } else if (z) {
                    return false;
                } else {
                    throw new ParserException("Searched too many bytes.");
                }
            } else if (i4 <= 0) {
                throw new EOFException();
            }
        }
        if (z) {
            hVar.c(i2 + i3);
        } else {
            hVar.b();
        }
        this.n = i5;
        return true;
    }

    public static int a(v vVar, int i2) {
        if (vVar.d() >= i2 + 4) {
            vVar.e(i2);
            int i3 = vVar.i();
            if (i3 == f7721c || i3 == f7722d) {
                return i3;
            }
        }
        if (vVar.d() >= 40) {
            vVar.e(36);
            int i4 = vVar.i();
            int i5 = f7723e;
            if (i4 == i5) {
                return i5;
            }
        }
        return 0;
    }

    public static d a(Metadata metadata, long j2) {
        if (metadata != null) {
            int a2 = metadata.a();
            for (int i2 = 0; i2 < a2; i2++) {
                Metadata.Entry a3 = metadata.a(i2);
                if (a3 instanceof MlltFrame) {
                    return d.a(j2, (MlltFrame) a3);
                }
            }
        }
        return null;
    }
}
