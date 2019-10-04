package c.c.a.b.f.a;

import android.content.Context;
import c.c.a.e.d.b.ba;
import d.b.c;
import g.a.a;

/* compiled from: UpgradableAppsNotification_Factory */
public final class e implements c<d> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f4661a;

    /* renamed from: b  reason: collision with root package name */
    public final a<ba> f4662b;

    /* renamed from: c  reason: collision with root package name */
    public final a<c.c.a.e.d.u.a> f4663c;

    /* renamed from: d  reason: collision with root package name */
    public final a<c.c.a.e.d.a.a> f4664d;

    public e(a<Context> aVar, a<ba> aVar2, a<c.c.a.e.d.u.a> aVar3, a<c.c.a.e.d.a.a> aVar4) {
        this.f4661a = aVar;
        this.f4662b = aVar2;
        this.f4663c = aVar3;
        this.f4664d = aVar4;
    }

    public static e a(a<Context> aVar, a<ba> aVar2, a<c.c.a.e.d.u.a> aVar3, a<c.c.a.e.d.a.a> aVar4) {
        return new e(aVar, aVar2, aVar3, aVar4);
    }

    public static d b(a<Context> aVar, a<ba> aVar2, a<c.c.a.e.d.u.a> aVar3, a<c.c.a.e.d.a.a> aVar4) {
        return new d(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get());
    }

    public d get() {
        return b(this.f4661a, this.f4662b, this.f4663c, this.f4664d);
    }
}
