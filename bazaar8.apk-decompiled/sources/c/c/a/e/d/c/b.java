package c.c.a.e.d.c;

import android.content.Context;
import c.c.a.e.d.r.b.a.j;
import d.b.c;
import g.a.a;

/* compiled from: AppDetailRepository_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f5030a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c.c.a.e.d.c.a.a> f5031b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.e.d.r.c> f5032c;

    /* renamed from: d  reason: collision with root package name */
    public final a<j> f5033d;

    public b(a<Context> aVar, a<c.c.a.e.d.c.a.a> aVar2, a<c.c.a.e.d.r.c> aVar3, a<j> aVar4) {
        this.f5030a = aVar;
        this.f5031b = aVar2;
        this.f5032c = aVar3;
        this.f5033d = aVar4;
    }

    public static b a(a<Context> aVar, a<c.c.a.e.d.c.a.a> aVar2, a<c.c.a.e.d.r.c> aVar3, a<j> aVar4) {
        return new b(aVar, aVar2, aVar3, aVar4);
    }

    public static a b(a<Context> aVar, a<c.c.a.e.d.c.a.a> aVar2, a<c.c.a.e.d.r.c> aVar3, a<j> aVar4) {
        return new a(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get());
    }

    public a get() {
        return b(this.f5030a, this.f5031b, this.f5032c, this.f5033d);
    }
}
