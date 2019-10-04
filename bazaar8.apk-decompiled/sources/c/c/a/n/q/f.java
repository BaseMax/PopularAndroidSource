package c.c.a.n.q;

import android.content.Context;
import c.c.a.e.d.b.ba;
import c.c.a.n.c.c.u;
import d.b.c;
import g.a.a;

/* compiled from: MaliciousAppViewModel_Factory */
public final class f implements c<e> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f6770a;

    /* renamed from: b  reason: collision with root package name */
    public final a<u> f6771b;

    /* renamed from: c  reason: collision with root package name */
    public final a<ba> f6772c;

    public f(a<Context> aVar, a<u> aVar2, a<ba> aVar3) {
        this.f6770a = aVar;
        this.f6771b = aVar2;
        this.f6772c = aVar3;
    }

    public static f a(a<Context> aVar, a<u> aVar2, a<ba> aVar3) {
        return new f(aVar, aVar2, aVar3);
    }

    public static e b(a<Context> aVar, a<u> aVar2, a<ba> aVar3) {
        return new e(aVar.get(), aVar2.get(), aVar3.get());
    }

    public e get() {
        return b(this.f6770a, this.f6771b, this.f6772c);
    }
}
