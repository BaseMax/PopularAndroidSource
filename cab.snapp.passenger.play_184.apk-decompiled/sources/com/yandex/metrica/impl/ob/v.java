package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.b;
import java.util.HashMap;

public class v {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, b> f6506a = new HashMap<>();

    public synchronized b a(ac acVar, gd gdVar) {
        b bVar;
        bVar = this.f6506a.get(acVar.b().toString());
        if (bVar == null) {
            b.a a2 = gdVar.a();
            bVar = new b(a2.f5735a, a2.f5736b);
            this.f6506a.put(acVar.b().toString(), bVar);
        }
        return bVar;
    }

    public boolean a(b.a aVar, gd gdVar) {
        if (aVar.f5736b <= gdVar.a().f5736b) {
            return false;
        }
        gdVar.a(aVar).i();
        return true;
    }

    public synchronized void b(b.a aVar, gd gdVar) {
        gdVar.a(aVar).i();
    }
}
