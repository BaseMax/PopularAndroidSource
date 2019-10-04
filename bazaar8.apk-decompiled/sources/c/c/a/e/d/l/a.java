package c.c.a.e.d.l;

import android.content.pm.PackageInfo;
import java.util.Comparator;

/* compiled from: Comparisons.kt */
public final class a<T> implements Comparator<T> {
    public final int compare(T t, T t2) {
        return h.b.a.a(Long.valueOf(((PackageInfo) t2).lastUpdateTime), Long.valueOf(((PackageInfo) t).lastUpdateTime));
    }
}
