package j;

import j.a.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: Cookie */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f15697a = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: b  reason: collision with root package name */
    public static final Pattern f15698b = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f15699c = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: d  reason: collision with root package name */
    public static final Pattern f15700d = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* renamed from: e  reason: collision with root package name */
    public final String f15701e;

    /* renamed from: f  reason: collision with root package name */
    public final String f15702f;

    /* renamed from: g  reason: collision with root package name */
    public final long f15703g;

    /* renamed from: h  reason: collision with root package name */
    public final String f15704h;

    /* renamed from: i  reason: collision with root package name */
    public final String f15705i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f15706j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f15707k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f15708l;
    public final boolean m;

    public r(String str, String str2, long j2, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f15701e = str;
        this.f15702f = str2;
        this.f15703g = j2;
        this.f15704h = str3;
        this.f15705i = str4;
        this.f15706j = z;
        this.f15707k = z2;
        this.m = z3;
        this.f15708l = z4;
    }

    public String a() {
        return this.f15701e;
    }

    public String b() {
        return this.f15702f;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        if (rVar.f15701e.equals(this.f15701e) && rVar.f15702f.equals(this.f15702f) && rVar.f15704h.equals(this.f15704h) && rVar.f15705i.equals(this.f15705i) && rVar.f15703g == this.f15703g && rVar.f15706j == this.f15706j && rVar.f15707k == this.f15707k && rVar.f15708l == this.f15708l && rVar.m == this.m) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        long j2 = this.f15703g;
        return ((((((((((((((((527 + this.f15701e.hashCode()) * 31) + this.f15702f.hashCode()) * 31) + this.f15704h.hashCode()) * 31) + this.f15705i.hashCode()) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.f15706j ^ true ? 1 : 0)) * 31) + (this.f15707k ^ true ? 1 : 0)) * 31) + (this.f15708l ^ true ? 1 : 0)) * 31) + (this.m ^ true ? 1 : 0);
    }

    public String toString() {
        return a(false);
    }

    public static boolean a(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        if (!str.endsWith(str2) || str.charAt((str.length() - str2.length()) - 1) != '.' || e.d(str)) {
            return false;
        }
        return true;
    }

    public static long b(String str) {
        long j2 = Long.MIN_VALUE;
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 0) {
                j2 = parseLong;
            }
            return j2;
        } catch (NumberFormatException e2) {
            if (str.matches("-?\\d+")) {
                if (!str.startsWith("-")) {
                    j2 = Long.MAX_VALUE;
                }
                return j2;
            }
            throw e2;
        }
    }

    public static r a(D d2, String str) {
        return a(System.currentTimeMillis(), d2, str);
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00f4  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00f7  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0131  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static j.r a(long r24, j.D r26, java.lang.String r27) {
        /*
            r0 = r27
            int r1 = r27.length()
            r2 = 59
            r3 = 0
            int r4 = j.a.e.a((java.lang.String) r0, (int) r3, (int) r1, (char) r2)
            r5 = 61
            int r6 = j.a.e.a((java.lang.String) r0, (int) r3, (int) r4, (char) r5)
            r7 = 0
            if (r6 != r4) goto L_0x0017
            return r7
        L_0x0017:
            java.lang.String r9 = j.a.e.d(r0, r3, r6)
            boolean r8 = r9.isEmpty()
            if (r8 != 0) goto L_0x0146
            int r8 = j.a.e.c(r9)
            r10 = -1
            if (r8 == r10) goto L_0x002a
            goto L_0x0146
        L_0x002a:
            r8 = 1
            int r6 = r6 + r8
            java.lang.String r6 = j.a.e.d(r0, r6, r4)
            int r11 = j.a.e.c(r6)
            if (r11 == r10) goto L_0x0037
            return r7
        L_0x0037:
            int r4 = r4 + r8
            r10 = -1
            r12 = 253402300799999(0xe677d21fdbff, double:1.251973714024093E-309)
            r8 = r7
            r19 = r8
            r14 = r10
            r21 = r12
            r17 = 0
            r18 = 0
            r20 = 1
            r23 = 0
        L_0x004d:
            if (r4 >= r1) goto L_0x00c1
            int r7 = j.a.e.a((java.lang.String) r0, (int) r4, (int) r1, (char) r2)
            int r2 = j.a.e.a((java.lang.String) r0, (int) r4, (int) r7, (char) r5)
            java.lang.String r4 = j.a.e.d(r0, r4, r2)
            if (r2 >= r7) goto L_0x0064
            int r2 = r2 + 1
            java.lang.String r2 = j.a.e.d(r0, r2, r7)
            goto L_0x0066
        L_0x0064:
            java.lang.String r2 = ""
        L_0x0066:
            java.lang.String r5 = "expires"
            boolean r5 = r4.equalsIgnoreCase(r5)
            if (r5 == 0) goto L_0x0079
            int r4 = r2.length()     // Catch:{ IllegalArgumentException -> 0x00b9 }
            long r4 = a((java.lang.String) r2, (int) r3, (int) r4)     // Catch:{ IllegalArgumentException -> 0x00b9 }
            r21 = r4
            goto L_0x0086
        L_0x0079:
            java.lang.String r5 = "max-age"
            boolean r5 = r4.equalsIgnoreCase(r5)
            if (r5 == 0) goto L_0x0089
            long r4 = b(r2)     // Catch:{  }
            r14 = r4
        L_0x0086:
            r23 = 1
            goto L_0x00b9
        L_0x0089:
            java.lang.String r5 = "domain"
            boolean r5 = r4.equalsIgnoreCase(r5)
            if (r5 == 0) goto L_0x0099
            java.lang.String r2 = a((java.lang.String) r2)     // Catch:{ IllegalArgumentException -> 0x00b9 }
            r8 = r2
            r20 = 0
            goto L_0x00b9
        L_0x0099:
            java.lang.String r5 = "path"
            boolean r5 = r4.equalsIgnoreCase(r5)
            if (r5 == 0) goto L_0x00a4
            r19 = r2
            goto L_0x00b9
        L_0x00a4:
            java.lang.String r2 = "secure"
            boolean r2 = r4.equalsIgnoreCase(r2)
            if (r2 == 0) goto L_0x00af
            r17 = 1
            goto L_0x00b9
        L_0x00af:
            java.lang.String r2 = "httponly"
            boolean r2 = r4.equalsIgnoreCase(r2)
            if (r2 == 0) goto L_0x00b9
            r18 = 1
        L_0x00b9:
            int r4 = r7 + 1
            r2 = 59
            r5 = 61
            r7 = 0
            goto L_0x004d
        L_0x00c1:
            r0 = -9223372036854775808
            int r2 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r2 != 0) goto L_0x00c9
        L_0x00c7:
            r11 = r0
            goto L_0x00ee
        L_0x00c9:
            int r0 = (r14 > r10 ? 1 : (r14 == r10 ? 0 : -1))
            if (r0 == 0) goto L_0x00ec
            r0 = 9223372036854775(0x20c49ba5e353f7, double:4.663754807431093E-308)
            int r2 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r2 > 0) goto L_0x00db
            r0 = 1000(0x3e8, double:4.94E-321)
            long r14 = r14 * r0
            goto L_0x00e0
        L_0x00db:
            r14 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
        L_0x00e0:
            long r0 = r24 + r14
            int r2 = (r0 > r24 ? 1 : (r0 == r24 ? 0 : -1))
            if (r2 < 0) goto L_0x00ea
            int r2 = (r0 > r12 ? 1 : (r0 == r12 ? 0 : -1))
            if (r2 <= 0) goto L_0x00c7
        L_0x00ea:
            r11 = r12
            goto L_0x00ee
        L_0x00ec:
            r11 = r21
        L_0x00ee:
            java.lang.String r0 = r26.g()
            if (r8 != 0) goto L_0x00f7
            r13 = r0
            r1 = 0
            goto L_0x0101
        L_0x00f7:
            boolean r1 = a((java.lang.String) r0, (java.lang.String) r8)
            if (r1 != 0) goto L_0x00ff
            r1 = 0
            return r1
        L_0x00ff:
            r1 = 0
            r13 = r8
        L_0x0101:
            int r0 = r0.length()
            int r2 = r13.length()
            if (r0 == r2) goto L_0x0116
            okhttp3.internal.publicsuffix.PublicSuffixDatabase r0 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.a()
            java.lang.String r0 = r0.a((java.lang.String) r13)
            if (r0 != 0) goto L_0x0116
            return r1
        L_0x0116:
            java.lang.String r0 = "/"
            r7 = r19
            if (r7 == 0) goto L_0x0125
            boolean r1 = r7.startsWith(r0)
            if (r1 != 0) goto L_0x0123
            goto L_0x0125
        L_0x0123:
            r14 = r7
            goto L_0x0136
        L_0x0125:
            java.lang.String r1 = r26.c()
            r2 = 47
            int r2 = r1.lastIndexOf(r2)
            if (r2 == 0) goto L_0x0135
            java.lang.String r0 = r1.substring(r3, r2)
        L_0x0135:
            r14 = r0
        L_0x0136:
            j.r r0 = new j.r
            r8 = r0
            r10 = r6
            r15 = r17
            r16 = r18
            r17 = r20
            r18 = r23
            r8.<init>(r9, r10, r11, r13, r14, r15, r16, r17, r18)
            return r0
        L_0x0146:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.r.a(long, j.D, java.lang.String):j.r");
    }

    public static long a(String str, int i2, int i3) {
        int a2 = a(str, i2, i3, false);
        Matcher matcher = f15700d.matcher(str);
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        while (a2 < i3) {
            int a3 = a(str, a2 + 1, i3, true);
            matcher.region(a2, a3);
            if (i5 == -1 && matcher.usePattern(f15700d).matches()) {
                int parseInt = Integer.parseInt(matcher.group(1));
                int parseInt2 = Integer.parseInt(matcher.group(2));
                i9 = Integer.parseInt(matcher.group(3));
                i8 = parseInt2;
                i5 = parseInt;
            } else if (i6 == -1 && matcher.usePattern(f15699c).matches()) {
                i6 = Integer.parseInt(matcher.group(1));
            } else if (i7 == -1 && matcher.usePattern(f15698b).matches()) {
                i7 = f15698b.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
            } else if (i4 == -1 && matcher.usePattern(f15697a).matches()) {
                i4 = Integer.parseInt(matcher.group(1));
            }
            a2 = a(str, a3 + 1, i3, false);
        }
        if (i4 >= 70 && i4 <= 99) {
            i4 += 1900;
        }
        if (i4 >= 0 && i4 <= 69) {
            i4 += 2000;
        }
        if (i4 < 1601) {
            throw new IllegalArgumentException();
        } else if (i7 == -1) {
            throw new IllegalArgumentException();
        } else if (i6 < 1 || i6 > 31) {
            throw new IllegalArgumentException();
        } else if (i5 < 0 || i5 > 23) {
            throw new IllegalArgumentException();
        } else if (i8 < 0 || i8 > 59) {
            throw new IllegalArgumentException();
        } else if (i9 < 0 || i9 > 59) {
            throw new IllegalArgumentException();
        } else {
            GregorianCalendar gregorianCalendar = new GregorianCalendar(e.p);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i4);
            gregorianCalendar.set(2, i7 - 1);
            gregorianCalendar.set(5, i6);
            gregorianCalendar.set(11, i5);
            gregorianCalendar.set(12, i8);
            gregorianCalendar.set(13, i9);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }
    }

    public static int a(String str, int i2, int i3, boolean z) {
        while (i2 < i3) {
            char charAt = str.charAt(i2);
            if (((charAt < ' ' && charAt != 9) || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z)) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static String a(String str) {
        if (!str.endsWith(".")) {
            if (str.startsWith(".")) {
                str = str.substring(1);
            }
            String a2 = e.a(str);
            if (a2 != null) {
                return a2;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }

    public static List<r> a(D d2, C c2) {
        List<String> c3 = c2.c("Set-Cookie");
        int size = c3.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            r a2 = a(d2, c3.get(i2));
            if (a2 != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(a2);
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.emptyList();
    }

    public String a(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f15701e);
        sb.append('=');
        sb.append(this.f15702f);
        if (this.f15708l) {
            if (this.f15703g == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(j.a.c.e.a(new Date(this.f15703g)));
            }
        }
        if (!this.m) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.f15704h);
        }
        sb.append("; path=");
        sb.append(this.f15705i);
        if (this.f15706j) {
            sb.append("; secure");
        }
        if (this.f15707k) {
            sb.append("; httponly");
        }
        return sb.toString();
    }
}
