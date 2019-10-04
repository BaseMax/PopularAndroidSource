package c.c.a.e.d.l;

import d.b.c;
import g.a.a;

/* compiled from: InstalledAppRepository_Factory */
public final class e implements c<d> {

    /* renamed from: a  reason: collision with root package name */
    public final a<b> f5230a;

    public e(a<b> aVar) {
        this.f5230a = aVar;
    }

    public static e a(a<b> aVar) {
        return new e(aVar);
    }

    public static d b(a<b> aVar) {
        return new d(aVar.get());
    }

    public d get() {
        return b(this.f5230a);
    }
}
