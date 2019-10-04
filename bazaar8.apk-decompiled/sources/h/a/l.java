package h.a;

import h.f.b.j;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: Collections.kt */
public class l extends k {
    public static final <T> List<T> a() {
        return EmptyList.f15777a;
    }

    public static final <T> Collection<T> b(T[] tArr) {
        j.b(tArr, "$this$asCollection");
        return new e(tArr, false);
    }

    public static final <T> List<T> c(T... tArr) {
        j.b(tArr, "elements");
        return tArr.length > 0 ? h.a(tArr) : a();
    }

    public static final <T> List<T> d(T... tArr) {
        j.b(tArr, "elements");
        return tArr.length == 0 ? new ArrayList() : new ArrayList(new e(tArr, true));
    }

    public static final <T> ArrayList<T> a(T... tArr) {
        j.b(tArr, "elements");
        return tArr.length == 0 ? new ArrayList<>() : new ArrayList<>(new e(tArr, true));
    }

    public static final <T> List<T> b(List<? extends T> list) {
        j.b(list, "$this$optimizeReadOnlyList");
        int size = list.size();
        if (size == 0) {
            return a();
        }
        if (size != 1) {
            return list;
        }
        return k.a(list.get(0));
    }

    public static final <T> int a(List<? extends T> list) {
        j.b(list, "$this$lastIndex");
        return list.size() - 1;
    }

    public static final void b() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
