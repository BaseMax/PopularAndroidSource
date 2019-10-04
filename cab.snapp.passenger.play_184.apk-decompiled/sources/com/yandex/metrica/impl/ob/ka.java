package com.yandex.metrica.impl.ob;

import java.io.IOException;
import java.util.Arrays;

public interface ka {

    public static final class a extends e {
        private static volatile a[] k;

        /* renamed from: b  reason: collision with root package name */
        public int f6187b;
        public int c;
        public int d;
        public int e;
        public int f;
        public String g;
        public boolean h;
        public int i;
        public int j;

        public static a[] d() {
            if (k == null) {
                synchronized (c.f5913a) {
                    if (k == null) {
                        k = new a[0];
                    }
                }
            }
            return k;
        }

        public a() {
            e();
        }

        public final a e() {
            this.f6187b = -1;
            this.c = 0;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = "";
            this.h = false;
            this.i = 0;
            this.j = -1;
            this.f5940a = -1;
            return this;
        }

        public final void a(b bVar) throws IOException {
            int i2 = this.f6187b;
            if (i2 != -1) {
                bVar.b(1, i2);
            }
            int i3 = this.c;
            if (i3 != 0) {
                bVar.c(2, i3);
            }
            int i4 = this.d;
            if (i4 != -1) {
                bVar.b(3, i4);
            }
            int i5 = this.e;
            if (i5 != -1) {
                bVar.b(4, i5);
            }
            int i6 = this.f;
            if (i6 != -1) {
                bVar.b(5, i6);
            }
            if (!this.g.equals("")) {
                bVar.a(6, this.g);
            }
            boolean z = this.h;
            if (z) {
                bVar.a(7, z);
            }
            int i7 = this.i;
            if (i7 != 0) {
                bVar.a(8, i7);
            }
            int i8 = this.j;
            if (i8 != -1) {
                bVar.b(9, i8);
            }
            super.a(bVar);
        }

        /* access modifiers changed from: protected */
        public final int c() {
            int c2 = super.c();
            int i2 = this.f6187b;
            if (i2 != -1) {
                c2 += b.e(1, i2);
            }
            int i3 = this.c;
            if (i3 != 0) {
                c2 += b.f(2, i3);
            }
            int i4 = this.d;
            if (i4 != -1) {
                c2 += b.e(3, i4);
            }
            int i5 = this.e;
            if (i5 != -1) {
                c2 += b.e(4, i5);
            }
            int i6 = this.f;
            if (i6 != -1) {
                c2 += b.e(5, i6);
            }
            if (!this.g.equals("")) {
                c2 += b.b(6, this.g);
            }
            if (this.h) {
                c2 += b.f(7);
            }
            int i7 = this.i;
            if (i7 != 0) {
                c2 += b.d(8, i7);
            }
            int i8 = this.j;
            return i8 != -1 ? c2 + b.e(9, i8) : c2;
        }

