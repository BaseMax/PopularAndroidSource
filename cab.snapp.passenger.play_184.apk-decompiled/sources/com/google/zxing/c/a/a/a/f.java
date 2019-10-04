package com.google.zxing.c.a.a.a;

import com.google.zxing.common.a;
import com.google.zxing.h;

abstract class f extends i {
    f(a aVar) {
        super(aVar);
    }

    public String parseInformation() throws h {
        if (this.f4249a.getSize() == 60) {
            StringBuilder sb = new StringBuilder();
            b(sb, 5);
            b(sb, 45, 15);
            return sb.toString();
        }
        throw h.getNotFoundInstance();
    }
}
