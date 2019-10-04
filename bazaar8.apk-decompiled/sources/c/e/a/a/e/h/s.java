package c.e.a.a.e.h;

import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.q;
import c.e.a.a.o.p;
import c.e.a.a.o.t;
import c.e.a.a.o.v;
import c.e.a.a.o.w;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.Collections;
import java.util.List;

/* compiled from: H265Reader */
public final class s implements o {

    /* renamed from: a  reason: collision with root package name */
    public final E f8214a;

    /* renamed from: b  reason: collision with root package name */
    public String f8215b;

    /* renamed from: c  reason: collision with root package name */
    public q f8216c;

    /* renamed from: d  reason: collision with root package name */
    public a f8217d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f8218e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean[] f8219f = new boolean[3];

    /* renamed from: g  reason: collision with root package name */
    public final w f8220g = new w(32, 128);

    /* renamed from: h  reason: collision with root package name */
    public final w f8221h = new w(33, 128);

    /* renamed from: i  reason: collision with root package name */
    public final w f8222i = new w(34, 128);

    /* renamed from: j  reason: collision with root package name */
    public final w f8223j = new w(39, 128);

    /* renamed from: k  reason: collision with root package name */
    public final w f8224k = new w(40, 128);

    /* renamed from: l  reason: collision with root package name */
    public long f8225l;
    public long m;
    public final v n = new v();

    /* compiled from: H265Reader */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final q f8226a;

        /* renamed from: b  reason: collision with root package name */
        public long f8227b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f8228c;

        /* renamed from: d  reason: collision with root package name */
        public int f8229d;

        /* renamed from: e  reason: collision with root package name */
        public long f8230e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f8231f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f8232g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f8233h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f8234i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f8235j;

        /* renamed from: k  reason: collision with root package name */
        public long f8236k;

        /* renamed from: l  reason: collision with root package name */
        public long f8237l;
        public boolean m;

        public a(q qVar) {
            this.f8226a = qVar;
        }

        public void a() {
            this.f8231f = false;
            this.f8232g = false;
            this.f8233h = false;
            this.f8234i = false;
            this.f8235j = false;
        }

        public void a(long j2, int i2, int i3, long j3) {
            this.f8232g = false;
            this.f8233h = false;
            this.f8230e = j3;
            this.f8229d = 0;
            this.f8227b = j2;
            boolean z = true;
            if (i3 >= 32) {
                if (!this.f8235j && this.f8234i) {
                    a(i2);
                    this.f8234i = false;
                }
                if (i3 <= 34) {
                    this.f8233h = !this.f8235j;
                    this.f8235j = true;
                }
            }
            this.f8228c = i3 >= 16 && i3 <= 21;
            if (!this.f8228c && i3 > 9) {
                z = false;
            }
            this.f8231f = z;
        }

        public void a(byte[] bArr, int i2, int i3) {
            if (this.f8231f) {
                int i4 = this.f8229d;
                int i5 = (i2 + 2) - i4;
                if (i5 < i3) {
                    this.f8232g = (bArr[i5] & 128) != 0;
                    this.f8231f = false;
                    return;
                }
                this.f8229d = i4 + (i3 - i2);
            }
        }

        public void a(long j2, int i2) {
            if (this.f8235j && this.f8232g) {
                this.m = this.f8228c;
                this.f8235j = false;
            } else if (this.f8233h || this.f8232g) {
                if (this.f8234i) {
                    a(i2 + ((int) (j2 - this.f8227b)));
                }
                this.f8236k = this.f8227b;
                this.f8237l = this.f8230e;
                this.f8234i = true;
                this.m = this.f8228c;
            }
        }

