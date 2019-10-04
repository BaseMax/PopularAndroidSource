package com.yandex.metrica.impl.ob;

import java.io.IOException;
import java.util.Arrays;

public interface ke {

    public static final class a extends e {

        /* renamed from: b  reason: collision with root package name */
        public C0115a[] f6210b;

        /* renamed from: com.yandex.metrica.impl.ob.ke$a$a  reason: collision with other inner class name */
        public static final class C0115a extends e {
            private static volatile C0115a[] f;

            /* renamed from: b  reason: collision with root package name */
            public byte[] f6211b;
            public int c;
            public b d;
            public c e;

            public static C0115a[] d() {
                if (f == null) {
                    synchronized (c.f5913a) {
                        if (f == null) {
                            f = new C0115a[0];
                        }
                    }
                }
                return f;
            }

            public C0115a() {
                e();
            }

            public final C0115a e() {
                this.f6211b = g.c;
                this.c = 0;
                this.d = null;
                this.e = null;
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                bVar.a(1, this.f6211b);
                bVar.a(2, this.c);
                b bVar2 = this.d;
                if (bVar2 != null) {
                    bVar.a(3, (e) bVar2);
                }
                c cVar = this.e;
                if (cVar != null) {
                    bVar.a(4, (e) cVar);
                }
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                int c2 = super.c() + b.b(1, this.f6211b) + b.d(2, this.c);
                b bVar = this.d;
                if (bVar != null) {
                    c2 += b.b(3, (e) bVar);
                }
                c cVar = this.e;
                return cVar != null ? c2 + b.b(4, (e) cVar) : c2;
            }

            /* renamed from: b */
            public final C0115a a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 10) {
                        this.f6211b = aVar.j();
                    } else if (a2 == 16) {
                        int g = aVar.g();
                        if (g == 0 || g == 1 || g == 2 || g == 3) {
                            this.c = g;
                        }
                    } else if (a2 == 26) {
                        if (this.d == null) {
                            this.d = new b();
                        }
                        aVar.a((e) this.d);
                    } else if (a2 == 34) {
                        if (this.e == null) {
                            this.e = new c();
                        }
                        aVar.a((e) this.e);
                    } else if (!g.a(aVar, a2)) {
                        return this;
                    }
                }
            }
        }

        public static final class b extends e {

            /* renamed from: b  reason: collision with root package name */
            public boolean f6212b;
            public boolean c;

            public b() {
                d();
            }

            public final b d() {
                this.f6212b = false;
                this.c = false;
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                boolean z = this.f6212b;
                if (z) {
                    bVar.a(1, z);
                }
                boolean z2 = this.c;
                if (z2) {
                    bVar.a(2, z2);
                }
                super.a(bVar);
            }

            /* access modifiers changed from: protected */
            public final int c() {
                int c2 = super.c();
                if (this.f6212b) {
                    c2 += b.f(1);
                }
                return this.c ? c2 + b.f(2) : c2;
            }

            /* renamed from: b */
            public final b a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 8) {
                        this.f6212b = aVar.h();
                    } else if (a2 == 16) {
                        this.c = aVar.h();
                    } else if (!g.a(aVar, a2)) {
                        return this;
                    }
                }
            }
        }

        public static final class c extends e {

            /* renamed from: b  reason: collision with root package name */
            public byte[] f6213b;
            public double c;
            public double d;
            public boolean e;

            public c() {
                d();
            }

            public final c d() {
                this.f6213b = g.c;
                this.c = 0.0d;
                this.d = 0.0d;
                this.e = false;
                this.f5940a = -1;
                return this;
            }

            public final void a(b bVar) throws IOException {
                if (!Arrays.equals(this.f6213b, g.c)) {
                    bVar.a(1, this.f6213b);
                }
                if (Double.doubleToLongBits(this.c) != Double.doubleToLongBits(0.0d)) {
                    bVar.a(2, this.c);
                }
                if (Double.doubleToLongBits(this.d) != Double.doubleToLongBits(0.0d)) {
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
                int c2 = super.c();
                if (!Arrays.equals(this.f6213b, g.c)) {
                    c2 += b.b(1, this.f6213b);
                }
                if (Double.doubleToLongBits(this.c) != Double.doubleToLongBits(0.0d)) {
                    c2 += b.d(2);
                }
                if (Double.doubleToLongBits(this.d) != Double.doubleToLongBits(0.0d)) {
                    c2 += b.d(3);
                }
                return this.e ? c2 + b.f(4) : c2;
            }

            /* renamed from: b */
            public final c a(a aVar) throws IOException {
                while (true) {
                    int a2 = aVar.a();
                    if (a2 == 0) {
                        return this;
                    }
                    if (a2 == 10) {
                        this.f6213b = aVar.j();
                    } else if (a2 == 17) {
                        this.c = aVar.c();
                    } else if (a2 == 25) {
                        this.d = aVar.c();
                    } else if (a2 == 32) {
                        this.e = aVar.h();
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
            this.f6210b = C0115a.d();
            this.f5940a = -1;
            return this;
        }

        public final void a(b bVar) throws IOException {
            C0115a[] aVarArr = this.f6210b;
            if (aVarArr != null && aVarArr.length > 0) {
                int i = 0;
                while (true) {
                    C0115a[] aVarArr2 = this.f6210b;
                    if (i >= aVarArr2.length) {
                        break;
                    }
                    C0115a aVar = aVarArr2[i];
                    if (aVar != null) {
                        bVar.a(1, (e) aVar);
                    }
                    i++;
                }
            }
            super.a(bVar);
        }

        /* access modifiers changed from: protected */
        public final int c() {
            int c2 = super.c();
            C0115a[] aVarArr = this.f6210b;
            if (aVarArr != null && aVarArr.length > 0) {
                int i = 0;
                while (true) {
                    C0115a[] aVarArr2 = this.f6210b;
                    if (i >= aVarArr2.length) {
                        break;
                    }
                    C0115a aVar = aVarArr2[i];
                    if (aVar != null) {
                        c2 += b.b(1, (e) aVar);
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
                if (a2 == 10) {
                    int b2 = g.b(aVar, 10);
                    C0115a[] aVarArr = this.f6210b;
                    int length = aVarArr == null ? 0 : aVarArr.length;
                    C0115a[] aVarArr2 = new C0115a[(b2 + length)];
                    if (length != 0) {
                        System.arraycopy(this.f6210b, 0, aVarArr2, 0, length);
                    }
                    while (length < aVarArr2.length - 1) {
                        aVarArr2[length] = new C0115a();
                        aVar.a((e) aVarArr2[length]);
                        aVar.a();
                        length++;
                    }
                    aVarArr2[length] = new C0115a();
                    aVar.a((e) aVarArr2[length]);
                    this.f6210b = aVarArr2;
                } else if (!g.a(aVar, a2)) {
                    return this;
                }
            }
        }
    }
}
