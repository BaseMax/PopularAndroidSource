package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.kf;

public class dy {
    public byte[] a(dx dxVar) {
        kf.a aVar = new kf.a();
        aVar.f6214b = dxVar.b();
        aVar.d = dxVar.d();
        aVar.c = dxVar.e();
        aVar.e = new int[dxVar.c().size()];
        int i = -1;
        for (Integer intValue : dxVar.c()) {
            i++;
            aVar.e[i] = intValue.intValue();
        }
        return e.a((e) aVar);
    }

    /* access modifiers changed from: package-private */
    public dx a(byte[] bArr) {
        kf.a aVar;
        try {
            aVar = (kf.a) e.a(new kf.a(), bArr);
        } catch (d unused) {
            aVar = new kf.a();
        }
        return new dx(aVar.f6214b, aVar.c, aVar.d, aVar.e);
    }
}
