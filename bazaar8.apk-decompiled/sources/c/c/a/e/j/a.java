package c.c.a.e.j;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.p;
import c.e.d.x;
import com.farsitel.bazaar.data.serialization.DtoUnwrapTypeAdapterFactory;
import h.f.b.j;

/* compiled from: DtoUnwrapTypeAdapterFactory.kt */
public final class a extends x<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ DtoUnwrapTypeAdapterFactory f5545a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ x f5546b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ x f5547c;

    public a(DtoUnwrapTypeAdapterFactory dtoUnwrapTypeAdapterFactory, x xVar, x xVar2) {
        this.f5545a = dtoUnwrapTypeAdapterFactory;
        this.f5546b = xVar;
        this.f5547c = xVar2;
    }

    public void a(c cVar, T t) {
        j.b(cVar, "out");
        this.f5546b.a(cVar, t);
    }

    public T a(b bVar) {
        j.b(bVar, "in");
        p pVar = (p) this.f5547c.a(bVar);
        DtoUnwrapTypeAdapterFactory dtoUnwrapTypeAdapterFactory = this.f5545a;
        j.a((Object) pVar, "jsonElement");
        return this.f5546b.a(dtoUnwrapTypeAdapterFactory.a(pVar));
    }
}
