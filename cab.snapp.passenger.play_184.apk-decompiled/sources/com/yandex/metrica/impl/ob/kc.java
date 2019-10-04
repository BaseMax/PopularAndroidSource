package com.yandex.metrica.impl.ob;

import java.io.IOException;

public final class kc extends e {

    /* renamed from: b  reason: collision with root package name */
    public String f6207b;
    public long c;
    public long d;

    public kc() {
        d();
    }

    public final kc d() {
        this.f6207b = "";
        this.c = 0;
        this.d = 0;
        this.f5940a = -1;
        return this;
    }

    public final void a(b bVar) throws IOException {
        if (!this.f6207b.equals("")) {
            bVar.a(1, this.f6207b);
        }
        long j = this.c;
        if (j != 0) {
            bVar.a(2, j);
        }
        long j2 = this.d;
        if (j2 != 0) {
            bVar.a(3, j2);
        }
        super.a(bVar);
    }

    /* access modifiers changed from: protected */
    public final int c() {
        int c2 = super.c();
        if (!this.f6207b.equals("")) {
            c2 += b.b(1, this.f6207b);
        }
        long j = this.c;
        if (j != 0) {
            c2 += b.c(2, j);
        }
        long j2 = this.d;
        return j2 != 0 ? c2 + b.c(3, j2) : c2;
    }

    /* renamed from: b */
    public final kc a(a aVar) throws IOException {
        while (true) {
            int a2 = aVar.a();
            if (a2 == 0) {
                return this;
            }
            if (a2 == 10) {
                this.f6207b = aVar.i();
            } else if (a2 == 16) {
                this.c = aVar.e();
            } else if (a2 == 24) {
                this.d = aVar.e();
            } else if (!g.a(aVar, a2)) {
                return this;
            }
        }
    }
}
