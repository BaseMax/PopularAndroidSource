package com.yandex.metrica.impl.ob;

import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.bs;
import com.yandex.metrica.impl.i;

public class cg extends cb {

    /* renamed from: a  reason: collision with root package name */
    private final bs f5916a;

    /* renamed from: b  reason: collision with root package name */
    private final hw f5917b;

    public cg(x xVar, bs bsVar, hw hwVar) {
        super(xVar);
        this.f5916a = bsVar;
        this.f5917b = hwVar;
    }

    public boolean a(i iVar, bd bdVar) {
        CounterConfiguration b2 = bdVar.b().a().b();
        this.f5916a.a(b2.o());
        this.f5917b.a(nt.a(b2.g(), true));
        return false;
    }
}
