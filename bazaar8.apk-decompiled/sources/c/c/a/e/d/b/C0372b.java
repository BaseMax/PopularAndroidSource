package c.c.a.e.d.b;

import android.content.Context;
import d.b.c;
import g.a.a;

/* renamed from: c.c.a.e.d.b.b  reason: case insensitive filesystem */
/* compiled from: AccountSharedDataSource_Factory */
public final class C0372b implements c<C0371a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f4974a;

    public C0372b(a<Context> aVar) {
        this.f4974a = aVar;
    }

    public static C0372b a(a<Context> aVar) {
        return new C0372b(aVar);
    }

    public static C0371a b(a<Context> aVar) {
        return new C0371a(aVar.get());
    }

    public C0371a get() {
        return b(this.f4974a);
    }
}
