package c.e.a.a.o;

import android.net.Uri;
import android.text.TextUtils;

/* compiled from: UriUtil */
public final class H {
    public static String a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        int[] a2 = a(str2);
        if (a2[0] != -1) {
            sb.append(str2);
            a(sb, a2[1], a2[2]);
            return sb.toString();
        }
        int[] a3 = a(str);
        if (a2[3] == 0) {
            sb.append(str, 0, a3[3]);
            sb.append(str2);
            return sb.toString();
        } else if (a2[2] == 0) {
            sb.append(str, 0, a3[2]);
            sb.append(str2);
            return sb.toString();
        } else if (a2[1] != 0) {
            int i2 = a3[0] + 1;
            sb.append(str, 0, i2);
            sb.append(str2);
            return a(sb, a2[1] + i2, i2 + a2[2]);
        } else if (str2.charAt(a2[1]) == '/') {
            sb.append(str, 0, a3[1]);
            sb.append(str2);
            return a(sb, a3[1], a3[1] + a2[2]);
        } else if (a3[0] + 2 >= a3[1] || a3[1] != a3[2]) {
            int lastIndexOf = str.lastIndexOf(47, a3[2] - 1);
            int i3 = lastIndexOf == -1 ? a3[1] : lastIndexOf + 1;
            sb.append(str, 0, i3);
            sb.append(str2);
            return a(sb, a3[1], i3 + a2[2]);
        } else {
            sb.append(str, 0, a3[1]);
            sb.append('/');
            sb.append(str2);
            return a(sb, a3[1], a3[1] + a2[2] + 1);
        }
    }

    public static Uri b(String str, String str2) {
        return Uri.parse(a(str, str2));
    }

    public static String a(StringBuilder sb, int i2, int i3) {
        int i4;
        int i5;
        if (i2 >= i3) {
            return sb.toString();
        }
        if (sb.charAt(i2) == '/') {
            i2++;
        }
        int i6 = i2;
        int i7 = i3;
        while (true) {
            int i8 = i6;
            while (i8 <= i7) {
                if (i8 == i7) {
                    i4 = i8;
                } else if (sb.charAt(i8) == '/') {
                    i4 = i8 + 1;
                } else {
                    i8++;
                }
                int i9 = i6 + 1;
                if (i8 == i9 && sb.charAt(i6) == '.') {
                    sb.delete(i6, i4);
                    i7 -= i4 - i6;
                } else {
                    if (i8 == i6 + 2 && sb.charAt(i6) == '.' && sb.charAt(i9) == '.') {
                        i5 = sb.lastIndexOf("/", i6 - 2) + 1;
                        int i10 = i5 > i2 ? i5 : i2;
                        sb.delete(i10, i4);
                        i7 -= i4 - i10;
                    } else {
                        i5 = i8 + 1;
                    }
                    i6 = i5;
                }
            }
            return sb.toString();
        }
    }

    public static int[] a(String str) {
        int i2;
        int[] iArr = new int[4];
        if (TextUtils.isEmpty(str)) {
            iArr[0] = -1;
            return iArr;
        }
        int length = str.length();
        int indexOf = str.indexOf(35);
        if (indexOf != -1) {
            length = indexOf;
        }
        int indexOf2 = str.indexOf(63);
        if (indexOf2 == -1 || indexOf2 > length) {
            indexOf2 = length;
        }
        int indexOf3 = str.indexOf(47);
        if (indexOf3 == -1 || indexOf3 > indexOf2) {
            indexOf3 = indexOf2;
        }
        int indexOf4 = str.indexOf(58);
        if (indexOf4 > indexOf3) {
            indexOf4 = -1;
        }
        int i3 = indexOf4 + 2;
        if (i3 < indexOf2 && str.charAt(indexOf4 + 1) == '/' && str.charAt(i3) == '/') {
            i2 = str.indexOf(47, indexOf4 + 3);
            if (i2 == -1 || i2 > indexOf2) {
                i2 = indexOf2;
            }
        } else {
            i2 = indexOf4 + 1;
        }
        iArr[0] = indexOf4;
        iArr[1] = i2;
        iArr[2] = indexOf2;
        iArr[3] = length;
        return iArr;
    }
}
