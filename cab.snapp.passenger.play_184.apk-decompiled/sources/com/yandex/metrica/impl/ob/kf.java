package com.yandex.metrica.impl.ob;

import java.io.IOException;

public interface kf {

    public static final class a extends e {

        /* renamed from: b  reason: collision with root package name */
        public boolean f6214b;
        public int c;
        public int d;
        public int[] e;

        public a() {
            d();
        }

        public final a d() {
            this.f6214b = false;
            this.c = 0;
            this.d = 0;
            this.e = g.f6048a;
            this.f5940a = -1;
            return this;
        }

        public final void a(b bVar) throws IOException {
            bVar.a(1, this.f6214b);
            bVar.b(2, this.c);
            bVar.b(3, this.d);
            int[] iArr = this.e;
            if (iArr != null && iArr.length > 0) {
                int i = 0;
                while (true) {
                    int[] iArr2 = this.e;
                    if (i >= iArr2.length) {
                        break;
                    }
                    bVar.a(4, iArr2[i]);
                    i++;
                }
            }
            super.a(bVar);
        }

        /* access modifiers changed from: protected */
        public final int c() {
            int c2 = super.c() + b.f(1) + b.e(2, this.c) + b.e(3, this.d);
            int[] iArr = this.e;
            if (iArr == null || iArr.length <= 0) {
                return c2;
            }
            int i = 0;
            int i2 = 0;
            while (true) {
                int[] iArr2 = this.e;
                if (i >= iArr2.length) {
                    return c2 + i2 + (iArr2.length * 1);
                }
                i2 += b.g(iArr2[i]);
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
                if (a2 == 8) {
                    this.f6214b = aVar.h();
                } else if (a2 == 16) {
                    this.c = aVar.k();
                } else if (a2 == 24) {
                    this.d = aVar.k();
                } else if (a2 == 32) {
                    int b2 = g.b(aVar, 32);
                    int[] iArr = this.e;
                    int length = iArr == null ? 0 : iArr.length;
                    int[] iArr2 = new int[(b2 + length)];
                    if (length != 0) {
                        System.arraycopy(this.e, 0, iArr2, 0, length);
                    }
                    while (length < iArr2.length - 1) {
                        iArr2[length] = aVar.g();
                        aVar.a();
                        length++;
                    }
                    iArr2[length] = aVar.g();
                    this.e = iArr2;
                } else if (a2 == 34) {
                    int c2 = aVar.c(aVar.m());
                    int s = aVar.s();
                    int i = 0;
                    while (aVar.q() > 0) {
                        aVar.g();
                        i++;
                    }
                    aVar.e(s);
                    int[] iArr3 = this.e;
                    int length2 = iArr3 == null ? 0 : iArr3.length;
                    int[] iArr4 = new int[(i + length2)];
                    if (length2 != 0) {
                        System.arraycopy(this.e, 0, iArr4, 0, length2);
                    }
                    while (length2 < iArr4.length) {
                        iArr4[length2] = aVar.g();
                        length2++;
                    }
                    this.e = iArr4;
                    aVar.d(c2);
                } else if (!g.a(aVar, a2)) {
                    return this;
                }
            }
        }
    }
}
