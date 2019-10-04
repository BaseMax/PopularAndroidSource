package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.kz;
import com.yandex.metrica.impl.ob.lb;
import com.yandex.metrica.impl.ob.lf;
import java.util.Map;

public class lt extends lb<lf, lf.a, lf.b> {
    lt(lf.b bVar, ma maVar, t tVar) {
        super(bVar, new lb.a<lf.a>() {
            public lf.a a(lf.a aVar, t tVar) {
                lf.a aVar2 = aVar;
                if (aVar2 == null) {
                    lf.a aVar3 = new lf.a(tVar.b().e(), tVar.b().h(), tVar.b().i(), tVar.a().d(), tVar.a().c(), tVar.a().a(), tVar.a().b());
                    return aVar3;
                }
                String e = tVar.b().e();
                String str = aVar2.f6349b;
                if (e == null) {
                    e = str;
                }
                String str2 = e;
                String h = tVar.b().h();
                String str3 = aVar2.c;
                if (h == null) {
                    h = str3;
                }
                String str4 = h;
                String i = tVar.b().i();
                String str5 = aVar2.d;
                if (i == null) {
                    i = str5;
                }
                String str6 = i;
                String d = tVar.a().d();
                String str7 = aVar2.f6370a;
                if (d == null) {
                    d = str7;
                }
                String str8 = d;
                Map<String, String> c = tVar.a().c();
                Map<String, String> map = aVar2.e;
                if (c == null) {
                    c = map;
                }
                lf.a aVar4 = new lf.a(str2, str4, str6, str8, c, tVar.a().a() ? tVar.a().a() : aVar2.f, tVar.a().a() ? tVar.a().b() : aVar2.g);
                return aVar4;
            }
        }, maVar, tVar);
    }

    public synchronized void a(t tVar) {
        a(new kz.c(c(), b(tVar)));
        b();
    }
}
