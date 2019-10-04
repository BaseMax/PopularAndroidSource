package c.e.a.b.d.g;

import c.e.a.b.d.d.C0794q;
import java.lang.reflect.Array;
import java.util.Arrays;

public final class b {
    public static <T> boolean a(T[] tArr, T t) {
        int length = tArr != null ? tArr.length : 0;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                i2 = -1;
                break;
            } else if (C0794q.a(tArr[i2], t)) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            return true;
        }
        return false;
    }

    public static <T> void a(StringBuilder sb, T[] tArr) {
        int length = tArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 != 0) {
                sb.append(",");
            }
            sb.append(tArr[i2].toString());
        }
    }

    public static void a(StringBuilder sb, int[] iArr) {
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 != 0) {
                sb.append(",");
            }
            sb.append(Integer.toString(iArr[i2]));
        }
    }

    public static void a(StringBuilder sb, long[] jArr) {
        int length = jArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 != 0) {
                sb.append(",");
            }
            sb.append(Long.toString(jArr[i2]));
        }
    }

    public static void a(StringBuilder sb, float[] fArr) {
        int length = fArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 != 0) {
                sb.append(",");
            }
            sb.append(Float.toString(fArr[i2]));
        }
    }

    public static void a(StringBuilder sb, double[] dArr) {
        int length = dArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 != 0) {
                sb.append(",");
            }
            sb.append(Double.toString(dArr[i2]));
        }
    }

    public static void a(StringBuilder sb, boolean[] zArr) {
        int length = zArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 != 0) {
                sb.append(",");
            }
            sb.append(Boolean.toString(zArr[i2]));
        }
    }

    public static void a(StringBuilder sb, String[] strArr) {
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 != 0) {
                sb.append(",");
            }
            sb.append("\"");
            sb.append(strArr[i2]);
            sb.append("\"");
        }
    }

    public static <T> T[] a(T[]... tArr) {
        if (tArr.length == 0) {
            return (Object[]) Array.newInstance(tArr.getClass(), 0);
        }
        int i2 = 0;
        for (T[] length : tArr) {
            i2 += length.length;
        }
        T[] copyOf = Arrays.copyOf(tArr[0], i2);
        int length2 = tArr[0].length;
        for (int i3 = 1; i3 < tArr.length; i3++) {
            T[] tArr2 = tArr[i3];
            System.arraycopy(tArr2, 0, copyOf, length2, tArr2.length);
            length2 += tArr2.length;
        }
        return copyOf;
    }

    public static <T> T[] a(T[] tArr, T... tArr2) {
        int i2;
        if (tArr == null) {
            return null;
        }
        if (tArr2 == null || tArr2.length == 0) {
            return Arrays.copyOf(tArr, tArr.length);
        }
        T[] tArr3 = (Object[]) Array.newInstance(tArr2.getClass().getComponentType(), tArr.length);
        if (tArr2.length == 1) {
            i2 = 0;
            for (T t : tArr) {
                if (!C0794q.a(tArr2[0], t)) {
                    tArr3[i2] = t;
                    i2++;
                }
            }
        } else {
            i2 = 0;
            for (T t2 : tArr) {
                if (!a(tArr2, t2)) {
                    tArr3[i2] = t2;
                    i2++;
                }
            }
        }
        if (tArr3 == null) {
            return null;
        }
        if (i2 != tArr3.length) {
            tArr3 = Arrays.copyOf(tArr3, i2);
        }
        return tArr3;
    }
}
