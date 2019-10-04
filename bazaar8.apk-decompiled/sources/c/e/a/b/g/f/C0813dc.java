package c.e.a.b.g.f;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* renamed from: c.e.a.b.g.f.dc  reason: case insensitive filesystem */
public final class C0813dc {

    /* renamed from: a  reason: collision with root package name */
    public static final C0813dc f10378a = new C0813dc();

    /* renamed from: b  reason: collision with root package name */
    public final C0833ic f10379b = new Ib();

    /* renamed from: c  reason: collision with root package name */
    public final ConcurrentMap<Class<?>, C0829hc<?>> f10380c = new ConcurrentHashMap();

    public static C0813dc a() {
        return f10378a;
    }

    public final <T> C0829hc<T> a(Class<T> cls) {
        C0864qb.a(cls, "messageType");
        C0829hc<T> hcVar = (C0829hc) this.f10380c.get(cls);
        if (hcVar != null) {
            return hcVar;
        }
        C0829hc<T> a2 = this.f10379b.a(cls);
        C0864qb.a(cls, "messageType");
        C0864qb.a(a2, "schema");
        C0829hc<T> putIfAbsent = this.f10380c.putIfAbsent(cls, a2);
        return putIfAbsent != null ? putIfAbsent : a2;
    }

    public final <T> C0829hc<T> a(T t) {
        return a(t.getClass());
    }
}
