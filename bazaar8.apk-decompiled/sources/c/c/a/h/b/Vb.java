package c.c.a.h.b;

import b.r.E;
import b.r.F;
import g.a.a;
import h.f.b.j;
import java.util.Iterator;
import java.util.Map;
import kotlin.TypeCastException;

/* compiled from: ViewModelFactory.kt */
public final class Vb implements F.b {

    /* renamed from: a  reason: collision with root package name */
    public final Map<Class<? extends E>, a<E>> f5952a;

    public Vb(Map<Class<? extends E>, a<E>> map) {
        j.b(map, "creators");
        this.f5952a = map;
    }

    public <T extends E> T a(Class<T> cls) {
        T t;
        j.b(cls, "modelClass");
        a aVar = this.f5952a.get(cls);
        if (aVar == null) {
            Iterator<T> it = this.f5952a.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    t = null;
                    break;
                }
                t = it.next();
                if (cls.isAssignableFrom((Class) ((Map.Entry) t).getKey())) {
                    break;
                }
            }
            Map.Entry entry = (Map.Entry) t;
            aVar = entry != null ? (a) entry.getValue() : null;
        }
        if (aVar != null) {
            try {
                T t2 = aVar.get();
                if (t2 != null) {
                    return (E) t2;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        } else {
            throw new IllegalArgumentException("Unknown createViewModel class " + cls);
        }
    }
}
