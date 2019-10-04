package c.c.a.e.d.l;

import android.content.Context;
import g.a.a;

/* compiled from: InstalledAppLocalDataSource_Factory */
public final class c implements d.b.c<b> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f5228a;

    public c(a<Context> aVar) {
        this.f5228a = aVar;
    }

    public static c a(a<Context> aVar) {
        return new c(aVar);
    }

    public static b b(a<Context> aVar) {
        return new b(aVar.get());
    }

    public b get() {
        return b(this.f5228a);
    }
}
