package c.e.a.b.h.b;

import c.e.a.b.d.d.r;

/* renamed from: c.e.a.b.h.b.bb  reason: case insensitive filesystem */
public final class C0906bb {
    public static String a(String str, String[] strArr, String[] strArr2) {
        r.a(strArr);
        r.a(strArr2);
        int min = Math.min(strArr.length, strArr2.length);
        for (int i2 = 0; i2 < min; i2++) {
            String str2 = strArr[i2];
            if ((str == null && str2 == null) ? true : str == null ? false : str.equals(str2)) {
                return strArr2[i2];
            }
        }
        return null;
    }
}
