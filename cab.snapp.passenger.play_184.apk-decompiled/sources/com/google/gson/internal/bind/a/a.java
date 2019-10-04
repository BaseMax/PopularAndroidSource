package com.google.gson.internal.bind.a;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final TimeZone f4165a = TimeZone.getTimeZone("UTC");

    public static String format(Date date) {
        return format(date, false, f4165a);
    }

    public static String format(Date date, boolean z) {
        return format(date, z, f4165a);
    }

    public static String format(Date date, boolean z, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder((z ? 4 : 0) + 19 + (timeZone.getRawOffset() == 0 ? 1 : 6));
        a(sb, gregorianCalendar.get(1), 4);
        char c = '-';
        sb.append('-');
        a(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        a(sb, gregorianCalendar.get(5), 2);
        sb.append('T');
        a(sb, gregorianCalendar.get(11), 2);
        sb.append(':');
        a(sb, gregorianCalendar.get(12), 2);
        sb.append(':');
        a(sb, gregorianCalendar.get(13), 2);
        if (z) {
            sb.append('.');
            a(sb, gregorianCalendar.get(14), 3);
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i = offset / 60000;
            int abs = Math.abs(i / 60);
            int abs2 = Math.abs(i % 60);
            if (offset >= 0) {
                c = '+';
            }
            sb.append(c);
            a(sb, abs, 2);
            sb.append(':');
            a(sb, abs2, 2);
        } else {
            sb.append('Z');
        }
        return sb.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:48:0x00ca A[Catch:{ IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01aa }] */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x01a2 A[Catch:{ IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01aa }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.Date parse(java.lang.String r17, java.text.ParsePosition r18) throws java.text.ParseException {
        /*
            r1 = r17
            r2 = r18
            int r0 = r18.getIndex()     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            int r3 = r0 + 4
            int r0 = a((java.lang.String) r1, (int) r0, (int) r3)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r4 = 45
            boolean r5 = a((java.lang.String) r1, (int) r3, (char) r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            if (r5 == 0) goto L_0x0018
            int r3 = r3 + 1
        L_0x0018:
            int r5 = r3 + 2
            int r3 = a((java.lang.String) r1, (int) r3, (int) r5)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            boolean r6 = a((java.lang.String) r1, (int) r5, (char) r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            if (r6 == 0) goto L_0x0026
            int r5 = r5 + 1
        L_0x0026:
            int r6 = r5 + 2
            int r5 = a((java.lang.String) r1, (int) r5, (int) r6)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r7 = 84
            boolean r7 = a((java.lang.String) r1, (int) r6, (char) r7)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r8 = 1
            if (r7 != 0) goto L_0x0049
            int r9 = r17.length()     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            if (r9 > r6) goto L_0x0049
            java.util.GregorianCalendar r4 = new java.util.GregorianCalendar     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            int r3 = r3 - r8
            r4.<init>(r0, r3, r5)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r2.setIndex(r6)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.util.Date r0 = r4.getTime()     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            return r0
        L_0x0049:
            r9 = 43
            r10 = 90
            r12 = 2
            if (r7 == 0) goto L_0x00bf
            int r6 = r6 + 1
            int r7 = r6 + 2
            int r6 = a((java.lang.String) r1, (int) r6, (int) r7)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r13 = 58
            boolean r14 = a((java.lang.String) r1, (int) r7, (char) r13)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            if (r14 == 0) goto L_0x0062
            int r7 = r7 + 1
        L_0x0062:
            int r14 = r7 + 2
            int r7 = a((java.lang.String) r1, (int) r7, (int) r14)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            boolean r13 = a((java.lang.String) r1, (int) r14, (char) r13)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            if (r13 == 0) goto L_0x0070
            int r14 = r14 + 1
        L_0x0070:
            int r13 = r17.length()     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            if (r13 <= r14) goto L_0x00c2
            char r13 = r1.charAt(r14)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            if (r13 == r10) goto L_0x00c2
            if (r13 == r9) goto L_0x00c2
            if (r13 == r4) goto L_0x00c2
            int r13 = r14 + 2
            int r14 = a((java.lang.String) r1, (int) r14, (int) r13)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r15 = 59
            if (r14 <= r15) goto L_0x0090
            r15 = 63
            if (r14 >= r15) goto L_0x0090
            r14 = 59
        L_0x0090:
            r15 = 46
            boolean r15 = a((java.lang.String) r1, (int) r13, (char) r15)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            if (r15 == 0) goto L_0x00bc
            int r13 = r13 + 1
            int r15 = r13 + 1
            int r15 = a(r1, r15)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            int r11 = r13 + 3
            int r11 = java.lang.Math.min(r15, r11)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            int r16 = a((java.lang.String) r1, (int) r13, (int) r11)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            int r11 = r11 - r13
            if (r11 == r8) goto L_0x00b5
            if (r11 == r12) goto L_0x00b2
        L_0x00af:
            r11 = r16
            goto L_0x00b8
        L_0x00b2:
            int r16 = r16 * 10
            goto L_0x00af
        L_0x00b5:
            int r16 = r16 * 100
            goto L_0x00af
        L_0x00b8:
            r13 = r11
            r11 = r14
            r14 = r15
            goto L_0x00c4
        L_0x00bc:
            r11 = r14
            r14 = r13
            goto L_0x00c3
        L_0x00bf:
            r14 = r6
            r6 = 0
            r7 = 0
        L_0x00c2:
            r11 = 0
        L_0x00c3:
            r13 = 0
        L_0x00c4:
            int r15 = r17.length()     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            if (r15 <= r14) goto L_0x01a2
            char r15 = r1.charAt(r14)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r12 = 5
            if (r15 != r10) goto L_0x00d6
            java.util.TimeZone r4 = f4165a     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            int r14 = r14 + r8
            goto L_0x0171
        L_0x00d6:
            if (r15 == r9) goto L_0x00f4
            if (r15 != r4) goto L_0x00db
            goto L_0x00f4
        L_0x00db:
            java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.lang.String r4 = "Invalid time zone indicator '"
            r3.<init>(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r3.append(r15)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.lang.String r4 = "'"
            r3.append(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.lang.String r3 = r3.toString()     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r0.<init>(r3)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            throw r0     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
        L_0x00f4:
            java.lang.String r4 = r1.substring(r14)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            int r9 = r4.length()     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            if (r9 < r12) goto L_0x00ff
            goto L_0x0110
        L_0x00ff:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r9.<init>()     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r9.append(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.lang.String r4 = "00"
            r9.append(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.lang.String r4 = r9.toString()     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
        L_0x0110:
            int r9 = r4.length()     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            int r14 = r14 + r9
            java.lang.String r9 = "+0000"
            boolean r9 = r9.equals(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            if (r9 != 0) goto L_0x016f
            java.lang.String r9 = "+00:00"
            boolean r9 = r9.equals(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            if (r9 == 0) goto L_0x0126
            goto L_0x016f
        L_0x0126:
            java.lang.String r9 = "GMT"
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.lang.String r4 = r9.concat(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.util.TimeZone r9 = java.util.TimeZone.getTimeZone(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.lang.String r10 = r9.getID()     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            boolean r15 = r10.equals(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            if (r15 != 0) goto L_0x016d
            java.lang.String r15 = ":"
            java.lang.String r12 = ""
            java.lang.String r10 = r10.replace(r15, r12)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            boolean r10 = r10.equals(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            if (r10 == 0) goto L_0x014d
            goto L_0x016d
        L_0x014d:
            java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.lang.String r5 = "Mismatching time zone indicator: "
            r3.<init>(r5)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r3.append(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.lang.String r4 = " given, resolves to "
            r3.append(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.lang.String r4 = r9.getID()     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r3.append(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.lang.String r3 = r3.toString()     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r0.<init>(r3)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            throw r0     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
        L_0x016d:
            r4 = r9
            goto L_0x0171
        L_0x016f:
            java.util.TimeZone r4 = f4165a     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
        L_0x0171:
            java.util.GregorianCalendar r9 = new java.util.GregorianCalendar     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r9.<init>(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r4 = 0
            r9.setLenient(r4)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r9.set(r8, r0)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            int r3 = r3 - r8
            r0 = 2
            r9.set(r0, r3)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r0 = 5
            r9.set(r0, r5)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r0 = 11
            r9.set(r0, r6)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r0 = 12
            r9.set(r0, r7)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r0 = 13
            r9.set(r0, r11)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r0 = 14
            r9.set(r0, r13)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            r2.setIndex(r14)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.util.Date r0 = r9.getTime()     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            return r0
        L_0x01a2:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            java.lang.String r3 = "No time zone indicator"
            r0.<init>(r3)     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
            throw r0     // Catch:{ IndexOutOfBoundsException -> 0x01ae, NumberFormatException -> 0x01ac, IllegalArgumentException -> 0x01aa }
        L_0x01aa:
            r0 = move-exception
            goto L_0x01af
        L_0x01ac:
            r0 = move-exception
            goto L_0x01af
        L_0x01ae:
            r0 = move-exception
        L_0x01af:
            if (r1 != 0) goto L_0x01b3
            r1 = 0
            goto L_0x01c6
        L_0x01b3:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "\""
            r3.<init>(r4)
            r3.append(r1)
            r1 = 34
            r3.append(r1)
            java.lang.String r1 = r3.toString()
        L_0x01c6:
            java.lang.String r3 = r0.getMessage()
            if (r3 == 0) goto L_0x01d2
            boolean r4 = r3.isEmpty()
            if (r4 == 0) goto L_0x01ed
        L_0x01d2:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "("
            r3.<init>(r4)
            java.lang.Class r4 = r0.getClass()
            java.lang.String r4 = r4.getName()
            r3.append(r4)
            java.lang.String r4 = ")"
            r3.append(r4)
            java.lang.String r3 = r3.toString()
        L_0x01ed:
            java.text.ParseException r4 = new java.text.ParseException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "Failed to parse date ["
            r5.<init>(r6)
            r5.append(r1)
            java.lang.String r1 = "]: "
            r5.append(r1)
            r5.append(r3)
            java.lang.String r1 = r5.toString()
            int r2 = r18.getIndex()
            r4.<init>(r1, r2)
            r4.initCause(r0)
            goto L_0x0211
        L_0x0210:
            throw r4
        L_0x0211:
            goto L_0x0210
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.a.a.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private static boolean a(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    private static int a(String str, int i, int i2) throws NumberFormatException {
        int i3;
        int i4;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i4 = i + 1;
            int digit = Character.digit(str.charAt(i), 10);
            if (digit >= 0) {
                i3 = -digit;
            } else {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
        } else {
            i4 = i;
            i3 = 0;
        }
        while (i4 < i2) {
            int i5 = i4 + 1;
            int digit2 = Character.digit(str.charAt(i4), 10);
            if (digit2 >= 0) {
                i3 = (i3 * 10) - digit2;
                i4 = i5;
            } else {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
        }
        return -i3;
    }

    private static void a(StringBuilder sb, int i, int i2) {
        String num = Integer.toString(i);
        for (int length = i2 - num.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(num);
    }

    private static int a(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }
}
