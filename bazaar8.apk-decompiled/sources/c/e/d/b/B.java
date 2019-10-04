package c.e.d.b;

import java.lang.reflect.Method;

/* compiled from: UnsafeAllocator */
class B extends E {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Method f11725a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f11726b;

    public B(Method method, int i2) {
        this.f11725a = method;
        this.f11726b = i2;
    }

    public <T> T b(Class<T> cls) {
        E.a(cls);
        return this.f11725a.invoke(null, new Object[]{cls, Integer.valueOf(this.f11726b)});
    }
}
