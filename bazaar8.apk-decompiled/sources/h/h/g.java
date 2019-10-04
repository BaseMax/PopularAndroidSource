package h.h;

/* compiled from: _Ranges.kt */
public class g extends f {
    public static final int a(int i2, int i3) {
        return i2 < i3 ? i3 : i2;
    }

    public static final int a(int i2, int i3, int i4) {
        if (i3 > i4) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i4 + " is less than minimum " + i3 + '.');
        } else if (i2 < i3) {
            return i3;
        } else {
            return i2 > i4 ? i4 : i2;
        }
    }

    public static final long a(long j2, long j3) {
        return j2 < j3 ? j3 : j2;
    }

    public static final int b(int i2, int i3) {
        return i2 > i3 ? i3 : i2;
    }

    public static final long b(long j2, long j3) {
        return j2 > j3 ? j3 : j2;
    }

    public static final b c(int i2, int i3) {
        return b.f14580a.a(i2, i3, -1);
    }

    public static final d d(int i2, int i3) {
        if (i3 <= Integer.MIN_VALUE) {
            return d.f14589f.a();
        }
        return new d(i2, i3 - 1);
    }
}
