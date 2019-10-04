package c.c.a.e.e;

import android.content.Context;
import d.b.c;
import g.a.a;

/* compiled from: LocationManager_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f5432a;

    public b(a<Context> aVar) {
        this.f5432a = aVar;
    }

    public static b a(a<Context> aVar) {
        return new b(aVar);
    }

    public static a b(a<Context> aVar) {
        return new a(aVar.get());
    }

    public a get() {
        return b(this.f5432a);
    }
}
