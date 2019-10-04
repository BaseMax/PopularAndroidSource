package cab.snapp.snappuikit.c;

public final class b {
    public static boolean isNumeral(char c) {
        return ('0' <= c && c <= '9') || (1632 <= c && c <= 1641) || (1776 <= c && c <= 1785);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0022, code lost:
        r2 = '8';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0025, code lost:
        r2 = '7';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0028, code lost:
        r2 = '6';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002b, code lost:
        r2 = '5';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002e, code lost:
        r2 = '4';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0031, code lost:
        r2 = '3';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0034, code lost:
        r2 = '2';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0037, code lost:
        r2 = '1';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x003a, code lost:
        r2 = '0';
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x003c, code lost:
        r0.append(r2);
        r1 = r1 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001f, code lost:
        r2 = '9';
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String convertNumeralsToEnglish(java.lang.CharSequence r3) {
        /*
            if (r3 != 0) goto L_0x0004
            r3 = 0
            return r3
        L_0x0004:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            int r1 = r3.length()
            r0.<init>(r1)
            r1 = 0
        L_0x000e:
            int r2 = r3.length()
            if (r1 >= r2) goto L_0x0042
            char r2 = r3.charAt(r1)
            switch(r2) {
                case 1632: goto L_0x003a;
                case 1633: goto L_0x0037;
                case 1634: goto L_0x0034;
                case 1635: goto L_0x0031;
                case 1636: goto L_0x002e;
                case 1637: goto L_0x002b;
                case 1638: goto L_0x0028;
                case 1639: goto L_0x0025;
                case 1640: goto L_0x0022;
                case 1641: goto L_0x001f;
                default: goto L_0x001b;
            }
        L_0x001b:
            switch(r2) {
                case 1776: goto L_0x003a;
                case 1777: goto L_0x0037;
                case 1778: goto L_0x0034;
                case 1779: goto L_0x0031;
                case 1780: goto L_0x002e;
                case 1781: goto L_0x002b;
                case 1782: goto L_0x0028;
                case 1783: goto L_0x0025;
                case 1784: goto L_0x0022;
                case 1785: goto L_0x001f;
                default: goto L_0x001e;
            }
        L_0x001e:
            goto L_0x003c
        L_0x001f:
            r2 = 57
            goto L_0x003c
        L_0x0022:
            r2 = 56
            goto L_0x003c
        L_0x0025:
            r2 = 55
            goto L_0x003c
        L_0x0028:
            r2 = 54
            goto L_0x003c
        L_0x002b:
            r2 = 53
            goto L_0x003c
        L_0x002e:
            r2 = 52
            goto L_0x003c
        L_0x0031:
            r2 = 51
            goto L_0x003c
        L_0x0034:
            r2 = 50
            goto L_0x003c
        L_0x0037:
            r2 = 49
            goto L_0x003c
        L_0x003a:
            r2 = 48
        L_0x003c:
            r0.append(r2)
            int r1 = r1 + 1
            goto L_0x000e
        L_0x0042:
            java.lang.String r3 = r0.toString()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.snappuikit.c.b.convertNumeralsToEnglish(java.lang.CharSequence):java.lang.String");
    }

    public static String stripNonNumerals(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (isNumeral(charAt)) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static String stripNonNumeralsRegex(String str) {
        if (str == null) {
            return null;
        }
        return str.replaceAll("[^\\d٠-٩۰-۹]", "");
    }

    public static int getNumeralsCountBeforePosition(CharSequence charSequence, int i) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < charSequence.length() && i2 < i) {
            if (isNumeral(charSequence.charAt(i2))) {
                i3++;
            }
            i2++;
        }
        return i3;
    }

    public static int getCursorPositionForNumeralAt(CharSequence charSequence, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < charSequence.length(); i3++) {
            if (isNumeral(charSequence.charAt(i3))) {
                i2++;
                if (i2 == i) {
                    return i3 + 1;
                }
            }
        }
        return charSequence.length();
    }

    public static String replaceCharAt(String str, char c, int i) {
        char[] charArray = str.toCharArray();
        charArray[i] = c;
        return String.valueOf(charArray);
    }
}
