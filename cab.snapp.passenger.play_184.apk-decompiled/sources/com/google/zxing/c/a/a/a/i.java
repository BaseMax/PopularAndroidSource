package com.google.zxing.c.a.a.a;

import com.google.zxing.common.a;

abstract class i extends h {
    /* access modifiers changed from: protected */
    public abstract int a(int i);

    /* access modifiers changed from: protected */
    public abstract void a(StringBuilder sb, int i);

    i(a aVar) {
        super(aVar);
    }

    /* access modifiers changed from: package-private */
    public final void b(StringBuilder sb, int i, int i2) {
        int a2 = this.f4250b.a(i, i2);
        a(sb, a2);
        int a3 = a(a2);
        int i3 = 100000;
        for (int i4 = 0; i4 < 5; i4++) {
            if (a3 / i3 == 0) {
                sb.append('0');
            }
            i3 /= 10;
        }
        sb.append(a3);
    }
}
