package i.a.c;

import h.f.b.j;
import h.k.l;

/* compiled from: SystemProps.common.kt */
public final /* synthetic */ class y {
    public static final boolean a(String str, boolean z) {
        j.b(str, "propertyName");
        String a2 = w.a(str);
        return a2 != null ? Boolean.parseBoolean(a2) : z;
    }

    public static /* synthetic */ int a(String str, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 4) != 0) {
            i3 = 1;
        }
        if ((i5 & 8) != 0) {
            i4 = Integer.MAX_VALUE;
        }
        return w.a(str, i2, i3, i4);
    }

    public static final int a(String str, int i2, int i3, int i4) {
        j.b(str, "propertyName");
        return (int) w.a(str, (long) i2, (long) i3, (long) i4);
    }

    public static /* synthetic */ long a(String str, long j2, long j3, long j4, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            j3 = 1;
        }
        long j5 = j3;
        if ((i2 & 8) != 0) {
            j4 = Long.MAX_VALUE;
        }
        return w.a(str, j2, j5, j4);
    }

    public static final long a(String str, long j2, long j3, long j4) {
        j.b(str, "propertyName");
        String a2 = w.a(str);
        if (a2 == null) {
            return j2;
        }
        Long c2 = l.c(a2);
        if (c2 != null) {
            long longValue = c2.longValue();
            if (j3 <= longValue && j4 >= longValue) {
                return longValue;
            }
            throw new IllegalStateException(("System property '" + str + "' should be in range " + j3 + ".." + j4 + ", but is '" + longValue + '\'').toString());
        }
        throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + a2 + '\'').toString());
    }
}
