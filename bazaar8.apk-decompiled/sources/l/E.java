package l;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* compiled from: Retrofit */
class E implements InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    public final A f15866a = A.e();

    /* renamed from: b  reason: collision with root package name */
    public final Object[] f15867b = new Object[0];

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Class f15868c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ F f15869d;

    public E(F f2, Class cls) {
        this.f15869d = f2;
        this.f15868c = cls;
    }

    public Object invoke(Object obj, Method method, Object[] objArr) {
        if (method.getDeclaringClass() == Object.class) {
            return method.invoke(this, objArr);
        }
        if (this.f15866a.a(method)) {
            return this.f15866a.a(method, this.f15868c, obj, objArr);
        }
        G<?> a2 = this.f15869d.a(method);
        if (objArr == null) {
            objArr = this.f15867b;
        }
        return a2.a(objArr);
    }
}
