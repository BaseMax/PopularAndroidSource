package h.k;

import h.f.b.j;
import h.j.o;
import kotlin.TypeCastException;

/* compiled from: StringsJVM.kt */
public class m extends l {
    public static /* synthetic */ String a(String str, String str2, String str3, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return a(str, str2, str3, z);
    }

    public static final boolean b(String str, String str2, boolean z) {
        boolean z2;
        if (str == null) {
            return str2 == null;
        }
        if (!z) {
            z2 = str.equals(str2);
        } else {
            z2 = str.equalsIgnoreCase(str2);
        }
        return z2;
    }

    public static final boolean c(String str, String str2, boolean z) {
        j.b(str, "$this$startsWith");
        j.b(str2, "prefix");
        if (!z) {
            return str.startsWith(str2);
        }
        return a(str, 0, str2, 0, str2.length(), z);
    }

    public static final String d(String str) {
        j.b(str, "$this$decapitalize");
        if (!(str.length() > 0) || !Character.isUpperCase(str.charAt(0))) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        String substring = str.substring(0, 1);
        j.a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        if (substring != null) {
            String lowerCase = substring.toLowerCase();
            j.a((Object) lowerCase, "(this as java.lang.String).toLowerCase()");
            sb.append(lowerCase);
            String substring2 = str.substring(1);
            j.a((Object) substring2, "(this as java.lang.String).substring(startIndex)");
            sb.append(substring2);
            return sb.toString();
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    public static final String a(String str, String str2, String str3, boolean z) {
        j.b(str, "$this$replace");
        j.b(str2, "oldValue");
        j.b(str3, "newValue");
        return o.a(n.b((CharSequence) str, new String[]{str2}, z, 0, 4, (Object) null), str3, null, null, 0, null, null, 62, null);
    }

    public static /* synthetic */ boolean a(String str, String str2, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            z = false;
        }
        return a(str, str2, i2, z);
    }

    public static /* synthetic */ boolean b(String str, String str2, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return c(str, str2, z);
    }

    public static final boolean a(String str, String str2, int i2, boolean z) {
        j.b(str, "$this$startsWith");
        j.b(str2, "prefix");
        if (!z) {
            return str.startsWith(str2, i2);
        }
        return a(str, i2, str2, 0, str2.length(), z);
    }

    public static /* synthetic */ boolean a(String str, String str2, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return a(str, str2, z);
    }

    public static final boolean a(String str, String str2, boolean z) {
        j.b(str, "$this$endsWith");
        j.b(str2, "suffix");
        if (!z) {
            return str.endsWith(str2);
        }
        return a(str, str.length() - str2.length(), str2, 0, str2.length(), true);
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final boolean a(java.lang.CharSequence r4) {
        /*
            java.lang.String r0 = "$this$isBlank"
            h.f.b.j.b(r4, r0)
            int r0 = r4.length()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L_0x003e
            h.h.d r0 = h.k.n.b(r4)
            boolean r3 = r0 instanceof java.util.Collection
            if (r3 == 0) goto L_0x0020
            r3 = r0
            java.util.Collection r3 = (java.util.Collection) r3
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto L_0x0020
        L_0x001e:
            r4 = 1
            goto L_0x003c
        L_0x0020:
            java.util.Iterator r0 = r0.iterator()
        L_0x0024:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L_0x001e
            r3 = r0
            h.a.w r3 = (h.a.w) r3
            int r3 = r3.nextInt()
            char r3 = r4.charAt(r3)
            boolean r3 = h.k.a.a((char) r3)
            if (r3 != 0) goto L_0x0024
            r4 = 0
        L_0x003c:
            if (r4 == 0) goto L_0x003f
        L_0x003e:
            r1 = 1
        L_0x003f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: h.k.m.a(java.lang.CharSequence):boolean");
    }

    public static final boolean a(String str, int i2, String str2, int i3, int i4, boolean z) {
        j.b(str, "$this$regionMatches");
        j.b(str2, "other");
        if (!z) {
            return str.regionMatches(i2, str2, i3, i4);
        }
        return str.regionMatches(z, i2, str2, i3, i4);
    }
}
