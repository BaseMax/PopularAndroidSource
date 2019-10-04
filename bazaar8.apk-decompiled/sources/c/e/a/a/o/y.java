package c.e.a.a.o;

/* compiled from: RepeatModeUtil */
public final class y {
    public static int a(int i2, int i3) {
        for (int i4 = 1; i4 <= 2; i4++) {
            int i5 = (i2 + i4) % 3;
            if (b(i5, i3)) {
                return i5;
            }
        }
        return i2;
    }

    public static boolean b(int i2, int i3) {
        boolean z = true;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return false;
                }
                if ((i3 & 2) == 0) {
                    z = false;
                }
                return z;
            } else if ((i3 & 1) == 0) {
                z = false;
            }
        }
        return z;
    }
}
