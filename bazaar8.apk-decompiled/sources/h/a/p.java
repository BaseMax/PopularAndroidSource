package h.a;

import h.f.b.j;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* compiled from: MutableCollectionsJVM.kt */
public class p extends o {
    public static final <T> void a(List<T> list, Comparator<? super T> comparator) {
        j.b(list, "$this$sortWith");
        j.b(comparator, "comparator");
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }

    public static final <T extends Comparable<? super T>> void c(List<T> list) {
        j.b(list, "$this$sort");
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }
}
