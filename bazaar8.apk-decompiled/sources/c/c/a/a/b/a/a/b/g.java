package c.c.a.a.b.a.a.b;

import c.c.a.a.b.a.a.a.a;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ActionLogLocalDataSource.kt */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final a f4524a;

    public g(a aVar) {
        j.b(aVar, "dao");
        this.f4524a = aVar;
    }

    public final void a(a aVar) {
        j.b(aVar, "actionLog");
        this.f4524a.b(aVar.h());
    }

    public final void b(a aVar) {
        j.b(aVar, "actionLog");
        this.f4524a.a(aVar.h());
    }

    public final List<a> c() {
        List<i> b2 = this.f4524a.b();
        ArrayList arrayList = new ArrayList(m.a(b2, 10));
        for (i d2 : b2) {
            arrayList.add(d2.d());
        }
        return arrayList;
    }

    public final a d() {
        i a2 = this.f4524a.a();
        if (a2 != null) {
            return a2.d();
        }
        return null;
    }

    public final void a() {
        this.f4524a.c();
    }

    public final int b() {
        return this.f4524a.d();
    }
}
