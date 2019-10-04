package c.e.a.a.e.h;

import c.e.a.a.o.v;

/* compiled from: TsUtil */
public final class K {
    public static int a(byte[] bArr, int i2, int i3) {
        while (i2 < i3 && bArr[i2] != 71) {
            i2++;
        }
        return i2;
    }

    public static long a(v vVar, int i2, int i3) {
        vVar.e(i2);
        if (vVar.a() < 5) {
            return -9223372036854775807L;
        }
        int i4 = vVar.i();
        if ((8388608 & i4) != 0 || ((2096896 & i4) >> 8) != i3) {
            return -9223372036854775807L;
        }
        boolean z = true;
        if (((i4 & 32) != 0) && vVar.u() >= 7 && vVar.a() >= 7) {
            if ((vVar.u() & 16) != 16) {
                z = false;
            }
            if (z) {
                byte[] bArr = new byte[6];
                vVar.a(bArr, 0, bArr.length);
                return a(bArr);
            }
        }
        return -9223372036854775807L;
    }

    public static long a(byte[] bArr) {
        return ((((long) bArr[0]) & 255) << 25) | ((((long) bArr[1]) & 255) << 17) | ((((long) bArr[2]) & 255) << 9) | ((((long) bArr[3]) & 255) << 1) | ((255 & ((long) bArr[4])) >> 7);
    }
}
