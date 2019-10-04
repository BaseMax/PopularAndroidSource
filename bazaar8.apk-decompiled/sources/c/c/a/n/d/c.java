package c.c.a.n.d;

import android.content.Context;
import c.c.a.e.d.d.b;
import c.c.a.n.c.c.u;
import g.a.a;

/* compiled from: BookmarkViewModel_Factory */
public final class c implements d.b.c<b> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f6406a;

    /* renamed from: b  reason: collision with root package name */
    public final a<u> f6407b;

    /* renamed from: c  reason: collision with root package name */
    public final a<b> f6408c;

    public c(a<Context> aVar, a<u> aVar2, a<b> aVar3) {
        this.f6406a = aVar;
        this.f6407b = aVar2;
        this.f6408c = aVar3;
    }

    public static c a(a<Context> aVar, a<u> aVar2, a<b> aVar3) {
        return new c(aVar, aVar2, aVar3);
    }

    public static b b(a<Context> aVar, a<u> aVar2, a<b> aVar3) {
        return new b(aVar.get(), aVar2.get(), aVar3.get());
    }

    public b get() {
        return b(this.f6406a, this.f6407b, this.f6408c);
    }
}
