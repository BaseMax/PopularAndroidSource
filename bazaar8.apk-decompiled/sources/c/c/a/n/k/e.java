package c.c.a.n.k;

import android.content.Context;
import c.c.a.n.c.c.u;
import d.b.c;
import g.a.a;

/* compiled from: EditorChoiceViewModel_Factory */
public final class e implements c<d> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f6656a;

    /* renamed from: b  reason: collision with root package name */
    public final a<u> f6657b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.e.d.j.c> f6658c;

    /* renamed from: d  reason: collision with root package name */
    public final a<c.c.a.e.d.a.a> f6659d;

    public e(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.j.c> aVar3, a<c.c.a.e.d.a.a> aVar4) {
        this.f6656a = aVar;
        this.f6657b = aVar2;
        this.f6658c = aVar3;
        this.f6659d = aVar4;
    }

    public static e a(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.j.c> aVar3, a<c.c.a.e.d.a.a> aVar4) {
        return new e(aVar, aVar2, aVar3, aVar4);
    }

    public static d b(a<Context> aVar, a<u> aVar2, a<c.c.a.e.d.j.c> aVar3, a<c.c.a.e.d.a.a> aVar4) {
        return new d(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get());
    }

    public d get() {
        return b(this.f6656a, this.f6657b, this.f6658c, this.f6659d);
    }
}