        /* renamed from: b */
        public final a a(a aVar) throws IOException {
            while (true) {
                int a2 = aVar.a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 8) {
                    this.f6187b = aVar.k();
                } else if (a2 == 16) {
                    this.c = aVar.l();
                } else if (a2 == 24) {
                    this.d = aVar.k();
                } else if (a2 == 32) {
                    this.e = aVar.k();
                } else if (a2 == 40) {
                    this.f = aVar.k();
                } else if (a2 == 50) {
                    this.g = aVar.i();
                } else if (a2 == 56) {
                    this.h = aVar.h();
                } else if (a2 == 64) {
                    int g2 = aVar.g();
                    if (g2 == 0 || g2 == 1 || g2 == 2 || g2 == 3 || g2 == 4) {
                        this.i = g2;
                    }
                } else if (a2 == 72) {
                    this.j = aVar.k();
                } else if (!g.a(aVar, a2)) {
                    return this;
                }
            }
        }
    }

    public static final class b extends e {

        /* renamed from: b  reason: collision with root package name */
        public C0111b[] f6188b;
        public a[] c;

        public static final class a extends e {
            private static volatile a[] f;

            /* renamed from: b  reason: collision with root package name */
            public long f6189b;
            public long c;
            public a[] d;
            public d[] e;

            public static a[] d() {
                if (f == null) {
                    synchronized (c.f5913a) {
                        if (f == null) {
                            f = new a[0];
                        }
                    }
                }
                return f;
            }

            public a() {
                e();
            }

            public final a e() {
                this.f6189b = 0;
                this.c = 0;
                this.d = a.d();
                this.e = d.d();
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                bVar.a(1, this.f6189b);
                bVar.a(2, this.c);
                a[] aVarArr = this.d;
                int i = 0;
                if (aVarArr != null && aVarArr.length > 0) {
                    int i2 = 0;
                    while (true) {
                        a[] aVarArr2 = this.d;
                        if (i2 >= aVarArr2.length) {
                            break;
                        }
                        a aVar = aVarArr2[i2];
                        if (aVar != null) {
                            bVar.a(3, (e) aVar);
                        }
                        i2++;
                    }
                }
                d[] dVarArr = this.e;
                if (dVarArr != null && dVarArr.length > 0) {
                    while (true) {
                        d[] dVarArr2 = this.e;
                        if (i >= dVarArr2.length) {
                            break;
                        }
                        d dVar = dVarArr2[i];
                        if (dVar != null) {
                            bVar.a(4, (e) dVar);
                        }
                        i++;
                    }
                }
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                int c2 = super.c() + b.c(1, this.f6189b) + b.c(2, this.c);
                a[] aVarArr = this.d;
                int i = 0;
                if (aVarArr != null && aVarArr.length > 0) {
                    int i2 = c2;
                    int i3 = 0;
                    while (true) {
                        a[] aVarArr2 = this.d;
                        if (i3 >= aVarArr2.length) {
                            break;
                        }
                        a aVar = aVarArr2[i3];
                        if (aVar != null) {
                            i2 += b.b(3, (e) aVar);
                        }
                        i3++;
                    }
                    c2 = i2;
                }
                d[] dVarArr = this.e;
                if (dVarArr != null && dVarArr.length > 0) {
                    while (true) {
                        d[] dVarArr2 = this.e;
                        if (i >= dVarArr2.length) {
                            break;
                        }
                        d dVar = dVarArr2[i];
                        if (dVar != null) {
                            c2 += b.b(4, (e) dVar);
                        }
                        i++;
                    }
                }
                return c2;
            }

            /* renamed from: b */
            public final a a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 8) {
                        this.f6189b = aVar.e();
                    } else if (a2 == 16) {
                        this.c = aVar.e();
                    } else if (a2 == 26) {
                        int b2 = g.b(aVar, 26);
                        a[] aVarArr = this.d;
                        int length = aVarArr == null ? 0 : aVarArr.length;
                        a[] aVarArr2 = new a[(b2 + length)];
                        if (length != 0) {
                            System.arraycopy(this.d, 0, aVarArr2, 0, length);
                        }
                        while (length < aVarArr2.length - 1) {
                            aVarArr2[length] = new a();
                            aVar.a((e) aVarArr2[length]);
                            aVar.a();
                            length++;
                        }
                        aVarArr2[length] = new a();
                        aVar.a((e) aVarArr2[length]);
                        this.d = aVarArr2;
                    } else if (a2 == 34) {
                        int b3 = g.b(aVar, 34);
                        d[] dVarArr = this.e;
                        int length2 = dVarArr == null ? 0 : dVarArr.length;
                        d[] dVarArr2 = new d[(b3 + length2)];
                        if (length2 != 0) {
                            System.arraycopy(this.e, 0, dVarArr2, 0, length2);
                        }
                        while (length2 < dVarArr2.length - 1) {
                            dVarArr2[length2] = new d();
                            aVar.a((e) dVarArr2[length2]);
                            aVar.a();
                            length2++;
                        }
                        dVarArr2[length2] = new d();
                        aVar.a((e) dVarArr2[length2]);
                        this.e = dVarArr2;
                    } else if (!g.a(aVar, a2)) {
                        return this;
                    }
                }
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.ka$b$b  reason: collision with other inner class name */
        public static final class C0111b extends e {
            private static volatile C0111b[] m;

            /* renamed from: b  reason: collision with root package name */
            public long f6190b;
            public long c;
            public long d;
            public double e;
            public double f;
            public int g;
            public int h;
            public int i;
            public int j;
            public int k;
            public int l;

            public static C0111b[] d() {
                if (m == null) {
                    synchronized (c.f5913a) {
                        if (m == null) {
                            m = new C0111b[0];
                        }
                    }
                }
                return m;
            }

            public C0111b() {
                e();
            }

            public final C0111b e() {
                this.f6190b = 0;
                this.c = 0;
                this.d = 0;
                this.e = 0.0d;
                this.f = 0.0d;
                this.g = 0;
                this.h = 0;
                this.i = 0;
                this.j = 0;
                this.k = 0;
                this.l = 0;
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                bVar.a(1, this.f6190b);
                bVar.a(2, this.c);
                long j2 = this.d;
                if (j2 != 0) {
                    bVar.a(3, j2);
                }
                bVar.a(4, this.e);
                bVar.a(5, this.f);
                int i2 = this.g;
                if (i2 != 0) {
                    bVar.b(6, i2);
                }
                int i3 = this.h;
                if (i3 != 0) {
                    bVar.b(7, i3);
                }
                int i4 = this.i;
                if (i4 != 0) {
                    bVar.b(8, i4);
                }
                int i5 = this.j;
                if (i5 != 0) {
                    bVar.a(9, i5);
                }
                int i6 = this.k;
                if (i6 != 0) {
                    bVar.a(10, i6);
                }
                int i7 = this.l;
                if (i7 != 0) {
                    bVar.a(11, i7);
                }
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                int c2 = super.c() + b.c(1, this.f6190b) + b.c(2, this.c);
                long j2 = this.d;
                if (j2 != 0) {
                    c2 += b.c(3, j2);
                }
                int d2 = c2 + b.d(4) + b.d(5);
                int i2 = this.g;
                if (i2 != 0) {
                    d2 += b.e(6, i2);
                }
                int i3 = this.h;
                if (i3 != 0) {
                    d2 += b.e(7, i3);
                }
                int i4 = this.i;
                if (i4 != 0) {
                    d2 += b.e(8, i4);
                }
                int i5 = this.j;
                if (i5 != 0) {
                    d2 += b.d(9, i5);
                }
                int i6 = this.k;
                if (i6 != 0) {
                    d2 += b.d(10, i6);
                }
                int i7 = this.l;
                return i7 != 0 ? d2 + b.d(11, i7) : d2;
            }

            /* renamed from: b */
            public final C0111b a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    switch (a2) {
                        case 0:
                            return this;
                        case 8:
                            this.f6190b = aVar.e();
                            break;
                        case 16:
                            this.c = aVar.e();
                            break;
                        case 24:
                            this.d = aVar.e();
                            break;
                        case 33:
                            this.e = aVar.c();
                            break;
                        case 41:
                            this.f = aVar.c();
                            break;
                        case 48:
                            this.g = aVar.k();
                            break;
                        case 56:
                            this.h = aVar.k();
                            break;
                        case 64:
                            this.i = aVar.k();
                            break;
                        case 72:
                            this.j = aVar.g();
                            break;
                        case 80:
                            int g2 = aVar.g();
                            if (g2 != 0 && g2 != 1 && g2 != 2) {
                                break;
                            } else {
                                this.k = g2;
                                break;
                            }
                        case 88:
                            int g3 = aVar.g();
                            if (g3 != 0 && g3 != 1) {
                                break;
                            } else {
                                this.l = g3;
                                break;
                            }
                        default:
                            if (g.a(aVar, a2)) {
                                break;
                            } else {
                                return this;
                            }
                    }
                }
            }
        }

        public b() {
            d();
        }

        public final b d() {
            this.f6188b = C0111b.d();
            this.c = a.d();
            this.f5940a = -1;
            return this;
        }

        public final void a(b bVar) throws IOException {
            C0111b[] bVarArr = this.f6188b;
            int i = 0;
            if (bVarArr != null && bVarArr.length > 0) {
                int i2 = 0;
                while (true) {
                    C0111b[] bVarArr2 = this.f6188b;
                    if (i2 >= bVarArr2.length) {
                        break;
                    }
                    C0111b bVar2 = bVarArr2[i2];
                    if (bVar2 != null) {
                        bVar.a(1, (e) bVar2);
                    }
                    i2++;
                }
            }
            a[] aVarArr = this.c;
            if (aVarArr != null && aVarArr.length > 0) {
                while (true) {
                    a[] aVarArr2 = this.c;
                    if (i >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i];
                    if (aVar != null) {
                        bVar.a(2, (e) aVar);
                    }
                    i++;
                }
            }
            super.a(bVar);
        }

        /* access modifiers changed from: protected */
        public final int c() {
            int c2 = super.c();
            C0111b[] bVarArr = this.f6188b;
            int i = 0;
            if (bVarArr != null && bVarArr.length > 0) {
                int i2 = c2;
                int i3 = 0;
                while (true) {
                    C0111b[] bVarArr2 = this.f6188b;
                    if (i3 >= bVarArr2.length) {
                        break;
                    }
                    C0111b bVar = bVarArr2[i3];
                    if (bVar != null) {
                        i2 += b.b(1, (e) bVar);
                    }
                    i3++;
                }
                c2 = i2;
            }
            a[] aVarArr = this.c;
            if (aVarArr != null && aVarArr.length > 0) {
                while (true) {
                    a[] aVarArr2 = this.c;
                    if (i >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i];
                    if (aVar != null) {
                        c2 += b.b(2, (e) aVar);
                    }
                    i++;
                }
            }
            return c2;
        }

        /* renamed from: b */
        public final b a(a aVar) throws IOException {
            while (true) {
                int a2 = aVar.a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 10) {
                    int b2 = g.b(aVar, 10);
                    C0111b[] bVarArr = this.f6188b;
                    int length = bVarArr == null ? 0 : bVarArr.length;
                    C0111b[] bVarArr2 = new C0111b[(b2 + length)];
                    if (length != 0) {
                        System.arraycopy(this.f6188b, 0, bVarArr2, 0, length);
                    }
                    while (length < bVarArr2.length - 1) {
                        bVarArr2[length] = new C0111b();
                        aVar.a((e) bVarArr2[length]);
                        aVar.a();
                        length++;
                    }
                    bVarArr2[length] = new C0111b();
                    aVar.a((e) bVarArr2[length]);
                    this.f6188b = bVarArr2;
                } else if (a2 == 18) {
                    int b3 = g.b(aVar, 18);
                    a[] aVarArr = this.c;
                    int length2 = aVarArr == null ? 0 : aVarArr.length;
                    a[] aVarArr2 = new a[(b3 + length2)];
                    if (length2 != 0) {
                        System.arraycopy(this.c, 0, aVarArr2, 0, length2);
                    }
                    while (length2 < aVarArr2.length - 1) {
                        aVarArr2[length2] = new a();
                        aVar.a((e) aVarArr2[length2]);
                        aVar.a();
                        length2++;
                    }
                    aVarArr2[length2] = new a();
                    aVar.a((e) aVarArr2[length2]);
                    this.c = aVarArr2;
                } else if (!g.a(aVar, a2)) {
                    return this;
                }
            }
        }
    }

    public static final class c extends e {

        /* renamed from: b  reason: collision with root package name */
        public e[] f6191b;
        public d c;
        public a[] d;
        public C0112c[] e;
        public String[] f;
        public f[] g;

        public static final class a extends e {
            private static volatile a[] d;

            /* renamed from: b  reason: collision with root package name */
            public String f6192b;
            public String c;

            public static a[] d() {
                if (d == null) {
                    synchronized (c.f5913a) {
                        if (d == null) {
                            d = new a[0];
                        }
                    }
                }
                return d;
            }

            public a() {
                e();
            }

            public final a e() {
                this.f6192b = "";
                this.c = "";
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                bVar.a(1, this.f6192b);
                bVar.a(2, this.c);
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                return super.c() + b.b(1, this.f6192b) + b.b(2, this.c);
            }

            /* renamed from: b */
            public final a a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 10) {
                        this.f6192b = aVar.i();
                    } else if (a2 == 18) {
                        this.c = aVar.i();
                    } else if (!g.a(aVar, a2)) {
                        return this;
                    }
                }
            }
        }

        public static final class b extends e {

            /* renamed from: b  reason: collision with root package name */
            public double f6193b;
            public double c;
            public long d;
            public int e;
            public int f;
            public int g;
            public int h;
            public int i;

            public b() {
                d();
            }

            public final b d() {
                this.f6193b = 0.0d;
                this.c = 0.0d;
                this.d = 0;
                this.e = 0;
                this.f = 0;
                this.g = 0;
                this.h = 0;
                this.i = 0;
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                bVar.a(1, this.f6193b);
                bVar.a(2, this.c);
                long j = this.d;
                if (j != 0) {
                    bVar.a(3, j);
                }
                int i2 = this.e;
                if (i2 != 0) {
                    bVar.b(4, i2);
                }
                int i3 = this.f;
                if (i3 != 0) {
                    bVar.b(5, i3);
                }
                int i4 = this.g;
                if (i4 != 0) {
                    bVar.b(6, i4);
                }
                int i5 = this.h;
                if (i5 != 0) {
                    bVar.a(7, i5);
                }
                int i6 = this.i;
                if (i6 != 0) {
                    bVar.a(8, i6);
                }
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                int c2 = super.c() + b.d(1) + b.d(2);
                long j = this.d;
                if (j != 0) {
                    c2 += b.c(3, j);
                }
                int i2 = this.e;
                if (i2 != 0) {
                    c2 += b.e(4, i2);
                }
                int i3 = this.f;
                if (i3 != 0) {
                    c2 += b.e(5, i3);
                }
                int i4 = this.g;
                if (i4 != 0) {
                    c2 += b.e(6, i4);
                }
                int i5 = this.h;
                if (i5 != 0) {
                    c2 += b.d(7, i5);
                }
                int i6 = this.i;
                return i6 != 0 ? c2 + b.d(8, i6) : c2;
            }

            /* renamed from: b */
            public final b a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 9) {
                        this.f6193b = aVar.c();
                    } else if (a2 == 17) {
                        this.c = aVar.c();
                    } else if (a2 == 24) {
                        this.d = aVar.e();
                    } else if (a2 == 32) {
                        this.e = aVar.k();
                    } else if (a2 == 40) {
                        this.f = aVar.k();
                    } else if (a2 == 48) {
                        this.g = aVar.k();
                    } else if (a2 == 56) {
                        this.h = aVar.g();
                    } else if (a2 == 64) {
                        int g2 = aVar.g();
                        if (g2 == 0 || g2 == 1 || g2 == 2) {
                            this.i = g2;
                        }
                    } else if (!g.a(aVar, a2)) {
                        return this;
                    }
                }
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.ka$c$c  reason: collision with other inner class name */
        public static final class C0112c extends e {
            private static volatile C0112c[] d;

            /* renamed from: b  reason: collision with root package name */
            public String f6194b;
            public String c;

            public static C0112c[] d() {
                if (d == null) {
                    synchronized (c.f5913a) {
                        if (d == null) {
                            d = new C0112c[0];
                        }
                    }
                }
                return d;
            }

            public C0112c() {
                e();
            }

            public final C0112c e() {
                this.f6194b = "";
                this.c = "";
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                bVar.a(1, this.f6194b);
                bVar.a(2, this.c);
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                return super.c() + b.b(1, this.f6194b) + b.b(2, this.c);
            }

            /* renamed from: b */
            public final C0112c a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 10) {
                        this.f6194b = aVar.i();
                    } else if (a2 == 18) {
                        this.c = aVar.i();
                    } else if (!g.a(aVar, a2)) {
                        return this;
                    }
                }
            }
        }

        public static final class d extends e {

            /* renamed from: b  reason: collision with root package name */
            public String f6195b;
            public String c;
            public String d;
            public int e;
            public String f;
            public String g;
            public boolean h;
            public int i;
            public String j;
            public String k;
            public String l;
            public int m;
            public a[] n;
            public String o;

            public static final class a extends e {
                private static volatile a[] d;

                /* renamed from: b  reason: collision with root package name */
                public String f6196b;
                public long c;

                public static a[] d() {
                    if (d == null) {
                        synchronized (c.f5913a) {
                            if (d == null) {
                                d = new a[0];
                            }
                        }
                    }
                    return d;
                }

                public a() {
                    e();
                }

                public final a e() {
                    this.f6196b = "";
                    this.c = 0;
                    this.f5940a = -1;
                    return this;
                }

                public final void a(b bVar) throws IOException {
                    bVar.a(1, this.f6196b);
                    bVar.a(2, this.c);
                    super.a(bVar);
                }

                /* access modifiers changed from: protected */
                public final int c() {
                    return super.c() + b.b(1, this.f6196b) + b.c(2, this.c);
                }

                /* renamed from: b */
                public final a a(a aVar) throws IOException {
                    while (true) {
                        int a2 = aVar.a();
                        if (a2 == 0) {
                            return this;
                        }
                        if (a2 == 10) {
                            this.f6196b = aVar.i();
                        } else if (a2 == 16) {
                            this.c = aVar.e();
                        } else if (!g.a(aVar, a2)) {
                            return this;
                        }
                    }
                }
            }

            public d() {
                d();
            }

            public final d d() {
                this.f6195b = "";
                this.c = "";
                this.d = "";
                this.e = 0;
                this.f = "";
                this.g = "";
                this.h = false;
                this.i = 0;
                this.j = "";
                this.k = "";
                this.l = "";
                this.m = 0;
                this.n = a.d();
                this.o = "";
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                if (!this.f6195b.equals("")) {
                    bVar.a(1, this.f6195b);
                }
                if (!this.c.equals("")) {
                    bVar.a(2, this.c);
                }
                if (!this.d.equals("")) {
                    bVar.a(4, this.d);
                }
                int i2 = this.e;
                if (i2 != 0) {
                    bVar.b(5, i2);
                }
                if (!this.f.equals("")) {
                    bVar.a(10, this.f);
                }
                if (!this.g.equals("")) {
                    bVar.a(15, this.g);
                }
                boolean z = this.h;
                if (z) {
                    bVar.a(17, z);
                }
                int i3 = this.i;
                if (i3 != 0) {
                    bVar.b(18, i3);
                }
                if (!this.j.equals("")) {
                    bVar.a(19, this.j);
                }
                if (!this.k.equals("")) {
                    bVar.a(20, this.k);
                }
                if (!this.l.equals("")) {
                    bVar.a(21, this.l);
                }
                int i4 = this.m;
                if (i4 != 0) {
                    bVar.b(22, i4);
                }
                a[] aVarArr = this.n;
                if (aVarArr != null && aVarArr.length > 0) {
                    int i5 = 0;
                    while (true) {
                        a[] aVarArr2 = this.n;
                        if (i5 >= aVarArr2.length) {
                            break;
                        }
                        a aVar = aVarArr2[i5];
                        if (aVar != null) {
                            bVar.a(23, (e) aVar);
                        }
                        i5++;
                    }
                }
                if (!this.o.equals("")) {
                    bVar.a(24, this.o);
                }
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                int c2 = super.c();
                if (!this.f6195b.equals("")) {
                    c2 += b.b(1, this.f6195b);
                }
                if (!this.c.equals("")) {
                    c2 += b.b(2, this.c);
                }
                if (!this.d.equals("")) {
                    c2 += b.b(4, this.d);
                }
                int i2 = this.e;
                if (i2 != 0) {
                    c2 += b.e(5, i2);
                }
                if (!this.f.equals("")) {
                    c2 += b.b(10, this.f);
                }
                if (!this.g.equals("")) {
                    c2 += b.b(15, this.g);
                }
                if (this.h) {
                    c2 += b.f(17);
                }
                int i3 = this.i;
                if (i3 != 0) {
                    c2 += b.e(18, i3);
                }
                if (!this.j.equals("")) {
                    c2 += b.b(19, this.j);
                }
                if (!this.k.equals("")) {
                    c2 += b.b(20, this.k);
                }
                if (!this.l.equals("")) {
                    c2 += b.b(21, this.l);
                }
                int i4 = this.m;
                if (i4 != 0) {
                    c2 += b.e(22, i4);
                }
                a[] aVarArr = this.n;
                if (aVarArr != null && aVarArr.length > 0) {
                    int i5 = 0;
                    while (true) {
                        a[] aVarArr2 = this.n;
                        if (i5 >= aVarArr2.length) {
                            break;
                        }
                        a aVar = aVarArr2[i5];
                        if (aVar != null) {
                            c2 += b.b(23, (e) aVar);
                        }
                        i5++;
                    }
                }
                return !this.o.equals("") ? c2 + b.b(24, this.o) : c2;
            }

            /* renamed from: b */
            public final d a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    switch (a2) {
                        case 0:
                            return this;
                        case 10:
                            this.f6195b = aVar.i();
                            break;
                        case 18:
                            this.c = aVar.i();
                            break;
                        case 34:
                            this.d = aVar.i();
                            break;
                        case 40:
                            this.e = aVar.k();
                            break;
                        case 82:
                            this.f = aVar.i();
                            break;
                        case 122:
                            this.g = aVar.i();
                            break;
                        case 136:
                            this.h = aVar.h();
                            break;
                        case 144:
                            this.i = aVar.k();
                            break;
                        case 154:
                            this.j = aVar.i();
                            break;
                        case 162:
                            this.k = aVar.i();
                            break;
                        case 170:
                            this.l = aVar.i();
                            break;
                        case 176:
                            this.m = aVar.k();
                            break;
                        case 186:
                            int b2 = g.b(aVar, 186);
                            a[] aVarArr = this.n;
                            int length = aVarArr == null ? 0 : aVarArr.length;
                            a[] aVarArr2 = new a[(b2 + length)];
                            if (length != 0) {
                                System.arraycopy(this.n, 0, aVarArr2, 0, length);
                            }
                            while (length < aVarArr2.length - 1) {
                                aVarArr2[length] = new a();
                                aVar.a((e) aVarArr2[length]);
                                aVar.a();
                                length++;
                            }
                            aVarArr2[length] = new a();
                            aVar.a((e) aVarArr2[length]);
                            this.n = aVarArr2;
                            break;
                        case 194:
                            this.o = aVar.i();
                            break;
                        default:
                            if (g.a(aVar, a2)) {
                                break;
                            } else {
                                return this;
                            }
                    }
                }
            }
        }

        public static final class e extends e {
            private static volatile e[] e;

            /* renamed from: b  reason: collision with root package name */
            public long f6197b;
            public b c;
            public a[] d;

            public static final class a extends e {
                private static volatile a[] p;

                /* renamed from: b  reason: collision with root package name */
                public long f6198b;
                public long c;
                public int d;
                public String e;
                public byte[] f;
                public b g;
                public b h;
                public String i;
                public C0113a j;
                public int k;
                public int l;
                public int m;
                public byte[] n;
                public int o;

                /* renamed from: com.yandex.metrica.impl.ob.ka$c$e$a$a  reason: collision with other inner class name */
                public static final class C0113a extends e {

                    /* renamed from: b  reason: collision with root package name */
                    public String f6199b;
                    public String c;
                    public String d;

                    public C0113a() {
                        d();
                    }

                    public final C0113a d() {
                        this.f6199b = "";
                        this.c = "";
                        this.d = "";
                        this.f5940a = -1;
                        return this;
                    }

                    public final void a(b bVar) throws IOException {
                        bVar.a(1, this.f6199b);
                        if (!this.c.equals("")) {
                            bVar.a(2, this.c);
                        }
                        if (!this.d.equals("")) {
                            bVar.a(3, this.d);
                        }
                        super.a(bVar);
                    }

                    /* access modifiers changed from: protected */
                    public final int c() {
                        int c2 = super.c() + b.b(1, this.f6199b);
                        if (!this.c.equals("")) {
                            c2 += b.b(2, this.c);
                        }
                        return !this.d.equals("") ? c2 + b.b(3, this.d) : c2;
                    }

                    /* renamed from: b */
                    public final C0113a a(a aVar) throws IOException {
                        while (true) {
                            int a2 = aVar.a();
                            if (a2 == 0) {
                                return this;
                            }
                            if (a2 == 10) {
                                this.f6199b = aVar.i();
                            } else if (a2 == 18) {
                                this.c = aVar.i();
                            } else if (a2 == 26) {
                                this.d = aVar.i();
                            } else if (!g.a(aVar, a2)) {
                                return this;
                            }
                        }
                    }
                }

                public static final class b extends e {

                    /* renamed from: b  reason: collision with root package name */
                    public a[] f6200b;
                    public d[] c;
                    public int d;
                    public String e;
                    public C0114a f;

                    /* renamed from: com.yandex.metrica.impl.ob.ka$c$e$a$b$a  reason: collision with other inner class name */
                    public static final class C0114a extends e {

                        /* renamed from: b  reason: collision with root package name */
                        public String f6201b;
                        public int c;

                        public C0114a() {
                            d();
                        }

                        public final C0114a d() {
                            this.f6201b = "";
                            this.c = 0;
                            this.f5940a = -1;
                            return this;
                        }

                        public final void a(b bVar) throws IOException {
                            bVar.a(1, this.f6201b);
                            int i = this.c;
                            if (i != 0) {
                                bVar.a(2, i);
                            }
                            super.a(bVar);
                        }

                        /* access modifiers changed from: protected */
                        public final int c() {
                            int c2 = super.c() + b.b(1, this.f6201b);
                            int i = this.c;
                            return i != 0 ? c2 + b.d(2, i) : c2;
                        }

                        /* renamed from: b */
                        public final C0114a a(a aVar) throws IOException {
                            while (true) {
                                int a2 = aVar.a();
                                if (a2 == 0) {
                                    return this;
                                }
                                if (a2 == 10) {
                                    this.f6201b = aVar.i();
                                } else if (a2 == 16) {
                                    int g = aVar.g();
                                    if (g == 0 || g == 1 || g == 2) {
                                        this.c = g;
                                    }
                                } else if (!g.a(aVar, a2)) {
                                    return this;
                                }
                            }
                        }
                    }

                    public b() {
                        d();
                    }

                    public final b d() {
                        this.f6200b = a.d();
                        this.c = d.d();
                        this.d = 2;
                        this.e = "";
                        this.f = null;
                        this.f5940a = -1;
                        return this;
                    }

                    public final void a(b bVar) throws IOException {
                        a[] aVarArr = this.f6200b;
                        int i = 0;
                        if (aVarArr != null && aVarArr.length > 0) {
                            int i2 = 0;
                            while (true) {
                                a[] aVarArr2 = this.f6200b;
                                if (i2 >= aVarArr2.length) {
                                    break;
                                }
                                a aVar = aVarArr2[i2];
                                if (aVar != null) {
                                    bVar.a(1, (e) aVar);
                                }
                                i2++;
                            }
                        }
                        d[] dVarArr = this.c;
                        if (dVarArr != null && dVarArr.length > 0) {
                            while (true) {
                                d[] dVarArr2 = this.c;
                                if (i >= dVarArr2.length) {
                                    break;
                                }
                                d dVar = dVarArr2[i];
                                if (dVar != null) {
                                    bVar.a(2, (e) dVar);
                                }
                                i++;
                            }
                        }
                        int i3 = this.d;
                        if (i3 != 2) {
                            bVar.a(3, i3);
                        }
                        if (!this.e.equals("")) {
                            bVar.a(4, this.e);
                        }
                        C0114a aVar2 = this.f;
                        if (aVar2 != null) {
                            bVar.a(5, (e) aVar2);
                        }
                        super.a(bVar);
                    }

                    /* access modifiers changed from: protected */
                    public final int c() {
                        int c2 = super.c();
                        a[] aVarArr = this.f6200b;
                        int i = 0;
                        if (aVarArr != null && aVarArr.length > 0) {
                            int i2 = c2;
                            int i3 = 0;
                            while (true) {
                                a[] aVarArr2 = this.f6200b;
                                if (i3 >= aVarArr2.length) {
                                    break;
                                }
                                a aVar = aVarArr2[i3];
                                if (aVar != null) {
                                    i2 += b.b(1, (e) aVar);
                                }
                                i3++;
                            }
                            c2 = i2;
                        }
                        d[] dVarArr = this.c;
                        if (dVarArr != null && dVarArr.length > 0) {
                            while (true) {
                                d[] dVarArr2 = this.c;
                                if (i >= dVarArr2.length) {
                                    break;
                                }
                                d dVar = dVarArr2[i];
                                if (dVar != null) {
                                    c2 += b.b(2, (e) dVar);
                                }
                                i++;
                            }
                        }
                        int i4 = this.d;
                        if (i4 != 2) {
                            c2 += b.d(3, i4);
                        }
                        if (!this.e.equals("")) {
                            c2 += b.b(4, this.e);
                        }
                        C0114a aVar2 = this.f;
                        return aVar2 != null ? c2 + b.b(5, (e) aVar2) : c2;
                    }

                    /* renamed from: b */
                    public final b a(a aVar) throws IOException {
                        while (true) {
                            int a2 = aVar.a();
                            if (a2 == 0) {
                                return this;
                            }
                            if (a2 == 10) {
                                int b2 = g.b(aVar, 10);
                                a[] aVarArr = this.f6200b;
                                int length = aVarArr == null ? 0 : aVarArr.length;
                                a[] aVarArr2 = new a[(b2 + length)];
                                if (length != 0) {
                                    System.arraycopy(this.f6200b, 0, aVarArr2, 0, length);
                                }
                                while (length < aVarArr2.length - 1) {
                                    aVarArr2[length] = new a();
                                    aVar.a((e) aVarArr2[length]);
                                    aVar.a();
                                    length++;
                                }
                                aVarArr2[length] = new a();
                                aVar.a((e) aVarArr2[length]);
                                this.f6200b = aVarArr2;
                            } else if (a2 == 18) {
                                int b3 = g.b(aVar, 18);
                                d[] dVarArr = this.c;
                                int length2 = dVarArr == null ? 0 : dVarArr.length;
                                d[] dVarArr2 = new d[(b3 + length2)];
                                if (length2 != 0) {
                                    System.arraycopy(this.c, 0, dVarArr2, 0, length2);
                                }
                                while (length2 < dVarArr2.length - 1) {
                                    dVarArr2[length2] = new d();
                                    aVar.a((e) dVarArr2[length2]);
                                    aVar.a();
                                    length2++;
                                }
                                dVarArr2[length2] = new d();
                                aVar.a((e) dVarArr2[length2]);
                                this.c = dVarArr2;
                            } else if (a2 == 24) {
                                int g = aVar.g();
                                if (g == 0 || g == 1 || g == 2) {
                                    this.d = g;
                                }
                            } else if (a2 == 34) {
                                this.e = aVar.i();
                            } else if (a2 == 42) {
                                if (this.f == null) {
                                    this.f = new C0114a();
                                }
                                aVar.a((e) this.f);
                            } else if (!g.a(aVar, a2)) {
                                return this;
                            }
                        }
                    }
                }

                public static a[] d() {
                    if (p == null) {
                        synchronized (c.f5913a) {
                            if (p == null) {
                                p = new a[0];
                            }
                        }
                    }
                    return p;
                }

                public a() {
                    e();
                }

                public final a e() {
                    this.f6198b = 0;
                    this.c = 0;
                    this.d = 0;
                    this.e = "";
                    this.f = g.c;
                    this.g = null;
                    this.h = null;
                    this.i = "";
                    this.j = null;
                    this.k = 0;
                    this.l = 0;
                    this.m = -1;
                    this.n = g.c;
                    this.o = -1;
                    this.f5940a = -1;
                    return this;
                }

                public final void a(b bVar) throws IOException {
                    bVar.a(1, this.f6198b);
                    bVar.a(2, this.c);
                    bVar.b(3, this.d);
                    if (!this.e.equals("")) {
                        bVar.a(4, this.e);
                    }
                    if (!Arrays.equals(this.f, g.c)) {
                        bVar.a(5, this.f);
                    }
                    b bVar2 = this.g;
                    if (bVar2 != null) {
                        bVar.a(6, (e) bVar2);
                    }
                    b bVar3 = this.h;
                    if (bVar3 != null) {
                        bVar.a(7, (e) bVar3);
                    }
                    if (!this.i.equals("")) {
                        bVar.a(8, this.i);
                    }
                    C0113a aVar = this.j;
                    if (aVar != null) {
                        bVar.a(9, (e) aVar);
                    }
                    int i2 = this.k;
                    if (i2 != 0) {
                        bVar.b(10, i2);
                    }
                    int i3 = this.l;
                    if (i3 != 0) {
                        bVar.a(12, i3);
                    }
                    int i4 = this.m;
                    if (i4 != -1) {
                        bVar.a(13, i4);
                    }
                    if (!Arrays.equals(this.n, g.c)) {
                        bVar.a(14, this.n);
                    }
                    int i5 = this.o;
                    if (i5 != -1) {
                        bVar.a(15, i5);
                    }
                    super.a(bVar);
                }

                /* access modifiers changed from: protected */
                public final int c() {
                    int c2 = super.c() + b.c(1, this.f6198b) + b.c(2, this.c) + b.e(3, this.d);
                    if (!this.e.equals("")) {
                        c2 += b.b(4, this.e);
                    }
                    if (!Arrays.equals(this.f, g.c)) {
                        c2 += b.b(5, this.f);
                    }
                    b bVar = this.g;
                    if (bVar != null) {
                        c2 += b.b(6, (e) bVar);
                    }
                    b bVar2 = this.h;
                    if (bVar2 != null) {
                        c2 += b.b(7, (e) bVar2);
                    }
                    if (!this.i.equals("")) {
                        c2 += b.b(8, this.i);
                    }
                    C0113a aVar = this.j;
                    if (aVar != null) {
                        c2 += b.b(9, (e) aVar);
                    }
                    int i2 = this.k;
                    if (i2 != 0) {
                        c2 += b.e(10, i2);
                    }
                    int i3 = this.l;
                    if (i3 != 0) {
                        c2 += b.d(12, i3);
                    }
                    int i4 = this.m;
                    if (i4 != -1) {
                        c2 += b.d(13, i4);
                    }
                    if (!Arrays.equals(this.n, g.c)) {
                        c2 += b.b(14, this.n);
                    }
                    int i5 = this.o;
                    return i5 != -1 ? c2 + b.d(15, i5) : c2;
                }

                /* renamed from: b */
                public final a a(a aVar) throws IOException {
                    while (true) {
                        int a2 = aVar.a();
                        switch (a2) {
                            case 0:
                                return this;
                            case 8:
                                this.f6198b = aVar.e();
                                break;
                            case 16:
                                this.c = aVar.e();
                                break;
                            case 24:
                                this.d = aVar.k();
                                break;
                            case 34:
                                this.e = aVar.i();
                                break;
                            case 42:
                                this.f = aVar.j();
                                break;
                            case 50:
                                if (this.g == null) {
                                    this.g = new b();
                                }
                                aVar.a((e) this.g);
                                break;
                            case 58:
                                if (this.h == null) {
                                    this.h = new b();
                                }
                                aVar.a((e) this.h);
                                break;
                            case 66:
                                this.i = aVar.i();
                                break;
                            case 74:
                                if (this.j == null) {
                                    this.j = new C0113a();
                                }
                                aVar.a((e) this.j);
                                break;
                            case 80:
                                this.k = aVar.k();
                                break;
                            case 96:
                                int g2 = aVar.g();
                                if (g2 != 0 && g2 != 1) {
                                    break;
                                } else {
                                    this.l = g2;
                                    break;
                                }
                            case 104:
                                int g3 = aVar.g();
                                if (g3 != -1 && g3 != 0 && g3 != 1) {
                                    break;
                                } else {
                                    this.m = g3;
                                    break;
                                }
                            case 114:
                                this.n = aVar.j();
                                break;
                            case 120:
                                int g4 = aVar.g();
                                if (g4 != -1 && g4 != 0 && g4 != 1) {
                                    break;
                                } else {
                                    this.o = g4;
                                    break;
                                }
                            default:
                                if (g.a(aVar, a2)) {
                                    break;
                                } else {
                                    return this;
                                }
                        }
                    }
                }
            }

            public static final class b extends e {

                /* renamed from: b  reason: collision with root package name */
                public g f6202b;
                public String c;
                public int d;

                public b() {
                    d();
                }

                public final b d() {
                    this.f6202b = null;
                    this.c = "";
                    this.d = 0;
                    this.f5940a = -1;
                    return this;
                }

                public final void a(b bVar) throws IOException {
                    g gVar = this.f6202b;
                    if (gVar != null) {
                        bVar.a(1, (e) gVar);
                    }
                    bVar.a(2, this.c);
                    int i = this.d;
                    if (i != 0) {
                        bVar.a(5, i);
                    }
                    super.a(bVar);
                }

                /* access modifiers changed from: protected */
                public final int c() {
                    int c2 = super.c();
                    g gVar = this.f6202b;
                    if (gVar != null) {
                        c2 += b.b(1, (e) gVar);
                    }
                    int b2 = c2 + b.b(2, this.c);
                    int i = this.d;
                    return i != 0 ? b2 + b.d(5, i) : b2;
                }

                /* renamed from: b */
                public final b a(a aVar) throws IOException {
                    while (true) {
                        int a2 = aVar.a();
                        if (a2 == 0) {
                            return this;
                        }
                        if (a2 == 10) {
                            if (this.f6202b == null) {
                                this.f6202b = new g();
                            }
                            aVar.a((e) this.f6202b);
                        } else if (a2 == 18) {
                            this.c = aVar.i();
                        } else if (a2 == 40) {
                            int g = aVar.g();
                            if (g == 0 || g == 1 || g == 2) {
                                this.d = g;
                            }
                        } else if (!g.a(aVar, a2)) {
                            return this;
                        }
                    }
                }
            }

            public static e[] d() {
                if (e == null) {
                    synchronized (c.f5913a) {
                        if (e == null) {
                            e = new e[0];
                        }
                    }
                }
                return e;
            }

            public e() {
                e();
            }

            public final e e() {
                this.f6197b = 0;
                this.c = null;
                this.d = a.d();
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                bVar.a(1, this.f6197b);
                b bVar2 = this.c;
                if (bVar2 != null) {
                    bVar.a(2, (e) bVar2);
                }
                a[] aVarArr = this.d;
                if (aVarArr != null && aVarArr.length > 0) {
                    int i = 0;
                    while (true) {
                        a[] aVarArr2 = this.d;
                        if (i >= aVarArr2.length) {
                            break;
                        }
                        a aVar = aVarArr2[i];
                        if (aVar != null) {
                            bVar.a(3, (e) aVar);
                        }
                        i++;
                    }
                }
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                int c2 = super.c() + b.c(1, this.f6197b);
                b bVar = this.c;
                if (bVar != null) {
                    c2 += b.b(2, (e) bVar);
                }
                a[] aVarArr = this.d;
                if (aVarArr != null && aVarArr.length > 0) {
                    int i = 0;
                    while (true) {
                        a[] aVarArr2 = this.d;
                        if (i >= aVarArr2.length) {
                            break;
                        }
                        a aVar = aVarArr2[i];
                        if (aVar != null) {
                            c2 += b.b(3, (e) aVar);
                        }
                        i++;
                    }
                }
                return c2;
            }

            /* renamed from: b */
            public final e a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 8) {
                        this.f6197b = aVar.e();
                    } else if (a2 == 18) {
                        if (this.c == null) {
                            this.c = new b();
                        }
                        aVar.a((e) this.c);
                    } else if (a2 == 26) {
                        int b2 = g.b(aVar, 26);
                        a[] aVarArr = this.d;
                        int length = aVarArr == null ? 0 : aVarArr.length;
                        a[] aVarArr2 = new a[(b2 + length)];
                        if (length != 0) {
                            System.arraycopy(this.d, 0, aVarArr2, 0, length);
                        }
                        while (length < aVarArr2.length - 1) {
                            aVarArr2[length] = new a();
                            aVar.a((e) aVarArr2[length]);
                            aVar.a();
                            length++;
                        }
                        aVarArr2[length] = new a();
                        aVar.a((e) aVarArr2[length]);
                        this.d = aVarArr2;
                    } else if (!g.a(aVar, a2)) {
                        return this;
                    }
                }
            }
        }

        public static final class f extends e {
            private static volatile f[] g;

            /* renamed from: b  reason: collision with root package name */
            public int f6203b;
            public int c;
            public String d;
            public boolean e;
            public String f;

            public static f[] d() {
                if (g == null) {
                    synchronized (c.f5913a) {
                        if (g == null) {
                            g = new f[0];
                        }
                    }
                }
                return g;
            }

            public f() {
                e();
            }

            public final f e() {
                this.f6203b = 0;
                this.c = 0;
                this.d = "";
                this.e = false;
                this.f = "";
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                int i = this.f6203b;
                if (i != 0) {
                    bVar.b(1, i);
                }
                int i2 = this.c;
                if (i2 != 0) {
                    bVar.b(2, i2);
                }
                if (!this.d.equals("")) {
                    bVar.a(3, this.d);
                }
                boolean z = this.e;
                if (z) {
                    bVar.a(4, z);
                }
                if (!this.f.equals("")) {
                    bVar.a(5, this.f);
                }
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                int c2 = super.c();
                int i = this.f6203b;
                if (i != 0) {
                    c2 += b.e(1, i);
                }
                int i2 = this.c;
                if (i2 != 0) {
                    c2 += b.e(2, i2);
                }
                if (!this.d.equals("")) {
                    c2 += b.b(3, this.d);
                }
                if (this.e) {
                    c2 += b.f(4);
                }
                return !this.f.equals("") ? c2 + b.b(5, this.f) : c2;
            }

            /* renamed from: b */
            public final f a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 8) {
                        this.f6203b = aVar.k();
                    } else if (a2 == 16) {
                        this.c = aVar.k();
                    } else if (a2 == 26) {
                        this.d = aVar.i();
                    } else if (a2 == 32) {
                        this.e = aVar.h();
                    } else if (a2 == 42) {
                        this.f = aVar.i();
                    } else if (!g.a(aVar, a2)) {
                        return this;
                    }
                }
            }
        }

        public static final class g extends e {

            /* renamed from: b  reason: collision with root package name */
            public long f6204b;
            public int c;
            public long d;
            public boolean e;

            public g() {
                d();
            }

            public final g d() {
                this.f6204b = 0;
                this.c = 0;
                this.d = 0;
                this.e = false;
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                bVar.a(1, this.f6204b);
                bVar.c(2, this.c);
                long j = this.d;
                if (j != 0) {
                    bVar.b(3, j);
                }
                boolean z = this.e;
                if (z) {
                    bVar.a(4, z);
                }
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                int c2 = super.c() + b.c(1, this.f6204b) + b.f(2, this.c);
                long j = this.d;
                if (j != 0) {
                    c2 += b.d(3, j);
                }
                return this.e ? c2 + b.f(4) : c2;
            }

            /* renamed from: b */
            public final g a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 8) {
                        this.f6204b = aVar.e();
                    } else if (a2 == 16) {
                        this.c = aVar.l();
                    } else if (a2 == 24) {
                        this.d = aVar.f();
                    } else if (a2 == 32) {
                        this.e = aVar.h();
                    } else if (!g.a(aVar, a2)) {
                        return this;
                    }
                }
            }
        }

        public c() {
            d();
        }

        public final c d() {
            this.f6191b = e.d();
            this.c = null;
            this.d = a.d();
            this.e = C0112c.d();
            this.f = g.f6049b;
            this.g = f.d();
            this.f5940a = -1;
            return this;
        }

        public final void a(b bVar) throws IOException {
            e[] eVarArr = this.f6191b;
            int i = 0;
            if (eVarArr != null && eVarArr.length > 0) {
                int i2 = 0;
                while (true) {
                    e[] eVarArr2 = this.f6191b;
                    if (i2 >= eVarArr2.length) {
                        break;
                    }
                    e eVar = eVarArr2[i2];
                    if (eVar != null) {
                        bVar.a(3, (e) eVar);
                    }
                    i2++;
                }
            }
            d dVar = this.c;
            if (dVar != null) {
                bVar.a(4, (e) dVar);
            }
            a[] aVarArr = this.d;
            if (aVarArr != null && aVarArr.length > 0) {
                int i3 = 0;
                while (true) {
                    a[] aVarArr2 = this.d;
                    if (i3 >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i3];
                    if (aVar != null) {
                        bVar.a(7, (e) aVar);
                    }
                    i3++;
                }
            }
            C0112c[] cVarArr = this.e;
            if (cVarArr != null && cVarArr.length > 0) {
                int i4 = 0;
                while (true) {
                    C0112c[] cVarArr2 = this.e;
                    if (i4 >= cVarArr2.length) {
                        break;
                    }
                    C0112c cVar = cVarArr2[i4];
                    if (cVar != null) {
                        bVar.a(8, (e) cVar);
                    }
                    i4++;
                }
            }
            String[] strArr = this.f;
            if (strArr != null && strArr.length > 0) {
                int i5 = 0;
                while (true) {
                    String[] strArr2 = this.f;
                    if (i5 >= strArr2.length) {
                        break;
                    }
                    String str = strArr2[i5];
                    if (str != null) {
                        bVar.a(9, str);
                    }
                    i5++;
                }
            }
            f[] fVarArr = this.g;
            if (fVarArr != null && fVarArr.length > 0) {
                while (true) {
                    f[] fVarArr2 = this.g;
                    if (i >= fVarArr2.length) {
                        break;
                    }
                    f fVar = fVarArr2[i];
                    if (fVar != null) {
                        bVar.a(10, (e) fVar);
                    }
                    i++;
                }
            }
            super.a(bVar);
        }

        /* access modifiers changed from: protected */
        public final int c() {
            int c2 = super.c();
            e[] eVarArr = this.f6191b;
            int i = 0;
            if (eVarArr != null && eVarArr.length > 0) {
                int i2 = c2;
                int i3 = 0;
                while (true) {
                    e[] eVarArr2 = this.f6191b;
                    if (i3 >= eVarArr2.length) {
                        break;
                    }
                    e eVar = eVarArr2[i3];
                    if (eVar != null) {
                        i2 += b.b(3, (e) eVar);
                    }
                    i3++;
                }
                c2 = i2;
            }
            d dVar = this.c;
            if (dVar != null) {
                c2 += b.b(4, (e) dVar);
            }
            a[] aVarArr = this.d;
            if (aVarArr != null && aVarArr.length > 0) {
                int i4 = c2;
                int i5 = 0;
                while (true) {
                    a[] aVarArr2 = this.d;
                    if (i5 >= aVarArr2.length) {
                        break;
                    }
                    a aVar = aVarArr2[i5];
                    if (aVar != null) {
                        i4 += b.b(7, (e) aVar);
                    }
                    i5++;
                }
                c2 = i4;
            }
            C0112c[] cVarArr = this.e;
            if (cVarArr != null && cVarArr.length > 0) {
                int i6 = c2;
                int i7 = 0;
                while (true) {
                    C0112c[] cVarArr2 = this.e;
                    if (i7 >= cVarArr2.length) {
                        break;
                    }
                    C0112c cVar = cVarArr2[i7];
                    if (cVar != null) {
                        i6 += b.b(8, (e) cVar);
                    }
                    i7++;
                }
                c2 = i6;
            }
            String[] strArr = this.f;
            if (strArr != null && strArr.length > 0) {
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                while (true) {
                    String[] strArr2 = this.f;
                    if (i8 >= strArr2.length) {
                        break;
                    }
                    String str = strArr2[i8];
                    if (str != null) {
                        i10++;
                        i9 += b.b(str);
                    }
                    i8++;
                }
                c2 = c2 + i9 + (i10 * 1);
            }
            f[] fVarArr = this.g;
            if (fVarArr != null && fVarArr.length > 0) {
                while (true) {
                    f[] fVarArr2 = this.g;
                    if (i >= fVarArr2.length) {
                        break;
                    }
                    f fVar = fVarArr2[i];
                    if (fVar != null) {
                        c2 += b.b(10, (e) fVar);
                    }
                    i++;
                }
            }
            return c2;
        }

        /* renamed from: b */
        public final c a(a aVar) throws IOException {
            while (true) {
                int a2 = aVar.a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 26) {
                    int b2 = g.b(aVar, 26);
                    e[] eVarArr = this.f6191b;
                    int length = eVarArr == null ? 0 : eVarArr.length;
                    e[] eVarArr2 = new e[(b2 + length)];
                    if (length != 0) {
                        System.arraycopy(this.f6191b, 0, eVarArr2, 0, length);
                    }
                    while (length < eVarArr2.length - 1) {
                        eVarArr2[length] = new e();
                        aVar.a((e) eVarArr2[length]);
                        aVar.a();
                        length++;
                    }
                    eVarArr2[length] = new e();
                    aVar.a((e) eVarArr2[length]);
                    this.f6191b = eVarArr2;
                } else if (a2 == 34) {
                    if (this.c == null) {
                        this.c = new d();
                    }
                    aVar.a((e) this.c);
                } else if (a2 == 58) {
                    int b3 = g.b(aVar, 58);
                    a[] aVarArr = this.d;
                    int length2 = aVarArr == null ? 0 : aVarArr.length;
                    a[] aVarArr2 = new a[(b3 + length2)];
                    if (length2 != 0) {
                        System.arraycopy(this.d, 0, aVarArr2, 0, length2);
                    }
                    while (length2 < aVarArr2.length - 1) {
                        aVarArr2[length2] = new a();
                        aVar.a((e) aVarArr2[length2]);
                        aVar.a();
                        length2++;
                    }
                    aVarArr2[length2] = new a();
                    aVar.a((e) aVarArr2[length2]);
                    this.d = aVarArr2;
                } else if (a2 == 66) {
                    int b4 = g.b(aVar, 66);
                    C0112c[] cVarArr = this.e;
                    int length3 = cVarArr == null ? 0 : cVarArr.length;
                    C0112c[] cVarArr2 = new C0112c[(b4 + length3)];
                    if (length3 != 0) {
                        System.arraycopy(this.e, 0, cVarArr2, 0, length3);
                    }
                    while (length3 < cVarArr2.length - 1) {
                        cVarArr2[length3] = new C0112c();
                        aVar.a((e) cVarArr2[length3]);
                        aVar.a();
                        length3++;
                    }
                    cVarArr2[length3] = new C0112c();
                    aVar.a((e) cVarArr2[length3]);
                    this.e = cVarArr2;
                } else if (a2 == 74) {
                    int b5 = g.b(aVar, 74);
                    String[] strArr = this.f;
                    int length4 = strArr == null ? 0 : strArr.length;
                    String[] strArr2 = new String[(b5 + length4)];
                    if (length4 != 0) {
                        System.arraycopy(this.f, 0, strArr2, 0, length4);
                    }
                    while (length4 < strArr2.length - 1) {
                        strArr2[length4] = aVar.i();
                        aVar.a();
                        length4++;
                    }
                    strArr2[length4] = aVar.i();
                    this.f = strArr2;
                } else if (a2 == 82) {
                    int b6 = g.b(aVar, 82);
                    f[] fVarArr = this.g;
                    int length5 = fVarArr == null ? 0 : fVarArr.length;
                    f[] fVarArr2 = new f[(b6 + length5)];
                    if (length5 != 0) {
                        System.arraycopy(this.g, 0, fVarArr2, 0, length5);
                    }
                    while (length5 < fVarArr2.length - 1) {
                        fVarArr2[length5] = new f();
                        aVar.a((e) fVarArr2[length5]);
                        aVar.a();
                        length5++;
                    }
                    fVarArr2[length5] = new f();
                    aVar.a((e) fVarArr2[length5]);
                    this.g = fVarArr2;
                } else if (!g.a(aVar, a2)) {
                    return this;
                }
            }
        }
    }

    public static final class d extends e {
        private static volatile d[] f;

        /* renamed from: b  reason: collision with root package name */
        public String f6205b;
        public int c;
        public String d;
        public boolean e;

        public static d[] d() {
            if (f == null) {
                synchronized (c.f5913a) {
                    if (f == null) {
                        f = new d[0];
                    }
                }
            }
            return f;
        }

        public d() {
            e();
        }

        public final d e() {
            this.f6205b = "";
            this.c = 0;
            this.d = "";
            this.e = false;
            this.f5940a = -1;
            return this;
        }

        public final void a(b bVar) throws IOException {
            bVar.a(1, this.f6205b);
            int i = this.c;
            if (i != 0) {
                bVar.c(2, i);
            }
            if (!this.d.equals("")) {
                bVar.a(3, this.d);
            }
            boolean z = this.e;
            if (z) {
                bVar.a(4, z);
            }
            super.a(bVar);
        }

        /* access modifiers changed from: protected */
        public final int c() {
            int c2 = super.c() + b.b(1, this.f6205b);
            int i = this.c;
            if (i != 0) {
                c2 += b.f(2, i);
            }
            if (!this.d.equals("")) {
                c2 += b.b(3, this.d);
            }
            return this.e ? c2 + b.f(4) : c2;
        }

        /* renamed from: b */
        public final d a(a aVar) throws IOException {
            while (true) {
                int a2 = aVar.a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 10) {
                    this.f6205b = aVar.i();
                } else if (a2 == 16) {
                    this.c = aVar.l();
                } else if (a2 == 26) {
                    this.d = aVar.i();
                } else if (a2 == 32) {
                    this.e = aVar.h();
                } else if (!g.a(aVar, a2)) {
                    return this;
                }
            }
        }
    }
}
