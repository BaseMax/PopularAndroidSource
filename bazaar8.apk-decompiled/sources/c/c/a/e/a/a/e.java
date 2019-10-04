package c.c.a.e.a.a;

import android.content.Context;
import d.b.c;
import g.a.a;

/* compiled from: LegacyLocalDataSource_Factory */
public final class e implements c<d> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f4871a;

    /* renamed from: b  reason: collision with root package name */
    public final a<c> f4872b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.e.d.h.e.a.a.a> f4873c;

    public e(a<Context> aVar, a<c> aVar2, a<c.c.a.e.d.h.e.a.a.a> aVar3) {
        this.f4871a = aVar;
        this.f4872b = aVar2;
        this.f4873c = aVar3;
    }

    public static e a(a<Context> aVar, a<c> aVar2, a<c.c.a.e.d.h.e.a.a.a> aVar3) {
        return new e(aVar, aVar2, aVar3);
    }

    public static d b(a<Context> aVar, a<c> aVar2, a<c.c.a.e.d.h.e.a.a.a> aVar3) {
        return new d(aVar.get(), aVar2.get(), aVar3.get());
    }

    public d get() {
        return b(this.f4871a, this.f4872b, this.f4873c);
    }
}
