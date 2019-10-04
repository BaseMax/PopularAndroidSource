package h.a;

import h.f.b.j;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* compiled from: _ArraysJvm.kt */
public class h extends g {
    public static final <T> List<T> a(T[] tArr) {
        j.b(tArr, "$this$asList");
        List<T> a2 = j.a(tArr);
        j.a((Object) a2, "ArraysUtilJVM.asList(this)");
        return a2;
    }

    public static final <T> void b(T[] tArr) {
        j.b(tArr, "$this$sort");
        if (tArr.length > 1) {
            Arrays.sort(tArr);
        }
    }

    public static /* synthetic */ Object[] a(Object[] objArr, Object[] objArr2, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i3 = 0;
        }
        if ((i5 & 8) != 0) {
            i4 = objArr.length;
        }
        a(objArr, objArr2, i2, i3, i4);
        return objArr2;
    }

    public static final <T> T[] a(T[] tArr, T[] tArr2, int i2, int i3, int i4) {
        j.b(tArr, "$this$copyInto");
        j.b(tArr2, "destination");
        System.arraycopy(tArr, i3, tArr2, i2, i4 - i3);
        return tArr2;
    }

    public static final <T> T[] a(T[] tArr, T t) {
        j.b(tArr, "$this$plus");
        int length = tArr.length;
        T[] copyOf = Arrays.copyOf(tArr, length + 1);
        copyOf[length] = t;
        j.a((Object) copyOf, "result");
        return copyOf;
    }

    public static final <T> void a(T[] tArr, Comparator<? super T> comparator) {
        j.b(tArr, "$this$sortWith");
        j.b(comparator, "comparator");
        if (tArr.length > 1) {
            Arrays.sort(tArr, comparator);
        }
    }
}
