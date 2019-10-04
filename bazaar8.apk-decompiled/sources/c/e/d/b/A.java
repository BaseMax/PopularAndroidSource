package c.e.d.b;

import java.lang.reflect.Method;

/* compiled from: UnsafeAllocator */
class A extends E {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Method f11723a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f11724b;

    public A(Method method, Object obj) {
        this.f11723a = method;
        this.f11724b = obj;
    }

    public <T> T b(Class<T> cls) {
        E.a(cls);
        return this.f11723a.invoke(this.f11724b, new Object[]{cls});
    }
}
