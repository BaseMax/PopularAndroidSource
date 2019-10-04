package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.bo;
import com.yandex.metrica.impl.ob.hc;

public class he extends hc {
    public /* bridge */ /* synthetic */ hb a() {
        return super.a();
    }

    public /* bridge */ /* synthetic */ hf b() {
        return super.b();
    }

    public /* bridge */ /* synthetic */ bo.a c() {
        return super.c();
    }

    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    he(bo.a aVar, hf hfVar, hf hfVar2) {
        super(aVar, hfVar == null ? hfVar2 : hfVar);
    }

    public hc.a a(hh hhVar) {
        hf b2 = b();
        if (hhVar.equals(b2.d())) {
            return hc.a.THIS;
        }
        if (b2.d() != null) {
            return hc.a.OTHER;
        }
        if (b2.b()) {
            return hc.a.OTHER;
        }
        return hc.a.UNKNOWN;
    }
}
