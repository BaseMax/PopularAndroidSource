package b.i.j;

import android.util.SparseArray;
import java.util.Iterator;

/* compiled from: SparseArray.kt */
public final class j {
    public static final <T> Iterator<T> a(SparseArray<T> sparseArray) {
        h.f.b.j.b(sparseArray, "$receiver");
        return new i(sparseArray);
    }
}
