package c.e.d.b;

import java.lang.reflect.Method;

/* compiled from: UnsafeAllocator */
class C extends E {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Method f11727a;

    public C(Method method) {
        this.f11727a = method;
    }

    public <T> T b(Class<T> cls) {
        E.a(cls);
        return this.f11727a.invoke(null, new Object[]{cls, Object.class});
    }
}
