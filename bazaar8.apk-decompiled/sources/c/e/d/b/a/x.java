package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;

/* compiled from: TypeAdapters */
class x extends c.e.d.x<Class> {
    public /* bridge */ /* synthetic */ void a(c cVar, Object obj) {
        a(cVar, (Class) obj);
        throw null;
    }

    public void a(c cVar, Class cls) {
        throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
    }

    public Class a(b bVar) {
        throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
    }
}
