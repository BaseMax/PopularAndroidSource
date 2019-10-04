package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.ke;

public class jp implements jh {

    /* renamed from: a  reason: collision with root package name */
    private final ok f6180a;

    public jp(ok okVar) {
        this.f6180a = okVar;
    }

    public ke.a.C0115a a(jy jyVar, ke.a.C0115a aVar) {
        if (jyVar.a() == this.f6180a.a()) {
            if (jyVar.a(aVar.c, new String(aVar.f6211b)) != null) {
                jyVar.a(aVar);
            }
        } else if (jyVar.a() < this.f6180a.a()) {
            jyVar.a(aVar);
            jyVar.b();
        }
        return aVar;
    }
}
