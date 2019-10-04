package c.e.a.a.e.h;

import c.e.a.a.b.j;
import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.q;
import c.e.a.a.o.u;
import c.e.a.a.o.v;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.List;

/* renamed from: c.e.a.a.e.h.i  reason: case insensitive filesystem */
/* compiled from: Ac4Reader */
public final class C0707i implements o {

    /* renamed from: a  reason: collision with root package name */
    public final u f8106a;

    /* renamed from: b  reason: collision with root package name */
    public final v f8107b;

    /* renamed from: c  reason: collision with root package name */
    public final String f8108c;

    /* renamed from: d  reason: collision with root package name */
    public String f8109d;

    /* renamed from: e  reason: collision with root package name */
    public q f8110e;

    /* renamed from: f  reason: collision with root package name */
    public int f8111f;

    /* renamed from: g  reason: collision with root package name */
    public int f8112g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f8113h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f8114i;

    /* renamed from: j  reason: collision with root package name */
    public long f8115j;

    /* renamed from: k  reason: collision with root package name */
    public Format f8116k;

    /* renamed from: l  reason: collision with root package name */
    public int f8117l;
    public long m;

    public C0707i() {
        this(null);
    }

    public void a() {
        this.f8111f = 0;
        this.f8112g = 0;
        this.f8113h = false;
        this.f8114i = false;
    }

    public void b() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x002d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean b(c.e.a.a.o.v r6) {
        /*
            r5 = this;
        L_0x0000:
            int r0 = r6.a()
            r1 = 0
            if (r0 <= 0) goto L_0x0031
            boolean r0 = r5.f8113h
            r2 = 172(0xac, float:2.41E-43)
            r3 = 1
            if (r0 != 0) goto L_0x0018
            int r0 = r6.u()
            if (r0 != r2) goto L_0x0015
            r1 = 1
        L_0x0015:
            r5.f8113h = r1
            goto L_0x0000
        L_0x0018:
            int r0 = r6.u()
            if (r0 != r2) goto L_0x0020
            r2 = 1
            goto L_0x0021
        L_0x0020:
            r2 = 0
        L_0x0021:
            r5.f8113h = r2
            r2 = 64
            r4 = 65
            if (r0 == r2) goto L_0x002b
            if (r0 != r4) goto L_0x0000
        L_0x002b:
            if (r0 != r4) goto L_0x002e
            r1 = 1
        L_0x002e:
            r5.f8114i = r1
            return r3
        L_0x0031:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.e.h.C0707i.b(c.e.a.a.o.v):boolean");
    }

    public final void c() {
        this.f8106a.b(0);
        j.a a2 = j.a(this.f8106a);
        Format format = this.f8116k;
        if (format == null || a2.f7451c != format.v || a2.f7450b != format.w || !"audio/ac4".equals(format.f12514i)) {
            this.f8116k = Format.a(this.f8109d, "audio/ac4", (String) null, -1, -1, a2.f7451c, a2.f7450b, (List<byte[]>) null, (DrmInitData) null, 0, this.f8108c);
            this.f8110e.a(this.f8116k);
        }
        this.f8117l = a2.f7452d;
        this.f8115j = (((long) a2.f7453e) * RetryManager.NANOSECONDS_IN_MS) / ((long) this.f8116k.w);
    }

    public C0707i(String str) {
        this.f8106a = new u(new byte[16]);
        this.f8107b = new v(this.f8106a.f9630a);
        this.f8111f = 0;
        this.f8112g = 0;
        this.f8113h = false;
        this.f8114i = false;
        this.f8108c = str;
    }

    public void a(i iVar, J.d dVar) {
        dVar.a();
        this.f8109d = dVar.b();
        this.f8110e = iVar.a(dVar.c(), 1);
    }

    public void a(long j2, int i2) {
        this.m = j2;
    }

    public void a(v vVar) {
        while (vVar.a() > 0) {
            int i2 = this.f8111f;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        int min = Math.min(vVar.a(), this.f8117l - this.f8112g);
                        this.f8110e.a(vVar, min);
                        this.f8112g += min;
                        int i3 = this.f8112g;
                        int i4 = this.f8117l;
                        if (i3 == i4) {
                            this.f8110e.a(this.m, 1, i4, 0, null);
                            this.m += this.f8115j;
                            this.f8111f = 0;
                        }
                    }
                } else if (a(vVar, this.f8107b.f9634a, 16)) {
                    c();
                    this.f8107b.e(0);
                    this.f8110e.a(this.f8107b, 16);
                    this.f8111f = 2;
                }
            } else if (b(vVar)) {
                this.f8111f = 1;
                byte[] bArr = this.f8107b.f9634a;
                bArr[0] = -84;
                bArr[1] = (byte) (this.f8114i ? 65 : 64);
                this.f8112g = 2;
            }
        }
    }

    public final boolean a(v vVar, byte[] bArr, int i2) {
        int min = Math.min(vVar.a(), i2 - this.f8112g);
        vVar.a(bArr, this.f8112g, min);
        this.f8112g += min;
        return this.f8112g == i2;
    }
}
