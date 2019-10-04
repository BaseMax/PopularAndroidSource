package c.c.a.e.d.b;

import d.b.c;
import g.a.a;

/* compiled from: UpgradableAppLocalDataSource_Factory */
public final class Y implements c<W> {

    /* renamed from: a  reason: collision with root package name */
    public final a<L> f4969a;

    /* renamed from: b  reason: collision with root package name */
    public final a<I> f4970b;

    public Y(a<L> aVar, a<I> aVar2) {
        this.f4969a = aVar;
        this.f4970b = aVar2;
    }

    public static Y a(a<L> aVar, a<I> aVar2) {
        return new Y(aVar, aVar2);
    }

    public static W b(a<L> aVar, a<I> aVar2) {
        return new W(aVar.get(), aVar2.get());
    }

    public W get() {
        return b(this.f4969a, this.f4970b);
    }
}
