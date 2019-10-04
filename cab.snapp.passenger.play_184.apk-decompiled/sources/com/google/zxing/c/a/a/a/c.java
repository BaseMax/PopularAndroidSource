package com.google.zxing.c.a.a.a;

import com.google.zxing.common.a;
import com.google.zxing.d;
import com.google.zxing.h;

final class c extends h {
    c(a aVar) {
        super(aVar);
    }

    public final String parseInformation() throws h, d {
        if (this.f4249a.getSize() >= 48) {
            StringBuilder sb = new StringBuilder();
            b(sb, 8);
            int a2 = this.f4250b.a(48, 2);
            sb.append("(392");
            sb.append(a2);
            sb.append(')');
            sb.append(this.f4250b.a(50, (String) null).f4257a);
            return sb.toString();
        }
        throw h.getNotFoundInstance();
    }
}
