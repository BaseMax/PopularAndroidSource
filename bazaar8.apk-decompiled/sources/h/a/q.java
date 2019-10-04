package h.a;

import h.f.b.j;
import java.util.Collection;

/* compiled from: MutableCollections.kt */
public class q extends p {
    public static final <T> boolean a(Collection<? super T> collection, Iterable<? extends T> iterable) {
        j.b(collection, "$this$addAll");
        j.b(iterable, "elements");
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        boolean z = false;
        for (Object add : iterable) {
            if (collection.add(add)) {
                z = true;
            }
        }
        return z;
    }

    public static final <T> boolean a(Collection<? super T> collection, T[] tArr) {
        j.b(collection, "$this$addAll");
        j.b(tArr, "elements");
        return collection.addAll(h.a(tArr));
    }
}
