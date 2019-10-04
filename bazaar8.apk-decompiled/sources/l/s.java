package l;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;

/* compiled from: Invocation */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public final Method f15934a;

    /* renamed from: b  reason: collision with root package name */
    public final List<?> f15935b;

    public s(Method method, List<?> list) {
        this.f15934a = method;
        this.f15935b = Collections.unmodifiableList(list);
    }

    public String toString() {
        return String.format("%s.%s() %s", new Object[]{this.f15934a.getDeclaringClass().getName(), this.f15934a.getName(), this.f15935b});
    }
}
