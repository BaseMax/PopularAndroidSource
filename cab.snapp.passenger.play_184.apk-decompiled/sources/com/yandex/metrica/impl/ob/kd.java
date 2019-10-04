package com.yandex.metrica.impl.ob;

import java.io.IOException;
import java.util.Arrays;

public final class kd extends e {

    /* renamed from: b  reason: collision with root package name */
    public int f6208b;
    public double c;
    public byte[] d;
    public byte[] e;
    public byte[] f;
    public a g;

    public static final class a extends e {

        /* renamed from: b  reason: collision with root package name */
        public byte[] f6209b;
        public byte[] c;

        public a() {
            d();
        }

        public final a d() {
            this.f6209b = g.c;
            this.c = g.c;
            this.f5940a = -1;
            return this;
        }

        public final void a(b bVar) throws IOException {
            if (!Arrays.equals(this.f6209b, g.c)) {
                bVar.a(1, this.f6209b);
            }
            if (!Arrays.equals(this.c, g.c)) {
                bVar.a(2, this.c);
            }
            super.a(bVar);
        }

        /* access modifiers changed from: protected */
        public final int c() {
            int c2 = super.c();
            if (!Arrays.equals(this.f6209b, g.c)) {
                c2 += b.b(1, this.f6209b);
            }
            return !Arrays.equals(this.c, g.c) ? c2 + b.b(2, this.c) : c2;
        }

        /* renamed from: b */
        public final a a(a aVar) throws IOException {
            while (true) {
                int a2 = aVar.a();
                if (a2 == 0) {
                    return this;
                }
                if (a2 == 10) {
                    this.f6209b = aVar.j();
                } else if (a2 == 18) {
                    this.c = aVar.j();
                } else if (!g.a(aVar, a2)) {
                    return this;
                }
            }
        }
    }

    public kd() {
        d();
    }

    public final kd d() {
        this.f6208b = 1;
        this.c = 0.0d;
        this.d = g.c;
        this.e = g.c;
        this.f = g.c;
        this.g = null;
        this.f5940a = -1;
        return this;
    }

    public final void a(b bVar) throws IOException {
        int i = this.f6208b;
        if (i != 1) {
            bVar.b(1, i);
        }
        bVar.a(2, this.c);
        bVar.a(3, this.d);
        if (!Arrays.equals(this.e, g.c)) {
            bVar.a(4, this.e);
        }
        if (!Arrays.equals(this.f, g.c)) {
            bVar.a(5, this.f);
        }
        a aVar = this.g;
        if (aVar != null) {
            bVar.a(6, (e) aVar);
        }
        super.a(bVar);
    }

    /* access modifiers changed from: protected */
    public final int c() {
        int c2 = super.c();
        int i = this.f6208b;
        if (i != 1) {
            c2 += b.e(1, i);
        }
        int d2 = c2 + b.d(2) + b.b(3, this.d);
        if (!Arrays.equals(this.e, g.c)) {
            d2 += b.b(4, this.e);
        }
        if (!Arrays.equals(this.f, g.c)) {
            d2 += b.b(5, this.f);
        }
        a aVar = this.g;
        return aVar != null ? d2 + b.b(6, (e) aVar) : d2;
    }

    /* renamed from: b */
    public final kd a(a aVar) throws IOException {
        while (true) {
            int a2 = aVar.a();
            if (a2 == 0) {
                return this;
            }
            if (a2 == 8) {
                this.f6208b = aVar.k();
            } else if (a2 == 17) {
                this.c = aVar.c();
            } else if (a2 == 26) {
                this.d = aVar.j();
            } else if (a2 == 34) {
                this.e = aVar.j();
            } else if (a2 == 42) {
                this.f = aVar.j();
            } else if (a2 == 50) {
                if (this.g == null) {
                    this.g = new a();
                }
                aVar.a((e) this.g);
            } else if (!g.a(aVar, a2)) {
                return this;
            }
        }
    }
}
