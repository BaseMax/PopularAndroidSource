package c.c.a.n.i;

import android.content.Context;
import d.b.c;
import g.a.a;

/* compiled from: ReleaseNoteViewModel_Factory */
public final class i implements c<h> {

    /* renamed from: a  reason: collision with root package name */
    public final a<c.c.a.e.d.o.c> f6436a;

    /* renamed from: b  reason: collision with root package name */
    public final a<Context> f6437b;

    public i(a<c.c.a.e.d.o.c> aVar, a<Context> aVar2) {
        this.f6436a = aVar;
        this.f6437b = aVar2;
    }

    public static i a(a<c.c.a.e.d.o.c> aVar, a<Context> aVar2) {
        return new i(aVar, aVar2);
    }

    public static h b(a<c.c.a.e.d.o.c> aVar, a<Context> aVar2) {
        return new h(aVar.get(), aVar2.get());
    }

    public h get() {
        return b(this.f6436a, this.f6437b);
    }
}
