package c.c.a.n.i.a;

import android.content.Context;
import d.b.c;
import g.a.a;

/* compiled from: ReleaseNoteDialogViewModel_Factory */
public final class d implements c<c> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.o.c> f6428a;

    /* renamed from: b  reason: collision with root package name */
    public final a<Context> f6429b;

    public d(a<c.c.a.e.d.o.c> aVar, a<Context> aVar2) {
        this.f6428a = aVar;
        this.f6429b = aVar2;
    }

    public static d a(a<c.c.a.e.d.o.c> aVar, a<Context> aVar2) {
        return new d(aVar, aVar2);
    }

    public static c b(a<c.c.a.e.d.o.c> aVar, a<Context> aVar2) {
        return new c(aVar.get(), aVar2.get());
    }

    public c get() {
        return b(this.f6428a, this.f6429b);
    }
}
