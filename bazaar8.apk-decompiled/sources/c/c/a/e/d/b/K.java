package c.c.a.e.d.b;

import android.content.Context;
import d.b.c;
import g.a.a;

/* compiled from: TokenSharedDataSource_Factory */
public final class K implements c<J> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f4947a;

    public K(a<Context> aVar) {
        this.f4947a = aVar;
    }

    public static K a(a<Context> aVar) {
        return new K(aVar);
    }

    public static J b(a<Context> aVar) {
        return new J(aVar.get());
    }

    public J get() {
        return b(this.f4947a);
    }
}
