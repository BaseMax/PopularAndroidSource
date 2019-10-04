package h.k;

import h.f.a.b;
import h.f.b.j;

/* compiled from: Indent.kt */
public class f {
    public static /* synthetic */ String a(String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str2 = "|";
        }
        return a(str, str2);
    }

    public static final String a(String str, String str2) {
        j.b(str, "$this$trimMargin");
        j.b(str2, "marginPrefix");
        return a(str, "", str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00bf, code lost:
        if (r15 != null) goto L_0x00c3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final java.lang.String a(java.lang.String r23, java.lang.String r24, java.lang.String r25) {
        /*
            java.lang.String r0 = "$this$replaceIndentByMargin"
            r1 = r23
            h.f.b.j.b(r1, r0)
            java.lang.String r0 = "newIndent"
            r2 = r24
            h.f.b.j.b(r2, r0)
            java.lang.String r0 = "marginPrefix"
            r7 = r25
            h.f.b.j.b(r7, r0)
            boolean r0 = h.k.m.a(r25)
            r9 = 0
            if (r0 != 0) goto L_0x001e
            r0 = 1
            goto L_0x001f
        L_0x001e:
            r0 = 0
        L_0x001f:
            if (r0 == 0) goto L_0x00f4
            java.util.List r0 = h.k.n.e(r23)
            int r1 = r23.length()
            int r3 = r24.length()
            int r4 = r0.size()
            int r3 = r3 * r4
            int r10 = r1 + r3
            h.f.a.b r11 = a(r24)
            int r12 = h.a.l.a(r0)
            java.util.ArrayList r13 = new java.util.ArrayList
            r13.<init>()
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
        L_0x0047:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L_0x00cf
            java.lang.Object r2 = r0.next()
            int r14 = r1 + 1
            r15 = 0
            if (r1 < 0) goto L_0x00cb
            r6 = r2
            java.lang.String r6 = (java.lang.String) r6
            if (r1 == 0) goto L_0x005d
            if (r1 != r12) goto L_0x0065
        L_0x005d:
            boolean r1 = h.k.m.a(r6)
            if (r1 == 0) goto L_0x0065
            goto L_0x00c3
        L_0x0065:
            int r1 = r6.length()
            r2 = 0
        L_0x006a:
            r3 = -1
            if (r2 >= r1) goto L_0x0081
            char r4 = r6.charAt(r2)
            boolean r4 = h.k.a.a((char) r4)
            if (r4 != 0) goto L_0x0079
            r4 = 1
            goto L_0x007a
        L_0x0079:
            r4 = 0
        L_0x007a:
            if (r4 == 0) goto L_0x007e
            r5 = r2
            goto L_0x0082
        L_0x007e:
            int r2 = r2 + 1
            goto L_0x006a
        L_0x0081:
            r5 = -1
        L_0x0082:
            if (r5 != r3) goto L_0x0086
            r8 = r6
            goto L_0x00b6
        L_0x0086:
            r4 = 0
            r16 = 4
            r17 = 0
            r1 = r6
            r2 = r25
            r3 = r5
            r18 = r5
            r5 = r16
            r8 = r6
            r6 = r17
            boolean r1 = h.k.m.a((java.lang.String) r1, (java.lang.String) r2, (int) r3, (boolean) r4, (int) r5, (java.lang.Object) r6)
            if (r1 == 0) goto L_0x00b6
            int r1 = r25.length()
            int r5 = r18 + r1
            if (r8 == 0) goto L_0x00ae
            java.lang.String r15 = r8.substring(r5)
            java.lang.String r1 = "(this as java.lang.String).substring(startIndex)"
            h.f.b.j.a((java.lang.Object) r15, (java.lang.String) r1)
            goto L_0x00b6
        L_0x00ae:
            kotlin.TypeCastException r0 = new kotlin.TypeCastException
            java.lang.String r1 = "null cannot be cast to non-null type java.lang.String"
            r0.<init>(r1)
            throw r0
        L_0x00b6:
            if (r15 == 0) goto L_0x00c2
            java.lang.Object r1 = r11.a(r15)
            r15 = r1
            java.lang.String r15 = (java.lang.String) r15
            if (r15 == 0) goto L_0x00c2
            goto L_0x00c3
        L_0x00c2:
            r15 = r8
        L_0x00c3:
            if (r15 == 0) goto L_0x00c8
            r13.add(r15)
        L_0x00c8:
            r1 = r14
            goto L_0x0047
        L_0x00cb:
            h.a.l.b()
            throw r15
        L_0x00cf:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r10)
            r16 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            r20 = 0
            r21 = 124(0x7c, float:1.74E-43)
            r22 = 0
            java.lang.String r15 = "\n"
            r14 = r0
            h.a.u.a(r13, r14, r15, r16, r17, r18, r19, r20, r21, r22)
            java.lang.StringBuilder r0 = (java.lang.StringBuilder) r0
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "mapIndexedNotNull { inde…\"\\n\")\n        .toString()"
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r1)
            return r0
        L_0x00f4:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "marginPrefix must be non-blank string."
            r0.<init>(r1)
            goto L_0x00fd
        L_0x00fc:
            throw r0
        L_0x00fd:
            goto L_0x00fc
        */
        throw new UnsupportedOperationException("Method not decompiled: h.k.f.a(java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }

    public static final b<String, String> a(String str) {
        if (str.length() == 0) {
            return StringsKt__IndentKt$getIndentFunction$1.f15793a;
        }
        return new StringsKt__IndentKt$getIndentFunction$2(str);
    }
}
