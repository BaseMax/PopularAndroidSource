package com.yandex.metrica.impl.ob;

import java.io.IOException;

public interface kh {

    public static final class a extends e {

        /* renamed from: b  reason: collision with root package name */
        public String f6218b;
        public long c;
        public String[] d;
        public String e;
        public String f;
        public String[] g;
        public String[] h;
        public String[] i;
        public b j;
        public c k;
        public C0118a l;
        public e m;
        public d[] n;
        public String o;
        public String p;
        public boolean q;
        public String r;
        public String s;
        public String[] t;
        public f u;
        public boolean v;

        /* renamed from: com.yandex.metrica.impl.ob.kh$a$a  reason: collision with other inner class name */
        public static final class C0118a extends e {

            /* renamed from: b  reason: collision with root package name */
            public c f6219b;
            public long c;
            public long d;

            public C0118a() {
                d();
            }

            public final C0118a d() {
                this.f6219b = null;
                this.c = 60000;
                this.d = 3600000;
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                c cVar = this.f6219b;
                if (cVar != null) {
                    bVar.a(1, (e) cVar);
                }
                bVar.b(2, this.c);
                bVar.b(3, this.d);
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                int c2 = super.c();
                c cVar = this.f6219b;
                if (cVar != null) {
                    c2 += b.b(1, (e) cVar);
                }
                return c2 + b.d(2, this.c) + b.d(3, this.d);
            }

