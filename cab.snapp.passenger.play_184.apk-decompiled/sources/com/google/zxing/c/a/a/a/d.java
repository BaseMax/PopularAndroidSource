package com.google.zxing.c.a.a.a;

import com.google.zxing.common.a;
import com.google.zxing.h;

final class d extends h {
    d(a aVar) {
        super(aVar);
    }

    public final String parseInformation() throws h, com.google.zxing.d {
        if (this.f4249a.getSize() >= 48) {
            StringBuilder sb = new StringBuilder();
            b(sb, 8);
            int a2 = this.f4250b.a(48, 2);
            sb.append("(393");
            sb.append(a2);
            sb.append(')');
            int a3 = this.f4250b.a(50, 10);
            if (a3 / 100 == 0) {
                sb.append('0');
            }
            if (a3 / 10 == 0) {
                sb.append('0');
            }
            sb.append(a3);
            sb.append(this.f4250b.a(60, (String) null).f4257a);
            return sb.toString();
        }
        throw h.getNotFoundInstance();
    }
}
