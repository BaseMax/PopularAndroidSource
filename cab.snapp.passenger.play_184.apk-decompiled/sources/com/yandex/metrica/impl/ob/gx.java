package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.bq;
import com.yandex.metrica.impl.ob.kh;
import com.yandex.metrica.impl.ob.ma;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class gx implements gr<ma, kh.a> {

    /* renamed from: a  reason: collision with root package name */
    private gt f6072a = new gt();

    /* renamed from: b  reason: collision with root package name */
    private gq f6073b = new gq();
    private gw c = new gw();
    private gv d = new gv();
    private gs e = new gs();
    private gy f = new gy();

    public kh.a a(ma maVar) {
        kh.a aVar = new kh.a();
        if (maVar.f6416a != null) {
            aVar.f6218b = maVar.f6416a;
        }
        if (maVar.h != null) {
            aVar.h = (String[]) maVar.h.toArray(new String[maVar.h.size()]);
        }
        if (maVar.i != null) {
            aVar.i = (String[]) maVar.i.toArray(new String[maVar.i.size()]);
        }
        if (maVar.d != null) {
            aVar.d = (String[]) maVar.d.toArray(new String[maVar.d.size()]);
        }
        if (maVar.g != null) {
            aVar.g = (String[]) maVar.g.toArray(new String[maVar.g.size()]);
        }
        if (maVar.j != null) {
            aVar.t = (String[]) maVar.j.toArray(new String[maVar.j.size()]);
        }
        if (maVar.n != null) {
            aVar.k = this.f6072a.a(maVar.n);
        }
        if (maVar.o != null) {
            aVar.l = this.f6073b.a(maVar.o);
        }
        if (maVar.p != null) {
            aVar.m = this.c.a(maVar.p);
        }
        if (maVar.k != null) {
            aVar.o = maVar.k;
        }
        if (maVar.e != null) {
            aVar.e = maVar.e;
        }
        if (maVar.f != null) {
            aVar.f = maVar.f;
        }
        if (maVar.q != null) {
            aVar.r = maVar.q;
        }
        aVar.j = this.e.a(maVar.m);
        if (maVar.l != null) {
            aVar.p = maVar.l;
        }
        aVar.q = maVar.t;
        aVar.c = maVar.r;
        aVar.v = maVar.s;
        if (maVar.u != null) {
            List<bq.a> list = maVar.u;
            kh.a.d[] dVarArr = new kh.a.d[list.size()];
            int i = 0;
            for (bq.a a2 : list) {
                dVarArr[i] = this.d.a(a2);
                i++;
            }
            aVar.n = dVarArr;
        }
        if (maVar.v != null) {
            aVar.s = maVar.v;
        }
        if (maVar.w != null) {
            aVar.u = this.f.a(maVar.w);
        }
        return aVar;
    }

    public ma a(kh.a aVar) {
        ma.a a2 = new ma.a(this.e.a(aVar.j)).a(aVar.f6218b).a(hg.a().d()).d(aVar.o).b(aVar.e).a((List<String>) Arrays.asList(aVar.d)).b((List<String>) Arrays.asList(aVar.g)).d((List<String>) Arrays.asList(aVar.i)).c((List<String>) Arrays.asList(aVar.h)).c(aVar.f).e((List<String>) Arrays.asList(aVar.t)).f(aVar.r).e(aVar.p).b(aVar.q).a(aVar.c).a(aVar.v);
        kh.a.d[] dVarArr = aVar.n;
        ArrayList arrayList = new ArrayList(dVarArr.length);
        for (kh.a.d a3 : dVarArr) {
            arrayList.add(this.d.a(a3));
        }
        ma.a g = a2.f((List<bq.a>) arrayList).g(aVar.s);
        if (aVar.k != null) {
            g.a(this.f6072a.a(aVar.k));
        }
        if (aVar.l != null) {
            g.a(this.f6073b.a(aVar.l));
        }
        if (aVar.m != null) {
            g.a(this.c.a(aVar.m));
        }
        if (aVar.u != null) {
            g.a(this.f.a(aVar.u));
        }
        return g.a();
    }
}