            /* renamed from: b */
            public final C0118a a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 10) {
                        if (this.f6219b == null) {
                            this.f6219b = new c();
                        }
                        aVar.a((e) this.f6219b);
                    } else if (a2 == 16) {
                        this.c = aVar.f();
                    } else if (a2 == 24) {
                        this.d = aVar.f();
                    } else if (!g.a(aVar, a2)) {
                        return this;
                    }
                }
            }
        }

        public static final class b extends e {

            /* renamed from: b  reason: collision with root package name */
            public boolean f6220b;
            public boolean c;
            public boolean d;
            public boolean e;
            public boolean f;
            public boolean g;
            public boolean h;
            public boolean i;
            public boolean j;
            public boolean k;
            public boolean l;
            public boolean m;
            public boolean n;
            public boolean o;

            public b() {
                d();
            }

            public final b d() {
                this.f6220b = false;
                this.c = false;
                this.d = false;
                this.e = false;
                this.f = false;
                this.g = false;
                this.h = true;
                this.i = false;
                this.j = false;
                this.k = false;
                this.l = false;
                this.m = false;
                this.n = false;
                this.o = false;
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                bVar.a(1, this.f6220b);
                bVar.a(2, this.c);
                bVar.a(3, this.d);
                bVar.a(4, this.e);
                bVar.a(5, this.f);
                bVar.a(6, this.g);
                bVar.a(7, this.h);
                bVar.a(8, this.i);
                bVar.a(9, this.j);
                bVar.a(10, this.k);
                bVar.a(11, this.l);
                bVar.a(12, this.m);
                bVar.a(13, this.n);
                bVar.a(14, this.o);
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                return super.c() + b.f(1) + b.f(2) + b.f(3) + b.f(4) + b.f(5) + b.f(6) + b.f(7) + b.f(8) + b.f(9) + b.f(10) + b.f(11) + b.f(12) + b.f(13) + b.f(14);
            }

            /* renamed from: b */
            public final b a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    switch (a2) {
                        case 0:
                            return this;
                        case 8:
                            this.f6220b = aVar.h();
                            break;
                        case 16:
                            this.c = aVar.h();
                            break;
                        case 24:
                            this.d = aVar.h();
                            break;
                        case 32:
                            this.e = aVar.h();
                            break;
                        case 40:
                            this.f = aVar.h();
                            break;
                        case 48:
                            this.g = aVar.h();
                            break;
                        case 56:
                            this.h = aVar.h();
                            break;
                        case 64:
                            this.i = aVar.h();
                            break;
                        case 72:
                            this.j = aVar.h();
                            break;
                        case 80:
                            this.k = aVar.h();
                            break;
                        case 88:
                            this.l = aVar.h();
                            break;
                        case 96:
                            this.m = aVar.h();
                            break;
                        case 104:
                            this.n = aVar.h();
                            break;
                        case 112:
                            this.o = aVar.h();
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

        public static final class c extends e {

            /* renamed from: b  reason: collision with root package name */
            public long f6221b;
            public float c;
            public int d;
            public int e;
            public long f;
            public int g;
            public boolean h;

            public c() {
                d();
            }

            public final c d() {
                this.f6221b = 5000;
                this.c = 10.0f;
                this.d = 20;
                this.e = 200;
                this.f = 60000;
                this.g = io.fabric.sdk.android.services.common.a.DEFAULT_TIMEOUT;
                this.h = false;
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                bVar.b(1, this.f6221b);
                bVar.a(2, this.c);
                bVar.a(3, this.d);
                bVar.a(4, this.e);
                bVar.b(5, this.f);
                bVar.a(6, this.g);
                bVar.a(7, this.h);
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                return super.c() + b.d(1, this.f6221b) + b.e(2) + b.d(3, this.d) + b.d(4, this.e) + b.d(5, this.f) + b.d(6, this.g) + b.f(7);
            }

            /* renamed from: b */
            public final c a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 8) {
                        this.f6221b = aVar.f();
                    } else if (a2 == 21) {
                        this.c = aVar.d();
                    } else if (a2 == 24) {
                        this.d = aVar.g();
                    } else if (a2 == 32) {
                        this.e = aVar.g();
                    } else if (a2 == 40) {
                        this.f = aVar.f();
                    } else if (a2 == 48) {
                        this.g = aVar.g();
                    } else if (a2 == 56) {
                        this.h = aVar.h();
                    } else if (!g.a(aVar, a2)) {
                        return this;
                    }
                }
            }
        }

        public static final class d extends e {
            private static volatile d[] h;

            /* renamed from: b  reason: collision with root package name */
            public String f6222b;
            public String c;
            public String d;
            public C0119a[] e;
            public long f;
            public int[] g;

            /* renamed from: com.yandex.metrica.impl.ob.kh$a$d$a  reason: collision with other inner class name */
            public static final class C0119a extends e {
                private static volatile C0119a[] d;

                /* renamed from: b  reason: collision with root package name */
                public String f6223b;
                public String c;

                public static C0119a[] d() {
                    if (d == null) {
                        synchronized (c.f5913a) {
                            if (d == null) {
                                d = new C0119a[0];
                            }
                        }
                    }
                    return d;
                }

                public C0119a() {
                    e();
                }

                public final C0119a e() {
                    this.f6223b = "";
                    this.c = "";
                    this.f5940a = -1;
                    return this;
                }

                public final void a(b bVar) throws IOException {
                    bVar.a(1, this.f6223b);
                    bVar.a(2, this.c);
                    super.a(bVar);
                }

                /* access modifiers changed from: protected */
                public final int c() {
                    return super.c() + b.b(1, this.f6223b) + b.b(2, this.c);
                }

                /* renamed from: b */
                public final C0119a a(a aVar) throws IOException {
                    while (true) {
                        int a2 = aVar.a();
                        if (a2 == 0) {
                            return this;
                        }
                        if (a2 == 10) {
                            this.f6223b = aVar.i();
                        } else if (a2 == 18) {
                            this.c = aVar.i();
                        } else if (!g.a(aVar, a2)) {
                            return this;
                        }
                    }
                }
            }

            public static d[] d() {
                if (h == null) {
                    synchronized (c.f5913a) {
                        if (h == null) {
                            h = new d[0];
                        }
                    }
                }
                return h;
            }

            public d() {
                e();
            }

            public final d e() {
                this.f6222b = "";
                this.c = "";
                this.d = "";
                this.e = C0119a.d();
                this.f = 0;
                this.g = g.f6048a;
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                bVar.a(1, this.f6222b);
                bVar.a(2, this.c);
                bVar.a(3, this.d);
                C0119a[] aVarArr = this.e;
                int i = 0;
                if (aVarArr != null && aVarArr.length > 0) {
                    int i2 = 0;
                    while (true) {
                        C0119a[] aVarArr2 = this.e;
                        if (i2 >= aVarArr2.length) {
                            break;
                        }
                        C0119a aVar = aVarArr2[i2];
                        if (aVar != null) {
                            bVar.a(4, (e) aVar);
                        }
                        i2++;
                    }
                }
                bVar.b(5, this.f);
                int[] iArr = this.g;
                if (iArr != null && iArr.length > 0) {
                    while (true) {
                        int[] iArr2 = this.g;
                        if (i >= iArr2.length) {
                            break;
                        }
                        bVar.a(6, iArr2[i]);
                        i++;
                    }
                }
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                int c2 = super.c() + b.b(1, this.f6222b) + b.b(2, this.c) + b.b(3, this.d);
                C0119a[] aVarArr = this.e;
                int i = 0;
                if (aVarArr != null && aVarArr.length > 0) {
                    int i2 = c2;
                    int i3 = 0;
                    while (true) {
                        C0119a[] aVarArr2 = this.e;
                        if (i3 >= aVarArr2.length) {
                            break;
                        }
                        C0119a aVar = aVarArr2[i3];
                        if (aVar != null) {
                            i2 += b.b(4, (e) aVar);
                        }
                        i3++;
                    }
                    c2 = i2;
                }
                int d2 = c2 + b.d(5, this.f);
                int[] iArr = this.g;
                if (iArr == null || iArr.length <= 0) {
                    return d2;
                }
                int i4 = 0;
                while (true) {
                    int[] iArr2 = this.g;
                    if (i >= iArr2.length) {
                        return d2 + i4 + (iArr2.length * 1);
                    }
                    i4 += b.g(iArr2[i]);
                    i++;
                }
            }

            /* renamed from: b */
            public final d a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 10) {
                        this.f6222b = aVar.i();
                    } else if (a2 == 18) {
                        this.c = aVar.i();
                    } else if (a2 == 26) {
                        this.d = aVar.i();
                    } else if (a2 == 34) {
                        int b2 = g.b(aVar, 34);
                        C0119a[] aVarArr = this.e;
                        int length = aVarArr == null ? 0 : aVarArr.length;
                        C0119a[] aVarArr2 = new C0119a[(b2 + length)];
                        if (length != 0) {
                            System.arraycopy(this.e, 0, aVarArr2, 0, length);
                        }
                        while (length < aVarArr2.length - 1) {
                            aVarArr2[length] = new C0119a();
                            aVar.a((e) aVarArr2[length]);
                            aVar.a();
                            length++;
                        }
                        aVarArr2[length] = new C0119a();
                        aVar.a((e) aVarArr2[length]);
                        this.e = aVarArr2;
                    } else if (a2 == 40) {
                        this.f = aVar.f();
                    } else if (a2 == 48) {
                        int b3 = g.b(aVar, 48);
                        int[] iArr = new int[b3];
                        int i = 0;
                        for (int i2 = 0; i2 < b3; i2++) {
                            if (i2 != 0) {
                                aVar.a();
                            }
                            int g2 = aVar.g();
                            if (g2 == 1 || g2 == 2) {
                                iArr[i] = g2;
                                i++;
                            }
                        }
                        if (i != 0) {
                            int[] iArr2 = this.g;
                            int length2 = iArr2 == null ? 0 : iArr2.length;
                            if (length2 == 0 && i == b3) {
                                this.g = iArr;
                            } else {
                                int[] iArr3 = new int[(length2 + i)];
                                if (length2 != 0) {
                                    System.arraycopy(this.g, 0, iArr3, 0, length2);
                                }
                                System.arraycopy(iArr, 0, iArr3, length2, i);
                                this.g = iArr3;
                            }
                        }
                    } else if (a2 == 50) {
                        int c2 = aVar.c(aVar.m());
                        int s = aVar.s();
                        int i3 = 0;
                        while (aVar.q() > 0) {
                            int g3 = aVar.g();
                            if (g3 == 1 || g3 == 2) {
                                i3++;
                            }
                        }
                        if (i3 != 0) {
                            aVar.e(s);
                            int[] iArr4 = this.g;
                            int length3 = iArr4 == null ? 0 : iArr4.length;
                            int[] iArr5 = new int[(i3 + length3)];
                            if (length3 != 0) {
                                System.arraycopy(this.g, 0, iArr5, 0, length3);
                            }
                            while (aVar.q() > 0) {
                                int g4 = aVar.g();
                                if (g4 == 1 || g4 == 2) {
                                    iArr5[length3] = g4;
                                    length3++;
                                }
                            }
                            this.g = iArr5;
                        }
                        aVar.d(c2);
                    } else if (!g.a(aVar, a2)) {
                        return this;
                    }
                }
            }
        }

        public static final class e extends e {

            /* renamed from: b  reason: collision with root package name */
            public long f6224b;
            public String c;
            public int[] d;

            public e() {
                d();
            }

            public final e d() {
                this.f6224b = 0;
                this.c = "";
                this.d = g.f6048a;
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                bVar.b(1, this.f6224b);
                bVar.a(2, this.c);
                int[] iArr = this.d;
                if (iArr != null && iArr.length > 0) {
                    int i = 0;
                    while (true) {
                        int[] iArr2 = this.d;
                        if (i >= iArr2.length) {
                            break;
                        }
                        bVar.a(3, iArr2[i]);
                        i++;
                    }
                }
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                int c2 = super.c() + b.d(1, this.f6224b) + b.b(2, this.c);
                int[] iArr = this.d;
                if (iArr == null || iArr.length <= 0) {
                    return c2;
                }
                int i = 0;
                int i2 = 0;
                while (true) {
                    int[] iArr2 = this.d;
                    if (i >= iArr2.length) {
                        return c2 + i2 + (iArr2.length * 1);
                    }
                    i2 += b.g(iArr2[i]);
                    i++;
                }
            }

            /* renamed from: b */
            public final e a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 8) {
                        this.f6224b = aVar.f();
                    } else if (a2 == 18) {
                        this.c = aVar.i();
                    } else if (a2 == 24) {
                        int b2 = g.b(aVar, 24);
                        int[] iArr = this.d;
                        int length = iArr == null ? 0 : iArr.length;
                        int[] iArr2 = new int[(b2 + length)];
                        if (length != 0) {
                            System.arraycopy(this.d, 0, iArr2, 0, length);
                        }
                        while (length < iArr2.length - 1) {
                            iArr2[length] = aVar.g();
                            aVar.a();
                            length++;
                        }
                        iArr2[length] = aVar.g();
                        this.d = iArr2;
                    } else if (a2 == 26) {
                        int c2 = aVar.c(aVar.m());
                        int s = aVar.s();
                        int i = 0;
                        while (aVar.q() > 0) {
                            aVar.g();
                            i++;
                        }
                        aVar.e(s);
                        int[] iArr3 = this.d;
                        int length2 = iArr3 == null ? 0 : iArr3.length;
                        int[] iArr4 = new int[(i + length2)];
                        if (length2 != 0) {
                            System.arraycopy(this.d, 0, iArr4, 0, length2);
                        }
                        while (length2 < iArr4.length) {
                            iArr4[length2] = aVar.g();
                            length2++;
                        }
                        this.d = iArr4;
                        aVar.d(c2);
                    } else if (!g.a(aVar, a2)) {
                        return this;
                    }
                }
            }
        }

        public static final class f extends e {

            /* renamed from: b  reason: collision with root package name */
            public long f6225b;

            public f() {
                d();
            }

            public final f d() {
                this.f6225b = 18000000;
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                bVar.b(1, this.f6225b);
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                return super.c() + b.d(1, this.f6225b);
            }

            /* renamed from: b */
            public final f a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 8) {
                        this.f6225b = aVar.f();
                    } else if (!g.a(aVar, a2)) {
                        return this;
                    }
                }
            }
        }

        public a() {
            d();
        }

        public final a d() {
            this.f6218b = "";
            this.c = 0;
            this.d = g.f6049b;
            this.e = "";
            this.f = "";
            this.g = g.f6049b;
            this.h = g.f6049b;
            this.i = g.f6049b;
            this.j = null;
            this.k = null;
            this.l = null;
            this.m = null;
            this.n = d.d();
            this.o = "";
            this.p = "";
            this.q = false;
            this.r = "";
            this.s = "";
            this.t = g.f6049b;
            this.u = null;
            this.v = false;
            this.f5940a = -1;
            return this;
        }

        public final void a(b bVar) throws IOException {
            if (!this.f6218b.equals("")) {
                bVar.a(1, this.f6218b);
            }
            bVar.b(3, this.c);
            String[] strArr = this.d;
            int i2 = 0;
            if (strArr != null && strArr.length > 0) {
                int i3 = 0;
                while (true) {
                    String[] strArr2 = this.d;
                    if (i3 >= strArr2.length) {
                        break;
                    }
                    String str = strArr2[i3];
                    if (str != null) {
                        bVar.a(4, str);
                    }
                    i3++;
                }
            }
            if (!this.e.equals("")) {
                bVar.a(5, this.e);
            }
            if (!this.f.equals("")) {
                bVar.a(6, this.f);
            }
            String[] strArr3 = this.g;
            if (strArr3 != null && strArr3.length > 0) {
                int i4 = 0;
                while (true) {
                    String[] strArr4 = this.g;
                    if (i4 >= strArr4.length) {
                        break;
                    }
                    String str2 = strArr4[i4];
                    if (str2 != null) {
                        bVar.a(7, str2);
                    }
                    i4++;
                }
            }
            String[] strArr5 = this.h;
            if (strArr5 != null && strArr5.length > 0) {
                int i5 = 0;
                while (true) {
                    String[] strArr6 = this.h;
                    if (i5 >= strArr6.length) {
                        break;
                    }
                    String str3 = strArr6[i5];
                    if (str3 != null) {
                        bVar.a(8, str3);
                    }
                    i5++;
                }
            }
            String[] strArr7 = this.i;
            if (strArr7 != null && strArr7.length > 0) {
                int i6 = 0;
                while (true) {
                    String[] strArr8 = this.i;
                    if (i6 >= strArr8.length) {
                        break;
                    }
                    String str4 = strArr8[i6];
                    if (str4 != null) {
                        bVar.a(9, str4);
                    }
                    i6++;
                }
            }
            b bVar2 = this.j;
            if (bVar2 != null) {
                bVar.a(10, (e) bVar2);
            }
            c cVar = this.k;
            if (cVar != null) {
                bVar.a(11, (e) cVar);
            }
            C0118a aVar = this.l;
            if (aVar != null) {
                bVar.a(12, (e) aVar);
            }
            e eVar = this.m;
            if (eVar != null) {
                bVar.a(13, (e) eVar);
            }
            d[] dVarArr = this.n;
            if (dVarArr != null && dVarArr.length > 0) {
                int i7 = 0;
                while (true) {
                    d[] dVarArr2 = this.n;
                    if (i7 >= dVarArr2.length) {
                        break;
                    }
                    d dVar = dVarArr2[i7];
                    if (dVar != null) {
                        bVar.a(14, (e) dVar);
                    }
                    i7++;
                }
            }
            if (!this.o.equals("")) {
                bVar.a(15, this.o);
            }
            if (!this.p.equals("")) {
                bVar.a(16, this.p);
            }
            bVar.a(17, this.q);
            if (!this.r.equals("")) {
                bVar.a(18, this.r);
            }
            if (!this.s.equals("")) {
                bVar.a(19, this.s);
            }
            String[] strArr9 = this.t;
            if (strArr9 != null && strArr9.length > 0) {
                while (true) {
                    String[] strArr10 = this.t;
                    if (i2 >= strArr10.length) {
                        break;
                    }
                    String str5 = strArr10[i2];
                    if (str5 != null) {
                        bVar.a(20, str5);
                    }
                    i2++;
                }
            }
            f fVar = this.u;
            if (fVar != null) {
                bVar.a(21, (e) fVar);
            }
            boolean z = this.v;
            if (z) {
                bVar.a(22, z);
            }
            super.a(bVar);
        }

        /* access modifiers changed from: protected */
        public final int c() {
            int c2 = super.c();
            if (!this.f6218b.equals("")) {
                c2 += b.b(1, this.f6218b);
            }
            int d2 = c2 + b.d(3, this.c);
            String[] strArr = this.d;
            int i2 = 0;
            if (strArr != null && strArr.length > 0) {
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    String[] strArr2 = this.d;
                    if (i3 >= strArr2.length) {
                        break;
                    }
                    String str = strArr2[i3];
                    if (str != null) {
                        i5++;
                        i4 += b.b(str);
                    }
                    i3++;
                }
                d2 = d2 + i4 + (i5 * 1);
            }
            if (!this.e.equals("")) {
                d2 += b.b(5, this.e);
            }
            if (!this.f.equals("")) {
                d2 += b.b(6, this.f);
            }
            String[] strArr3 = this.g;
            if (strArr3 != null && strArr3.length > 0) {
                int i6 = 0;
                int i7 = 0;
                int i8 = 0;
                while (true) {
                    String[] strArr4 = this.g;
                    if (i6 >= strArr4.length) {
                        break;
                    }
                    String str2 = strArr4[i6];
                    if (str2 != null) {
                        i8++;
                        i7 += b.b(str2);
                    }
                    i6++;
                }
                d2 = d2 + i7 + (i8 * 1);
            }
            String[] strArr5 = this.h;
            if (strArr5 != null && strArr5.length > 0) {
                int i9 = 0;
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    String[] strArr6 = this.h;
                    if (i9 >= strArr6.length) {
                        break;
                    }
                    String str3 = strArr6[i9];
                    if (str3 != null) {
                        i11++;
                        i10 += b.b(str3);
                    }
                    i9++;
                }
                d2 = d2 + i10 + (i11 * 1);
            }
            String[] strArr7 = this.i;
            if (strArr7 != null && strArr7.length > 0) {
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                while (true) {
                    String[] strArr8 = this.i;
                    if (i12 >= strArr8.length) {
                        break;
                    }
                    String str4 = strArr8[i12];
                    if (str4 != null) {
                        i14++;
                        i13 += b.b(str4);
                    }
                    i12++;
                }
                d2 = d2 + i13 + (i14 * 1);
            }
            b bVar = this.j;
            if (bVar != null) {
                d2 += b.b(10, (e) bVar);
            }
            c cVar = this.k;
            if (cVar != null) {
                d2 += b.b(11, (e) cVar);
            }
            C0118a aVar = this.l;
            if (aVar != null) {
                d2 += b.b(12, (e) aVar);
            }
            e eVar = this.m;
            if (eVar != null) {
                d2 += b.b(13, (e) eVar);
            }
            d[] dVarArr = this.n;
            if (dVarArr != null && dVarArr.length > 0) {
                int i15 = d2;
                int i16 = 0;
                while (true) {
                    d[] dVarArr2 = this.n;
                    if (i16 >= dVarArr2.length) {
                        break;
                    }
                    d dVar = dVarArr2[i16];
                    if (dVar != null) {
                        i15 += b.b(14, (e) dVar);
                    }
                    i16++;
                }
                d2 = i15;
            }
            if (!this.o.equals("")) {
                d2 += b.b(15, this.o);
            }
            if (!this.p.equals("")) {
                d2 += b.b(16, this.p);
            }
            int f2 = d2 + b.f(17);
            if (!this.r.equals("")) {
                f2 += b.b(18, this.r);
            }
            if (!this.s.equals("")) {
                f2 += b.b(19, this.s);
            }
            String[] strArr9 = this.t;
            if (strArr9 != null && strArr9.length > 0) {
                int i17 = 0;
                int i18 = 0;
                while (true) {
                    String[] strArr10 = this.t;
                    if (i2 >= strArr10.length) {
                        break;
                    }
                    String str5 = strArr10[i2];
                    if (str5 != null) {
                        i18++;
                        i17 += b.b(str5);
                    }
                    i2++;
                }
                f2 = f2 + i17 + (i18 * 2);
            }
            f fVar = this.u;
            if (fVar != null) {
                f2 += b.b(21, (e) fVar);
            }
            return this.v ? f2 + b.f(22) : f2;
        }

        /* renamed from: b */
        public final a a(a aVar) throws IOException {
            while (true) {
                int a2 = aVar.a();
                switch (a2) {
                    case 0:
                        return this;
                    case 10:
                        this.f6218b = aVar.i();
                        break;
                    case 24:
                        this.c = aVar.f();
                        break;
                    case 34:
                        int b2 = g.b(aVar, 34);
                        String[] strArr = this.d;
                        int length = strArr == null ? 0 : strArr.length;
                        String[] strArr2 = new String[(b2 + length)];
                        if (length != 0) {
                            System.arraycopy(this.d, 0, strArr2, 0, length);
                        }
                        while (length < strArr2.length - 1) {
                            strArr2[length] = aVar.i();
                            aVar.a();
                            length++;
                        }
                        strArr2[length] = aVar.i();
                        this.d = strArr2;
                        break;
                    case 42:
                        this.e = aVar.i();
                        break;
                    case 50:
                        this.f = aVar.i();
                        break;
                    case 58:
                        int b3 = g.b(aVar, 58);
                        String[] strArr3 = this.g;
                        int length2 = strArr3 == null ? 0 : strArr3.length;
                        String[] strArr4 = new String[(b3 + length2)];
                        if (length2 != 0) {
                            System.arraycopy(this.g, 0, strArr4, 0, length2);
                        }
                        while (length2 < strArr4.length - 1) {
                            strArr4[length2] = aVar.i();
                            aVar.a();
                            length2++;
                        }
                        strArr4[length2] = aVar.i();
                        this.g = strArr4;
                        break;
                    case 66:
                        int b4 = g.b(aVar, 66);
                        String[] strArr5 = this.h;
                        int length3 = strArr5 == null ? 0 : strArr5.length;
                        String[] strArr6 = new String[(b4 + length3)];
                        if (length3 != 0) {
                            System.arraycopy(this.h, 0, strArr6, 0, length3);
                        }
                        while (length3 < strArr6.length - 1) {
                            strArr6[length3] = aVar.i();
                            aVar.a();
                            length3++;
                        }
                        strArr6[length3] = aVar.i();
                        this.h = strArr6;
                        break;
                    case 74:
                        int b5 = g.b(aVar, 74);
                        String[] strArr7 = this.i;
                        int length4 = strArr7 == null ? 0 : strArr7.length;
                        String[] strArr8 = new String[(b5 + length4)];
                        if (length4 != 0) {
                            System.arraycopy(this.i, 0, strArr8, 0, length4);
                        }
                        while (length4 < strArr8.length - 1) {
                            strArr8[length4] = aVar.i();
                            aVar.a();
                            length4++;
                        }
                        strArr8[length4] = aVar.i();
                        this.i = strArr8;
                        break;
                    case 82:
                        if (this.j == null) {
                            this.j = new b();
                        }
                        aVar.a((e) this.j);
                        break;
                    case 90:
                        if (this.k == null) {
                            this.k = new c();
                        }
                        aVar.a((e) this.k);
                        break;
                    case 98:
                        if (this.l == null) {
                            this.l = new C0118a();
                        }
                        aVar.a((e) this.l);
                        break;
                    case 106:
                        if (this.m == null) {
                            this.m = new e();
                        }
                        aVar.a((e) this.m);
                        break;
                    case 114:
                        int b6 = g.b(aVar, 114);
                        d[] dVarArr = this.n;
                        int length5 = dVarArr == null ? 0 : dVarArr.length;
                        d[] dVarArr2 = new d[(b6 + length5)];
                        if (length5 != 0) {
                            System.arraycopy(this.n, 0, dVarArr2, 0, length5);
                        }
                        while (length5 < dVarArr2.length - 1) {
                            dVarArr2[length5] = new d();
                            aVar.a((e) dVarArr2[length5]);
                            aVar.a();
                            length5++;
                        }
                        dVarArr2[length5] = new d();
                        aVar.a((e) dVarArr2[length5]);
                        this.n = dVarArr2;
                        break;
                    case 122:
                        this.o = aVar.i();
                        break;
                    case 130:
                        this.p = aVar.i();
                        break;
                    case 136:
                        this.q = aVar.h();
                        break;
                    case 146:
                        this.r = aVar.i();
                        break;
                    case 154:
                        this.s = aVar.i();
                        break;
                    case 162:
                        int b7 = g.b(aVar, 162);
                        String[] strArr9 = this.t;
                        int length6 = strArr9 == null ? 0 : strArr9.length;
                        String[] strArr10 = new String[(b7 + length6)];
                        if (length6 != 0) {
                            System.arraycopy(this.t, 0, strArr10, 0, length6);
                        }
                        while (length6 < strArr10.length - 1) {
                            strArr10[length6] = aVar.i();
                            aVar.a();
                            length6++;
                        }
                        strArr10[length6] = aVar.i();
                        this.t = strArr10;
                        break;
                    case 170:
                        if (this.u == null) {
                            this.u = new f();
                        }
                        aVar.a((e) this.u);
                        break;
                    case 176:
                        this.v = aVar.h();
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
}
