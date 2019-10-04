package com.yandex.metrica.impl;

import com.yandex.metrica.impl.ob.bm;
import com.yandex.metrica.impl.ob.bo;
import com.yandex.metrica.impl.ob.br;
import com.yandex.metrica.impl.ob.bs;
import com.yandex.metrica.impl.ob.mg;

public class q<C extends bm> extends bu<C> {
    private final bs d;
    private boolean e = false;

    public q(C c, mg mgVar, an anVar, bs bsVar) {
        super(c, mgVar, anVar);
        this.d = bsVar;
    }

    public void a(i iVar) {
        if (!this.e) {
            super.e();
            this.f5798b.a(new bo((br) f(), iVar, this.d));
        }
    }

    public void close() {
        this.e = true;
    }
}
