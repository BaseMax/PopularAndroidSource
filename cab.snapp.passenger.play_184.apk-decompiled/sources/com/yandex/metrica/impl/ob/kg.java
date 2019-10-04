package com.yandex.metrica.impl.ob;

import java.io.IOException;

public interface kg {

    public static final class a extends e {

        /* renamed from: b  reason: collision with root package name */
        public C0116a[] f6215b;
        public String[] c;

        /* renamed from: com.yandex.metrica.impl.ob.kg$a$a  reason: collision with other inner class name */
        public static final class C0116a extends e {
            private static volatile C0116a[] h;

            /* renamed from: b  reason: collision with root package name */
            public String f6216b;
            public String c;
            public String d;
            public C0117a[] e;
            public long f;
            public int[] g;

            /* renamed from: com.yandex.metrica.impl.ob.kg$a$a$a  reason: collision with other inner class name */
            public static final class C0117a extends e {
                private static volatile C0117a[] d;

                /* renamed from: b  reason: collision with root package name */
                public String f6217b;
                public String c;

                public static C0117a[] d() {
                    if (d == null) {
                        synchronized (c.f5913a) {
                            if (d == null) {
                                d = new C0117a[0];
                            }
                        }
                    }
                    return d;
                }

                public C0117a() {
                    e();
                }

                public final C0117a e() {
                    this.f6217b = "";
                    this.c = "";
                    this.f5940a = -1;
                    return this;
                }

                public final void a(b bVar) throws IOException {
                    bVar.a(1, this.f6217b);
                    bVar.a(2, this.c);
                    super.a(bVar);
                }

                /* access modifiers changed from: protected */
                public final int c() {
                    return super.c() + b.b(1, this.f6217b) + b.b(2, this.c);
                }

                /* renamed from: b */
                public final C0117a a(a aVar) throws IOException {
                    while (true) {
                        int a2 = aVar.a();
                        if (a2 == 0) {
                            return this;
                        }
                        if (a2 == 10) {
                            this.f6217b = aVar.i();
                        } else if (a2 == 18) {
                            this.c = aVar.i();
                        } else if (!g.a(aVar, a2)) {
                            return this;
                        }
                    }
                }
            }

            public static C0116a[] d() {
                if (h == null) {
                    synchronized (c.f5913a) {
                        if (h == null) {
                            h = new C0116a[0];
                        }
                    }
                }
                return h;
            }

            public C0116a() {
                e();
            }

            public final C0116a e() {
                this.f6216b = "";
                this.c = "";
                this.d = "";
                this.e = C0117a.d();
                this.f = 0;
                this.g = g.f6048a;
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                bVar.a(1, this.f6216b);
                bVar.a(2, this.c);
                bVar.a(3, this.d);
                C0117a[] aVarArr = this.e;
                int i = 0;
                if (aVarArr != null && aVarArr.length > 0) {
                    int i2 = 0;
                    while (true) {
                        C0117a[] aVarArr2 = this.e;
                        if (i2 >= aVarArr2.length) {
                            break;
                        }
                        C0117a aVar = aVarArr2[i2];
                        if (aVar != null) {
                            bVar.a(4, (e) aVar);
                        }
                        i2++;
                    }
                }
                bVar.a(5, this.f);
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
                int c2 = super.c() + b.b(1, this.f6216b) + b.b(2, this.c) + b.b(3, this.d);
                C0117a[] aVarArr = this.e;
                int i = 0;
                if (aVarArr != null && aVarArr.length > 0) {
                    int i2 = c2;
                    int i3 = 0;
                    while (true) {
                        C0117a[] aVarArr2 = this.e;
                        if (i3 >= aVarArr2.length) {
                            break;
                        }
                        C0117a aVar = aVarArr2[i3];
                        if (aVar != null) {
                            i2 += b.b(4, (e) aVar);
                        }
                        i3++;
                    }
                    c2 = i2;
                }
                int c3 = c2 + b.c(5, this.f);
                int[] iArr = this.g;
                if (iArr == null || iArr.length <= 0) {
                    return c3;
                }
                int i4 = 0;
                while (true) {
                    int[] iArr2 = this.g;
                    if (i >= iArr2.length) {
                        return c3 + i4 + (iArr2.length * 1);
                    }
                    i4 += b.g(iArr2[i]);
                    i++;
                }
            }

