package c.e.d.b;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/* compiled from: ConstructorConstructor */
class i implements w<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Constructor f11789a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ p f11790b;

    public i(p pVar, Constructor constructor) {
        this.f11790b = pVar;
        this.f11789a = constructor;
    }

    public T a() {
        try {
            return this.f11789a.newInstance(null);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Failed to invoke " + this.f11789a + " with no args", e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException("Failed to invoke " + this.f11789a + " with no args", e3.getTargetException());
        } catch (IllegalAccessException e4) {
            throw new AssertionError(e4);
        }
    }
}
