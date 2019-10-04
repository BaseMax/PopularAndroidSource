package c.c.a.n.y;

import android.content.Context;
import c.c.a.e.d.i.j;
import d.b.c;
import g.a.a;

/* compiled from: BazaarForceUpdateViewModel_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f7090a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.a.a> f7091b;

    /* renamed from: c  reason: collision with root package name */
    public final a<j> f7092c;

    /* renamed from: d  reason: collision with root package name */
    public final a<c.c.a.b.d.b> f7093d;

    public b(a<Context> aVar, a<c.c.a.e.d.a.a> aVar2, a<j> aVar3, a<c.c.a.b.d.b> aVar4) {
        this.f7090a = aVar;
        this.f7091b = aVar2;
        this.f7092c = aVar3;
        this.f7093d = aVar4;
    }

    public static b a(a<Context> aVar, a<c.c.a.e.d.a.a> aVar2, a<j> aVar3, a<c.c.a.b.d.b> aVar4) {
        return new b(aVar, aVar2, aVar3, aVar4);
    }

    public static a b(a<Context> aVar, a<c.c.a.e.d.a.a> aVar2, a<j> aVar3, a<c.c.a.b.d.b> aVar4) {
        return new a(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get());
    }

    public a get() {
        return b(this.f7090a, this.f7091b, this.f7092c, this.f7093d);
    }
}
