package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.i;
import java.util.List;

public class ct extends cm {

    /* renamed from: a  reason: collision with root package name */
    private final fq f5923a;

    /* renamed from: b  reason: collision with root package name */
    private final ir f5924b;

    public ct(ac acVar, fq fqVar, ir irVar) {
        super(acVar);
        this.f5923a = fqVar;
        this.f5924b = irVar;
    }

    public boolean a(i iVar) {
        ac a2 = a();
        if (a2.A().d() && a2.y()) {
            fu d = this.f5923a.d();
            List<iq> a3 = this.f5924b.a(a().c(), d.a());
            if (a3 == null) {
                a2.o();
            } else {
                a2.f(i.a(iVar, a3));
                d.a(a3);
            }
        }
        return false;
    }
}