        public final void a(int i2) {
            boolean z = this.m;
            int i3 = (int) (this.f8227b - this.f8236k);
            this.f8226a.a(this.f8237l, z ? 1 : 0, i3, i2, null);
        }
    }

    public s(E e2) {
        this.f8214a = e2;
    }

    public void a() {
        t.a(this.f8219f);
        this.f8220g.b();
        this.f8221h.b();
        this.f8222i.b();
        this.f8223j.b();
        this.f8224k.b();
        this.f8217d.a();
        this.f8225l = 0;
    }

    public void b() {
    }

    public final void b(long j2, int i2, int i3, long j3) {
        if (this.f8218e) {
            this.f8217d.a(j2, i2, i3, j3);
        } else {
            this.f8220g.b(i3);
            this.f8221h.b(i3);
            this.f8222i.b(i3);
        }
        this.f8223j.b(i3);
        this.f8224k.b(i3);
    }

    public static void b(w wVar) {
        int f2 = wVar.f();
        boolean z = false;
        int i2 = 0;
        for (int i3 = 0; i3 < f2; i3++) {
            if (i3 != 0) {
                z = wVar.c();
            }
            if (z) {
                wVar.g();
                wVar.f();
                for (int i4 = 0; i4 <= i2; i4++) {
                    if (wVar.c()) {
                        wVar.g();
                    }
                }
            } else {
                int f3 = wVar.f();
                int f4 = wVar.f();
                int i5 = f3 + f4;
                for (int i6 = 0; i6 < f3; i6++) {
                    wVar.f();
                    wVar.g();
                }
                for (int i7 = 0; i7 < f4; i7++) {
                    wVar.f();
                    wVar.g();
                }
                i2 = i5;
            }
        }
    }

    public void a(i iVar, J.d dVar) {
        dVar.a();
        this.f8215b = dVar.b();
        this.f8216c = iVar.a(dVar.c(), 2);
        this.f8217d = new a(this.f8216c);
        this.f8214a.a(iVar, dVar);
    }

    public void a(long j2, int i2) {
        this.m = j2;
    }

    public void a(v vVar) {
        v vVar2 = vVar;
        while (vVar.a() > 0) {
            int c2 = vVar.c();
            int d2 = vVar.d();
            byte[] bArr = vVar2.f9634a;
            this.f8225l += (long) vVar.a();
            this.f8216c.a(vVar2, vVar.a());
            while (true) {
                if (c2 < d2) {
                    int a2 = t.a(bArr, c2, d2, this.f8219f);
                    if (a2 == d2) {
                        a(bArr, c2, d2);
                        return;
                    }
                    int a3 = t.a(bArr, a2);
                    int i2 = a2 - c2;
                    if (i2 > 0) {
                        a(bArr, c2, a2);
                    }
                    int i3 = d2 - a2;
                    long j2 = this.f8225l - ((long) i3);
                    int i4 = i2 < 0 ? -i2 : 0;
                    long j3 = j2;
                    int i5 = i3;
                    a(j3, i5, i4, this.m);
                    b(j3, i5, a3, this.m);
                    c2 = a2 + 3;
                }
            }
        }
    }

    public final void a(byte[] bArr, int i2, int i3) {
        if (this.f8218e) {
            this.f8217d.a(bArr, i2, i3);
        } else {
            this.f8220g.a(bArr, i2, i3);
            this.f8221h.a(bArr, i2, i3);
            this.f8222i.a(bArr, i2, i3);
        }
        this.f8223j.a(bArr, i2, i3);
        this.f8224k.a(bArr, i2, i3);
    }

    public final void a(long j2, int i2, int i3, long j3) {
        if (this.f8218e) {
            this.f8217d.a(j2, i2);
        } else {
            this.f8220g.a(i3);
            this.f8221h.a(i3);
            this.f8222i.a(i3);
            if (this.f8220g.a() && this.f8221h.a() && this.f8222i.a()) {
                this.f8216c.a(a(this.f8215b, this.f8220g, this.f8221h, this.f8222i));
                this.f8218e = true;
            }
        }
        if (this.f8223j.a(i3)) {
            w wVar = this.f8223j;
            this.n.a(this.f8223j.f8271d, t.c(wVar.f8271d, wVar.f8272e));
            this.n.f(5);
            this.f8214a.a(j3, this.n);
        }
        if (this.f8224k.a(i3)) {
            w wVar2 = this.f8224k;
            this.n.a(this.f8224k.f8271d, t.c(wVar2.f8271d, wVar2.f8272e));
            this.n.f(5);
            this.f8214a.a(j3, this.n);
        }
    }

    public static Format a(String str, w wVar, w wVar2, w wVar3) {
        float f2;
        w wVar4 = wVar;
        w wVar5 = wVar2;
        w wVar6 = wVar3;
        int i2 = wVar4.f8272e;
        byte[] bArr = new byte[(wVar5.f8272e + i2 + wVar6.f8272e)];
        System.arraycopy(wVar4.f8271d, 0, bArr, 0, i2);
        System.arraycopy(wVar5.f8271d, 0, bArr, wVar4.f8272e, wVar5.f8272e);
        System.arraycopy(wVar6.f8271d, 0, bArr, wVar4.f8272e + wVar5.f8272e, wVar6.f8272e);
        w wVar7 = new w(wVar5.f8271d, 0, wVar5.f8272e);
        wVar7.d(44);
        int b2 = wVar7.b(3);
        wVar7.g();
        wVar7.d(88);
        wVar7.d(8);
        int i3 = 0;
        for (int i4 = 0; i4 < b2; i4++) {
            if (wVar7.c()) {
                i3 += 89;
            }
            if (wVar7.c()) {
                i3 += 8;
            }
        }
        wVar7.d(i3);
        if (b2 > 0) {
            wVar7.d((8 - b2) * 2);
        }
        wVar7.f();
        int f3 = wVar7.f();
        if (f3 == 3) {
            wVar7.g();
        }
        int f4 = wVar7.f();
        int f5 = wVar7.f();
        if (wVar7.c()) {
            int f6 = wVar7.f();
            int f7 = wVar7.f();
            int f8 = wVar7.f();
            int f9 = wVar7.f();
            f4 -= ((f3 == 1 || f3 == 2) ? 2 : 1) * (f6 + f7);
            f5 -= (f3 == 1 ? 2 : 1) * (f8 + f9);
        }
        int i5 = f4;
        int i6 = f5;
        wVar7.f();
        wVar7.f();
        int f10 = wVar7.f();
        for (int i7 = wVar7.c() ? 0 : b2; i7 <= b2; i7++) {
            wVar7.f();
            wVar7.f();
            wVar7.f();
        }
        wVar7.f();
        wVar7.f();
        wVar7.f();
        wVar7.f();
        wVar7.f();
        wVar7.f();
        if (wVar7.c() && wVar7.c()) {
            a(wVar7);
        }
        wVar7.d(2);
        if (wVar7.c()) {
            wVar7.d(8);
            wVar7.f();
            wVar7.f();
            wVar7.g();
        }
        b(wVar7);
        if (wVar7.c()) {
            for (int i8 = 0; i8 < wVar7.f(); i8++) {
                wVar7.d(f10 + 4 + 1);
            }
        }
        wVar7.d(2);
        float f11 = 1.0f;
        if (wVar7.c() && wVar7.c()) {
            int b3 = wVar7.b(8);
            if (b3 == 255) {
                int b4 = wVar7.b(16);
                int b5 = wVar7.b(16);
                if (!(b4 == 0 || b5 == 0)) {
                    f11 = ((float) b4) / ((float) b5);
                }
                f2 = f11;
            } else {
                float[] fArr = t.f9612b;
                if (b3 < fArr.length) {
                    f2 = fArr[b3];
                } else {
                    p.d("H265Reader", "Unexpected aspect_ratio_idc value: " + b3);
                }
            }
            return Format.a(str, "video/hevc", (String) null, -1, -1, i5, i6, -1.0f, (List<byte[]>) Collections.singletonList(bArr), -1, f2, (DrmInitData) null);
        }
        f2 = 1.0f;
        return Format.a(str, "video/hevc", (String) null, -1, -1, i5, i6, -1.0f, (List<byte[]>) Collections.singletonList(bArr), -1, f2, (DrmInitData) null);
    }

    public static void a(w wVar) {
        for (int i2 = 0; i2 < 4; i2++) {
            int i3 = 0;
            while (i3 < 6) {
                if (!wVar.c()) {
                    wVar.f();
                } else {
                    int min = Math.min(64, 1 << ((i2 << 1) + 4));
                    if (i2 > 1) {
                        wVar.e();
                    }
                    for (int i4 = 0; i4 < min; i4++) {
                        wVar.e();
                    }
                }
                int i5 = 3;
                if (i2 != 3) {
                    i5 = 1;
                }
                i3 += i5;
            }
        }
    }
}
