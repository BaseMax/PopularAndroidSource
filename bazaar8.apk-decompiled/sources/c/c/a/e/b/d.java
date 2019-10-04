package c.c.a.e.b;

import android.content.Context;
import d.b.c;
import g.a.a;

/* compiled from: DeviceInfoDataSource_Factory */
public final class d implements c<c> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f4889a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.u.a> f4890b;

    public d(a<Context> aVar, a<c.c.a.e.d.u.a> aVar2) {
        this.f4889a = aVar;
        this.f4890b = aVar2;
    }

    public static d a(a<Context> aVar, a<c.c.a.e.d.u.a> aVar2) {
        return new d(aVar, aVar2);
    }

    public static c b(a<Context> aVar, a<c.c.a.e.d.u.a> aVar2) {
        return new c(aVar.get(), aVar2.get());
    }

    public c get() {
        return b(this.f4889a, this.f4890b);
    }
}
