package h.a;

import h.f.b.j;
import h.h.d;
import java.util.List;

/* compiled from: ReversedViews.kt */
public class r extends q {
    public static final int b(List<?> list, int i2) {
        int a2 = l.a(list);
        if (i2 >= 0 && a2 >= i2) {
            return l.a(list) - i2;
        }
        throw new IndexOutOfBoundsException("Element index " + i2 + " must be in range [" + new d(0, l.a(list)) + "].");
    }

    public static final <T> List<T> d(List<? extends T> list) {
        j.b(list, "$this$asReversed");
        return new B(list);
    }
}
