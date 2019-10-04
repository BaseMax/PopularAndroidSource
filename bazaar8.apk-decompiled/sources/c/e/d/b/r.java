package c.e.d.b;

/* compiled from: JavaVersion */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public static final int f11806a = a();

    public static int a() {
        return b(System.getProperty("java.version"));
    }

    public static int b(String str) {
        int c2 = c(str);
        if (c2 == -1) {
            c2 = a(str);
        }
        if (c2 == -1) {
            return 6;
        }
        return c2;
    }

    public static int c(String str) {
        try {
            String[] split = str.split("[._]");
            int parseInt = Integer.parseInt(split[0]);
            return (parseInt != 1 || split.length <= 1) ? parseInt : Integer.parseInt(split[1]);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static int a(String str) {
        try {
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < str.length(); i2++) {
                char charAt = str.charAt(i2);
                if (!Character.isDigit(charAt)) {
                    break;
                }
                sb.append(charAt);
            }
            return Integer.parseInt(sb.toString());
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static int b() {
        return f11806a;
    }

    public static boolean c() {
        return f11806a >= 9;
    }
}
