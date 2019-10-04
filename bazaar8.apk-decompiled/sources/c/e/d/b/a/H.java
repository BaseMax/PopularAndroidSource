package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.m;
import c.e.d.p;
import c.e.d.q;
import c.e.d.r;
import c.e.d.t;
import c.e.d.x;
import com.google.gson.internal.LazilyParsedNumber;
import java.util.Iterator;
import java.util.Map;

/* compiled from: TypeAdapters */
class H extends x<p> {
    public p a(b bVar) {
        switch (K.f11732a[bVar.K().ordinal()]) {
            case 1:
                return new t((Number) new LazilyParsedNumber(bVar.I()));
            case 2:
                return new t(Boolean.valueOf(bVar.C()));
            case 3:
                return new t(bVar.I());
            case 4:
                bVar.H();
                return q.f11872a;
            case 5:
                m mVar = new m();
                bVar.s();
                while (bVar.z()) {
                    mVar.a(a(bVar));
                }
                bVar.x();
                return mVar;
            case 6:
                r rVar = new r();
                bVar.t();
                while (bVar.z()) {
                    rVar.a(bVar.G(), a(bVar));
                }
                bVar.y();
                return rVar;
            default:
                throw new IllegalArgumentException();
        }
    }

    public void a(c cVar, p pVar) {
        if (pVar == null || pVar.g()) {
            cVar.C();
        } else if (pVar.i()) {
            t d2 = pVar.d();
            if (d2.p()) {
                cVar.a(d2.n());
            } else if (d2.o()) {
                cVar.d(d2.j());
            } else {
                cVar.h(d2.e());
            }
        } else if (pVar.f()) {
            cVar.u();
            Iterator<p> it = pVar.b().iterator();
            while (it.hasNext()) {
                a(cVar, it.next());
            }
            cVar.w();
        } else if (pVar.h()) {
            cVar.v();
            for (Map.Entry next : pVar.c().j()) {
                cVar.e((String) next.getKey());
                a(cVar, (p) next.getValue());
            }
            cVar.x();
        } else {
            throw new IllegalArgumentException("Couldn't write " + pVar.getClass());
        }
    }
}
