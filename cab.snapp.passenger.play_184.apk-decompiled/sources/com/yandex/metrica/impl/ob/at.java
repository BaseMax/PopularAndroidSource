package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.bs;
import com.yandex.metrica.impl.ob.kz;
import com.yandex.metrica.impl.ob.lb;
import com.yandex.metrica.impl.ob.le;

public class at extends la<le, le.a, le.b> {

    public static abstract class a implements lb.a<le.a> {

        /* renamed from: a  reason: collision with root package name */
        private final bs f5870a;

        public a(bs bsVar) {
            this.f5870a = bsVar;
        }

        public le.a a(le.a aVar, t tVar) {
            le.a aVar2 = aVar;
            CounterConfiguration b2 = tVar.b();
            boolean a2 = a(this.f5870a, tVar.b());
            if (aVar2 == null) {
                le.a aVar3 = new le.a(b2.e(), b2.h(), b2.i(), b2.f(), b2.g(), b2.l(), b2.n(), b2.m(), b2.j(), b2.d(), b2.c(), b2.b(), b2.k(), Boolean.valueOf(a2));
                return aVar3;
            }
            String e = b2.e();
            String str = aVar2.f6349b;
            if (e == null) {
                e = str;
            }
            String str2 = e;
            String h = b2.h();
            String str3 = aVar2.c;
            if (h == null) {
                h = str3;
            }
            String str4 = h;
            String i = b2.i();
            String str5 = aVar2.d;
            if (i == null) {
                i = str5;
            }
            String str6 = i;
            String f = b2.f();
            String str7 = aVar2.f6367a;
            if (f == null) {
                f = str7;
            }
            String str8 = f;
            Boolean g = b2.g();
            Boolean bool = aVar2.e;
            if (g == null) {
                g = bool;
            }
            Boolean bool2 = g;
            Location l = b2.l();
            Location location = aVar2.f;
            if (l == null) {
                l = location;
            }
            Location location2 = l;
            Boolean n = b2.n();
            Boolean bool3 = aVar2.g;
            if (n == null) {
                n = bool3;
            }
            Boolean bool4 = n;
            Boolean m = b2.m();
            Boolean bool5 = aVar2.h;
            if (m == null) {
                m = bool5;
            }
            Boolean bool6 = m;
            CounterConfiguration.a j = b2.j();
            Integer d = b2.d();
            Integer num = aVar2.i;
            if (d == null) {
                d = num;
            }
            Integer num2 = d;
            Integer c = b2.c();
            Integer num3 = aVar2.j;
            if (c == null) {
                c = num3;
            }
            Integer num4 = c;
            Integer b3 = b2.b();
            Integer num5 = aVar2.k;
            if (b3 == null) {
                b3 = num5;
            }
            Integer num6 = b3;
            Boolean k = b2.k();
            Boolean bool7 = aVar2.l;
            if (k != null) {
                bool7 = k;
            }
            le.a aVar4 = new le.a(str2, str4, str6, str8, bool2, location2, bool4, bool6, j, num2, num4, num6, bool7, Boolean.valueOf(a2));
            return aVar4;
        }

        /* access modifiers changed from: protected */
        public boolean a(bs bsVar, CounterConfiguration counterConfiguration) {
            return nt.a(counterConfiguration.o(), true);
        }
    }

    at(le.b bVar, a aVar, ma maVar, t tVar) {
        super(bVar, aVar, maVar, tVar);
    }

    public synchronized void a(t tVar) {
        super.a(tVar);
        le.a aVar = (le.a) b(tVar);
        if (!aVar.equals(d())) {
            a(new kz.c(c(), aVar));
            b();
        }
    }
}
