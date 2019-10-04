package com.google.zxing.c.a.a.a;

import com.google.zxing.common.a;
import com.google.zxing.h;

final class e extends i {
    private final String c;
    private final String d;

    e(a aVar, String str, String str2) {
        super(aVar);
        this.c = str2;
        this.d = str;
    }

    /* access modifiers changed from: protected */
    public final void a(StringBuilder sb, int i) {
        sb.append('(');
        sb.append(this.d);
        sb.append(i / 100000);
        sb.append(')');
    }

    /* access modifiers changed from: protected */
    public final int a(int i) {
        return i % 100000;
    }

    public final String parseInformation() throws h {
        if (this.f4249a.getSize() == 84) {
            StringBuilder sb = new StringBuilder();
            b(sb, 8);
            b(sb, 48, 20);
            int a2 = this.f4250b.a(68, 16);
            if (a2 != 38400) {
                sb.append('(');
                sb.append(this.c);
                sb.append(')');
                int i = a2 % 32;
                int i2 = a2 / 32;
                int i3 = (i2 % 12) + 1;
                int i4 = i2 / 12;
                if (i4 / 10 == 0) {
                    sb.append('0');
                }
                sb.append(i4);
                if (i3 / 10 == 0) {
                    sb.append('0');
                }
                sb.append(i3);
                if (i / 10 == 0) {
                    sb.append('0');
                }
                sb.append(i);
            }
            return sb.toString();
        }
        throw h.getNotFoundInstance();
    }
}
