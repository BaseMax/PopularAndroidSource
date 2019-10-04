package c.c.a.h.b;

import android.content.Context;
import d.b.c;
import d.b.h;
import g.a.a;
import java.io.File;

/* compiled from: NetworkModule_CacheFileFactory */
public final class Za implements c<File> {

    /* renamed from: a  reason: collision with root package name */
    public final Ya f5955a;

    /* renamed from: b  reason: collision with root package name */
    public final a<Context> f5956b;

    public Za(Ya ya, a<Context> aVar) {
        this.f5955a = ya;
        this.f5956b = aVar;
    }

    public static Za a(Ya ya, a<Context> aVar) {
        return new Za(ya, aVar);
    }

    public static File b(Ya ya, a<Context> aVar) {
        return a(ya, aVar.get());
    }

    public static File a(Ya ya, Context context) {
        File a2 = ya.a(context);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public File get() {
        return b(this.f5955a, this.f5956b);
    }
}
