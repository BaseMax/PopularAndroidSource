package c.c.a.n.j.c;

import android.content.Context;
import c.c.a.e.d.h.e.a.a.n;
import d.b.c;
import g.a.a;

/* compiled from: VideoDownloadViewModel_Factory */
public final class o implements c<n> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.h.e.a.a> f6514a;

    /* renamed from: b  reason: collision with root package name */
    public final a<Context> f6515b;

    /* renamed from: c  reason: collision with root package name */
    public final a<n> f6516c;

    /* renamed from: d  reason: collision with root package name */
    public final a<c.c.a.b.d.o> f6517d;

    public o(a<c.c.a.e.d.h.e.a.a> aVar, a<Context> aVar2, a<n> aVar3, a<c.c.a.b.d.o> aVar4) {
        this.f6514a = aVar;
        this.f6515b = aVar2;
        this.f6516c = aVar3;
        this.f6517d = aVar4;
    }

    public static o a(a<c.c.a.e.d.h.e.a.a> aVar, a<Context> aVar2, a<n> aVar3, a<c.c.a.b.d.o> aVar4) {
        return new o(aVar, aVar2, aVar3, aVar4);
    }

    public static n b(a<c.c.a.e.d.h.e.a.a> aVar, a<Context> aVar2, a<n> aVar3, a<c.c.a.b.d.o> aVar4) {
        return new n(aVar.get(), aVar2.get(), aVar3.get(), aVar4.get());
    }

    public n get() {
        return b(this.f6514a, this.f6515b, this.f6516c, this.f6517d);
    }
}
