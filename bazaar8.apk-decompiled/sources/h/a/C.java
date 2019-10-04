package h.a;

import h.f.b.j;
import java.util.Collections;
import java.util.Set;

/* compiled from: SetsJVM.kt */
public class C {
    public static final <T> Set<T> a(T t) {
        Set<T> singleton = Collections.singleton(t);
        j.a((Object) singleton, "java.util.Collections.singleton(element)");
        return singleton;
    }
}
