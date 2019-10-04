package com.yandex.metrica.impl.ob;

import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.bq;
import com.yandex.metrica.impl.ob.kz;
import com.yandex.metrica.impl.ob.lb;

public class bn extends lb<bq, bq.a, bq.b> {

    /* renamed from: a  reason: collision with root package name */
    private t f5892a;

    public bn(bq.b bVar, ma maVar, t tVar) {
        super(bVar, new lb.a<bq.a>() {
            public bq.a a(bq.a aVar, t tVar) {
                CounterConfiguration b2 = tVar.b();
                if (aVar == null) {
                    return new bq.a(b2.e(), b2.h(), b2.i(), b2.f());
                }
                String e = b2.e();
                String str = aVar.f6349b;
                if (e == null) {
                    e = str;
                }
                String str2 = e;
                String h = b2.h();
                String str3 = aVar.c;
                if (h == null) {
                    h = str3;
                }
                String str4 = h;
                String i = b2.i();
                String str5 = aVar.d;
                if (i == null) {
                    i = str5;
                }
                String str6 = i;
                String f = b2.f();
                String str7 = aVar.f5899a;
                if (f != null) {
                    str7 = f;
                }
                return new bq.a(str2, str4, str6, str7);
            }
        }, maVar, tVar);
        this.f5892a = tVar;
    }

    public synchronized void a(t tVar) {
        a(new kz.c(c(), b(tVar)));
        b();
        this.f5892a = tVar;
    }

    public t a() {
        return this.f5892a;
    }
}
