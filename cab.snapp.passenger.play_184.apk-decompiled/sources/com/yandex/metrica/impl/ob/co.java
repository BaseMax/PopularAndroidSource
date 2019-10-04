package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.s;

public class co extends cm {

    /* renamed from: a  reason: collision with root package name */
    private gb f5919a;

    /* renamed from: b  reason: collision with root package name */
    private nn f5920b;

    public co(ac acVar) {
        this(acVar, acVar.A(), nn.a());
    }

    co(ac acVar, gb gbVar, nn nnVar) {
        super(acVar);
        this.f5919a = gbVar;
        this.f5920b = nnVar;
    }

    public boolean a(i iVar) {
        ac a2 = a();
        le k = a2.k();
        if (!this.f5919a.d()) {
            if (!this.f5919a.c()) {
                if (k.L()) {
                    this.f5920b.c();
                }
                String c = iVar.c();
                this.f5919a.c(c);
                a2.c(i.a(iVar, s.a.EVENT_TYPE_FIRST_ACTIVATION).c(c));
                a2.a(true);
                this.f5919a.a(k.M());
                a().H().a();
            }
            this.f5919a.b();
        }
        return false;
    }
}
