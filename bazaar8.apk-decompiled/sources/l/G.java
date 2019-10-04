package l;

import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* compiled from: ServiceMethod */
public abstract class G<T> {
    public static <T> G<T> a(F f2, Method method) {
        C a2 = C.a(f2, method);
        Type genericReturnType = method.getGenericReturnType();
        if (H.d(genericReturnType)) {
            throw H.a(method, "Method return type must not include a type variable or wildcard: %s", genericReturnType);
        } else if (genericReturnType != Void.TYPE) {
            return r.a(f2, method, a2);
        } else {
            throw H.a(method, "Service methods cannot return void.", new Object[0]);
        }
    }

    public abstract T a(Object[] objArr);
}
