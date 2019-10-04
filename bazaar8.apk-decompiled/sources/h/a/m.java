package h.a;

import h.f.b.j;
import java.util.Collection;

/* compiled from: Iterables.kt */
public class m extends l {
    public static final <T> int a(Iterable<? extends T> iterable, int i2) {
        j.b(iterable, "$this$collectionSizeOrDefault");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i2;
    }
}
