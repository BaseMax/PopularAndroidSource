package c.c.a.o.b;

/* compiled from: PersianHelper */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public static char[] f7132a = {1776, 1777, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785};

    /* renamed from: b  reason: collision with root package name */
    public static char[] f7133b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};

    public static String a(String str) {
        if (str.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if ('0' <= charAt && charAt <= '9') {
                sb.append(f7132a[Integer.parseInt(String.valueOf(charAt))]);
            } else if (charAt == 1643) {
                sb.append(1548);
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }
}
