package i.a.c;

import h.f.b.j;
import h.j.k;
import h.j.o;
import i.a.Ca;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import kotlinx.coroutines.internal.MainDispatcherFactory;

/* compiled from: MainDispatchers.kt */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f14773a = w.a("kotlinx.coroutines.fast.service.loader", true);

    /* renamed from: b  reason: collision with root package name */
    public static final Ca f14774b;

    /* renamed from: c  reason: collision with root package name */
    public static final n f14775c;

    static {
        n nVar = new n();
        f14775c = nVar;
        f14774b = nVar.a();
    }

    public final Ca a() {
        List<S> list;
        T t;
        try {
            if (f14773a) {
                Class<MainDispatcherFactory> cls = MainDispatcherFactory.class;
                h hVar = h.f14753a;
                ClassLoader classLoader = cls.getClassLoader();
                j.a((Object) classLoader, "clz.classLoader");
                list = hVar.a(cls, classLoader);
            } else {
                Iterator<S> it = ServiceLoader.load(MainDispatcherFactory.class, MainDispatcherFactory.class.getClassLoader()).iterator();
                j.a((Object) it, "ServiceLoader.load(\n    …             ).iterator()");
                list = o.c(k.a(it));
            }
            Iterator<T> it2 = list.iterator();
            if (!it2.hasNext()) {
                t = null;
            } else {
                t = it2.next();
                if (it2.hasNext()) {
                    int loadPriority = ((MainDispatcherFactory) t).getLoadPriority();
                    do {
                        T next = it2.next();
                        int loadPriority2 = ((MainDispatcherFactory) next).getLoadPriority();
                        if (loadPriority < loadPriority2) {
                            t = next;
                            loadPriority = loadPriority2;
                        }
                    } while (it2.hasNext());
                }
            }
            MainDispatcherFactory mainDispatcherFactory = (MainDispatcherFactory) t;
            if (mainDispatcherFactory != null) {
                Ca a2 = o.a(mainDispatcherFactory, list);
                if (a2 != null) {
                    return a2;
                }
            }
            return new p(null, null, 2, null);
        } catch (Throwable th) {
            return new p(th, null, 2, null);
        }
    }
}
