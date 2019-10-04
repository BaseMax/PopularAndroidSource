package com.google.zxing.c.a.a.a;

import com.google.zxing.common.a;
import com.google.zxing.d;
import com.google.zxing.h;

final class g extends h {
    g(a aVar) {
        super(aVar);
    }

    public final String parseInformation() throws h, d {
        StringBuilder sb = new StringBuilder();
        sb.append("(01)");
        int length = sb.length();
        sb.append(this.f4250b.a(4, 4));
        a(sb, 8, length);
        return this.f4250b.a(sb, 48);
    }
}
