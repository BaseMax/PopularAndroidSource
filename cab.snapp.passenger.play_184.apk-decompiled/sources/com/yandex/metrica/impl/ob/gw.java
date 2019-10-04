package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.kh;
import java.util.List;

public class gw implements gr<lr, kh.a.e> {
    public kh.a.e a(lr lrVar) {
        kh.a.e eVar = new kh.a.e();
        eVar.f6224b = lrVar.f6401a;
        eVar.c = lrVar.f6402b;
        List<Integer> list = lrVar.c;
        int[] iArr = new int[list.size()];
        int i = 0;
        for (Integer intValue : list) {
            iArr[i] = intValue.intValue();
            i++;
        }
        eVar.d = iArr;
        return eVar;
    }

    public lr a(kh.a.e eVar) {
        return new lr(eVar.f6224b, eVar.c, nb.a(eVar.d));
    }
}
