package c.e.a.a.k.c;

import android.graphics.Bitmap;
import c.e.a.a.k.b;
import c.e.a.a.k.c;
import c.e.a.a.k.e;
import c.e.a.a.o.I;
import c.e.a.a.o.v;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;

/* compiled from: PgsDecoder */
public final class a extends c {
    public final v o = new v();
    public final v p = new v();
    public final C0117a q = new C0117a();
    public Inflater r;

    /* renamed from: c.e.a.a.k.c.a$a  reason: collision with other inner class name */
    /* compiled from: PgsDecoder */
    private static final class C0117a {

        /* renamed from: a  reason: collision with root package name */
        public final v f9183a = new v();

        /* renamed from: b  reason: collision with root package name */
        public final int[] f9184b = new int[256];

        /* renamed from: c  reason: collision with root package name */
        public boolean f9185c;

        /* renamed from: d  reason: collision with root package name */
        public int f9186d;

        /* renamed from: e  reason: collision with root package name */
        public int f9187e;

        /* renamed from: f  reason: collision with root package name */
        public int f9188f;

        /* renamed from: g  reason: collision with root package name */
        public int f9189g;

        /* renamed from: h  reason: collision with root package name */
        public int f9190h;

        /* renamed from: i  reason: collision with root package name */
        public int f9191i;

        public final void a(v vVar, int i2) {
            if (i2 >= 4) {
                vVar.f(3);
                int i3 = i2 - 4;
                if ((vVar.u() & 128) != 0) {
                    if (i3 >= 7) {
                        int x = vVar.x();
                        if (x >= 4) {
                            this.f9190h = vVar.A();
                            this.f9191i = vVar.A();
                            this.f9183a.c(x - 4);
                            i3 -= 7;
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                }
                int c2 = this.f9183a.c();
                int d2 = this.f9183a.d();
                if (c2 < d2 && i3 > 0) {
                    int min = Math.min(i3, d2 - c2);
                    vVar.a(this.f9183a.f9634a, c2, min);
                    this.f9183a.e(c2 + min);
                }
            }
        }

        public final void b(v vVar, int i2) {
            if (i2 >= 19) {
                this.f9186d = vVar.A();
                this.f9187e = vVar.A();
                vVar.f(11);
                this.f9188f = vVar.A();
                this.f9189g = vVar.A();
            }
        }

        public final void c(v vVar, int i2) {
            if (i2 % 5 == 2) {
                vVar.f(2);
                Arrays.fill(this.f9184b, 0);
                int i3 = i2 / 5;
                int i4 = 0;
                while (i4 < i3) {
                    int u = vVar.u();
                    int u2 = vVar.u();
                    int u3 = vVar.u();
                    int u4 = vVar.u();
                    int u5 = vVar.u();
                    double d2 = (double) u2;
                    double d3 = (double) (u3 - 128);
                    Double.isNaN(d3);
                    Double.isNaN(d2);
                    int i5 = i4;
                    double d4 = (double) (u4 - 128);
                    Double.isNaN(d4);
                    Double.isNaN(d2);
                    Double.isNaN(d3);
                    Double.isNaN(d4);
                    Double.isNaN(d2);
                    int[] iArr = this.f9184b;
                    int a2 = I.a((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), 0, 255) << 8;
                    iArr[u] = I.a((int) (d2 + (d4 * 1.772d)), 0, 255) | a2 | (u5 << 24) | (I.a((int) ((1.402d * d3) + d2), 0, 255) << 16);
                    i4 = i5 + 1;
                }
                this.f9185c = true;
            }
        }

        public void b() {
            this.f9186d = 0;
            this.f9187e = 0;
            this.f9188f = 0;
            this.f9189g = 0;
            this.f9190h = 0;
            this.f9191i = 0;
            this.f9183a.c(0);
            this.f9185c = false;
        }

        public b a() {
            int i2;
            int i3;
            int i4;
            if (this.f9186d == 0 || this.f9187e == 0 || this.f9190h == 0 || this.f9191i == 0 || this.f9183a.d() == 0 || this.f9183a.c() != this.f9183a.d() || !this.f9185c) {
                return null;
            }
            this.f9183a.e(0);
            int[] iArr = new int[(this.f9190h * this.f9191i)];
            int i5 = 0;
            while (i5 < iArr.length) {
                int u = this.f9183a.u();
                if (u != 0) {
                    i4 = i5 + 1;
                    iArr[i5] = this.f9184b[u];
                } else {
                    int u2 = this.f9183a.u();
                    if (u2 != 0) {
                        if ((u2 & 64) == 0) {
                            i2 = u2 & 63;
                        } else {
                            i2 = ((u2 & 63) << 8) | this.f9183a.u();
                        }
                        if ((u2 & 128) == 0) {
                            i3 = 0;
                        } else {
                            i3 = this.f9184b[this.f9183a.u()];
                        }
                        i4 = i2 + i5;
                        Arrays.fill(iArr, i5, i4, i3);
                    }
                }
                i5 = i4;
            }
            Bitmap createBitmap = Bitmap.createBitmap(iArr, this.f9190h, this.f9191i, Bitmap.Config.ARGB_8888);
            int i6 = this.f9186d;
            float f2 = ((float) this.f9188f) / ((float) i6);
            int i7 = this.f9187e;
            b bVar = new b(createBitmap, f2, 0, ((float) this.f9189g) / ((float) i7), 0, ((float) this.f9190h) / ((float) i6), ((float) this.f9191i) / ((float) i7));
            return bVar;
        }
    }

    public a() {
        super("PgsDecoder");
    }

    public e a(byte[] bArr, int i2, boolean z) {
        this.o.a(bArr, i2);
        a(this.o);
        this.q.b();
        ArrayList arrayList = new ArrayList();
        while (this.o.a() >= 3) {
            b a2 = a(this.o, this.q);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return new b(Collections.unmodifiableList(arrayList));
    }

    public final void a(v vVar) {
        if (vVar.a() > 0 && vVar.f() == 120) {
            if (this.r == null) {
                this.r = new Inflater();
            }
            if (I.a(vVar, this.p, this.r)) {
                v vVar2 = this.p;
                vVar.a(vVar2.f9634a, vVar2.d());
            }
        }
    }

    public static b a(v vVar, C0117a aVar) {
        int d2 = vVar.d();
        int u = vVar.u();
        int A = vVar.A();
        int c2 = vVar.c() + A;
        b bVar = null;
        if (c2 > d2) {
            vVar.e(d2);
            return null;
        }
        if (u != 128) {
            switch (u) {
                case 20:
                    aVar.c(vVar, A);
                    break;
                case 21:
                    aVar.a(vVar, A);
                    break;
                case 22:
                    aVar.b(vVar, A);
                    break;
            }
        } else {
            bVar = aVar.a();
            aVar.b();
        }
        vVar.e(c2);
        return bVar;
    }
}