            /* renamed from: b */
            public final C0116a a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 10) {
                        this.f6216b = aVar.i();
                    } else if (a2 == 18) {
                        this.c = aVar.i();
                    } else if (a2 == 26) {
                        this.d = aVar.i();
                    } else if (a2 == 34) {
                        int b2 = g.b(aVar, 34);
                        C0117a[] aVarArr = this.e;
                        int length = aVarArr == null ? 0 : aVarArr.length;
                        C0117a[] aVarArr2 = new C0117a[(b2 + length)];
                        if (length != 0) {
                            System.arraycopy(this.e, 0, aVarArr2, 0, length);
                        }
                        while (length < aVarArr2.length - 1) {
                            aVarArr2[length] = new C0117a();
                            aVar.a((e) aVarArr2[length]);
                            aVar.a();
                            length++;
                        }
                        aVarArr2[length] = new C0117a();
                        aVar.a((e) aVarArr2[length]);
                        this.e = aVarArr2;
                    } else if (a2 == 40) {
                        this.f = aVar.e();
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

        public a() {
            d();
        }

        public final a d() {
            this.f6215b = C0116a.d();
            this.c = g.f6049b;
            this.f5940a = -1;
            return this;
        }

        public final void a(b bVar) throws IOException {
            C0116a[] aVarArr = this.f6215b;
            int i = 0;
            if (aVarArr != null && aVarArr.length > 0) {
                int i2 = 0;
                while (true) {
                    C0116a[] aVarArr2 = this.f6215b;
                    if (i2 >= aVarArr2.length) {
                        break;
                    }
                    C0116a aVar = aVarArr2[i2];
                    if (aVar != null) {
                        bVar.a(1, (e) aVar);
                    }
                    i2++;
                }
            }
            String[] strArr = this.c;
            if (strArr != null && strArr.length > 0) {
                while (true) {
                    String[] strArr2 = this.c;
                    if (i >= strArr2.length) {
                        break;
                    }
                    String str = strArr2[i];
                    if (str != null) {
                        bVar.a(2, str);
                    }
                    i++;
                }
            }
            super.a(bVar);
        }

        /* access modifiers changed from: protected */
        public final int c() {
            int c2 = super.c();
            C0116a[] aVarArr = this.f6215b;
            int i = 0;
            if (aVarArr != null && aVarArr.length > 0) {
                int i2 = c2;
                int i3 = 0;
                while (true) {
                    C0116a[] aVarArr2 = this.f6215b;
                    if (i3 >= aVarArr2.length) {
                        break;
                    }
                    C0116a aVar = aVarArr2[i3];
                    if (aVar != null) {
                        i2 += b.b(1, (e) aVar);
                    }
                    i3++;
                }
                c2 = i2;
            }
            String[] strArr = this.c;
            if (strArr == null || strArr.length <= 0) {
                return c2;
            }
            int i4 = 0;
            int i5 = 0;
            while (true) {
                String[] strArr2 = this.c;
                if (i >= strArr2.length) {
                    return c2 + i4 + (i5 * 1);
                }
                String str = strArr2[i];
                if (str != null) {
                    i5++;
                    i4 += b.b(str);
                }
                i++;
            }
        }

        /* renamed from: b */
        public final a a(a aVar) throws IOException {
            while (true) {
                int a2 = aVar.a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 10) {
                    int b2 = g.b(aVar, 10);
                    C0116a[] aVarArr = this.f6215b;
                    int length = aVarArr == null ? 0 : aVarArr.length;
                    C0116a[] aVarArr2 = new C0116a[(b2 + length)];
                    if (length != 0) {
                        System.arraycopy(this.f6215b, 0, aVarArr2, 0, length);
                    }
                    while (length < aVarArr2.length - 1) {
                        aVarArr2[length] = new C0116a();
                        aVar.a((e) aVarArr2[length]);
                        aVar.a();
                        length++;
                    }
                    aVarArr2[length] = new C0116a();
                    aVar.a((e) aVarArr2[length]);
                    this.f6215b = aVarArr2;
                } else if (a2 == 18) {
                    int b3 = g.b(aVar, 18);
                    String[] strArr = this.c;
                    int length2 = strArr == null ? 0 : strArr.length;
                    String[] strArr2 = new String[(b3 + length2)];
                    if (length2 != 0) {
                        System.arraycopy(this.c, 0, strArr2, 0, length2);
                    }
                    while (length2 < strArr2.length - 1) {
                        strArr2[length2] = aVar.i();
                        aVar.a();
                        length2++;
                    }
                    strArr2[length2] = aVar.i();
                    this.c = strArr2;
                } else if (!g.a(aVar, a2)) {
                    return this;
                }
            }
        }
    }
}
