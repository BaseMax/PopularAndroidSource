package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.s;

public class cv extends cm {

    /* renamed from: a  reason: collision with root package name */
    private gb f5925a;

    public cv(ac acVar) {
        this(acVar, acVar.A());
    }

    cv(ac acVar, gb gbVar) {
        super(acVar);
        this.f5925a = gbVar;
    }

    public boolean a(i iVar) {
        i iVar2;
        ac a2 = a();
        if (!this.f5925a.c()) {
            if (a2.k().L()) {
                iVar2 = i.a(iVar, s.a.EVENT_TYPE_APP_UPDATE);
            } else {
                iVar2 = i.a(iVar, s.a.EVENT_TYPE_INIT);
            }
            a2.d(iVar2.c(this.f5925a.d("")));
            a2.a(true);
            this.f5925a.a();
            this.f5925a.e();
        }
        return false;
    }
}
