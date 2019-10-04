package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.an;
import com.yandex.metrica.impl.br;
import com.yandex.metrica.impl.ob.ai;

public class mf<C extends ai> implements mg {

    /* renamed from: a  reason: collision with root package name */
    private final ls f6423a;

    /* renamed from: b  reason: collision with root package name */
    private final C f6424b;

    public mf(C c, ls lsVar) {
        this.f6424b = c;
        this.f6423a = lsVar;
    }

    public void a(an anVar) {
        ls lsVar = this.f6423a;
        C c = this.f6424b;
        br a2 = lsVar.a(c, c.a());
        if (a2 != null) {
            anVar.a(a2);
        }
    }
}
