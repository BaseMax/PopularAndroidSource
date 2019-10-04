package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.JsonSyntaxException;

/* compiled from: TypeAdapters */
class J extends x<T1> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Class f11730a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ TypeAdapters$35 f11731b;

    public J(TypeAdapters$35 typeAdapters$35, Class cls) {
        this.f11731b = typeAdapters$35;
        this.f11730a = cls;
    }

    public void a(c cVar, T1 t1) {
        this.f11731b.f13594b.a(cVar, t1);
    }

    public T1 a(b bVar) {
        T1 a2 = this.f11731b.f13594b.a(bVar);
        if (a2 == null || this.f11730a.isInstance(a2)) {
            return a2;
        }
        throw new JsonSyntaxException("Expected a " + this.f11730a.getName() + " but was " + a2.getClass().getName());
    }
}
