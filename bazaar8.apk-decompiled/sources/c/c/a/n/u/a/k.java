package c.c.a.n.u.a;

import android.content.Context;
import c.c.a.e.d.r.e;
import d.b.c;
import g.a.a;

/* compiled from: DeveloperReplyViewModel_Factory */
public final class k implements c<j> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f6983a;

    /* renamed from: b  reason: collision with root package name */
    public final a<e> f6984b;

    public k(a<Context> aVar, a<e> aVar2) {
        this.f6983a = aVar;
        this.f6984b = aVar2;
    }

    public static k a(a<Context> aVar, a<e> aVar2) {
        return new k(aVar, aVar2);
    }

    public static j b(a<Context> aVar, a<e> aVar2) {
        return new j(aVar.get(), aVar2.get());
    }

    public j get() {
        return b(this.f6983a, this.f6984b);
    }
}
