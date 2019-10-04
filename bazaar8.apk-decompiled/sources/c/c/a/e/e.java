package c.c.a.e;

import android.content.Context;
import d.b.c;
import g.a.a;

/* compiled from: StorageManager_Factory */
public final class e implements c<c> {

    /* renamed from: a  reason: collision with root package name */
    public final a<Context> f5430a;

    public e(a<Context> aVar) {
        this.f5430a = aVar;
    }

    public static e a(a<Context> aVar) {
        return new e(aVar);
    }

    public static c b(a<Context> aVar) {
        return new c(aVar.get());
    }

    public c get() {
        return b(this.f5430a);
    }
}
