package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.i;

public class cq extends cm {

    /* renamed from: a  reason: collision with root package name */
    private gb f5922a;

    public cq(ac acVar) {
        super(acVar);
        this.f5922a = acVar.A();
    }

    public boolean a(i iVar) {
        ac a2 = a();
        if (this.f5922a.d() && a2.x()) {
            a2.e(i.a(a2, iVar));
        }
        return false;
    }
}
