package c.c.a.n.f;

import android.content.Context;
import c.c.a.n.c.c.u;
import d.b.c;
import g.a.a;

/* compiled from: BoughtVideosViewModel_Factory */
public final class b implements c<a> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f6413a;

    /* renamed from: b  reason: collision with root package name */
    public final a<u> f6414b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.e.d.f.a> f6415c;

    public b(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.f.a> aVar3) {
        this.f6413a = aVar;
        this.f6414b = aVar2;
        this.f6415c = aVar3;
    }

    public static b a(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.f.a> aVar3) {
        return new b(aVar, aVar2, aVar3);
    }

    public static a b(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.f.a> aVar3) {
        return new a(aVar.get(), aVar2.get(), aVar3.get());
    }

    public a get() {
        return b(this.f6413a, this.f6414b, this.f6415c);
    }
}
