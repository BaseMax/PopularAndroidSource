package c.c.a.e.d.b;

import android.content.Context;
import d.b.c;
import g.a.a;

/* compiled from: PlaceSharedDataSource_Factory */
public final class D implements c<C> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f4936a;

    public D(a<Context> aVar) {
        this.f4936a = aVar;
    }

    public static D a(a<Context> aVar) {
        return new D(aVar);
    }

    public static C b(a<Context> aVar) {
        return new C(aVar.get());
    }

    public C get() {
        return b(this.f4936a);
    }
}
