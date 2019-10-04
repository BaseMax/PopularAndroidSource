package c.b.a.c.a;

import c.b.a.c.a.e;
import c.b.a.i.i;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: DataRewinderRegistry */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static final e.a<?> f3786a = new f();

    /* renamed from: b  reason: collision with root package name */
    public final Map<Class<?>, e.a<?>> f3787b = new HashMap();

    /* compiled from: DataRewinderRegistry */
    private static final class a implements e<Object> {

        /* renamed from: a  reason: collision with root package name */
        public final Object f3788a;

        public a(Object obj) {
            this.f3788a = obj;
        }

        public Object a() {
            return this.f3788a;
        }

        public void b() {
        }
    }

    public synchronized void a(e.a<?> aVar) {
        this.f3787b.put(aVar.a(), aVar);
    }

    public synchronized <T> e<T> a(T t) {
        e.a<?> aVar;
        i.a(t);
        aVar = this.f3787b.get(t.getClass());
        if (aVar == null) {
            Iterator<e.a<?>> it = this.f3787b.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                e.a<?> next = it.next();
                if (next.a().isAssignableFrom(t.getClass())) {
                    aVar = next;
                    break;
                }
            }
        }
        if (aVar == null) {
            aVar = f3786a;
        }
        return aVar.a(t);
    }
}
