package h.a;

import h.f.b.j;
import java.util.Set;
import kotlin.collections.EmptySet;

/* compiled from: Sets.kt */
public class D extends C {
    public static final <T> Set<T> a() {
        return EmptySet.f15779a;
    }

    public static final <T> Set<T> a(Set<? extends T> set) {
        j.b(set, "$this$optimizeReadOnlySet");
        int size = set.size();
        if (size == 0) {
            return a();
        }
        if (size != 1) {
            return set;
        }
        return C.a(set.iterator().next());
    }
}
