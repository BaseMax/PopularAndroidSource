package com.google.android.gms.internal;

import io.fabric.sdk.android.services.b.b;
import java.util.List;

final class qu {
    private static final String a(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append(b.ROLL_OVER_FILE_NAME_SEPARATOR);
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:62:0x018d, code lost:
        if (((java.lang.Boolean) r9).booleanValue() == false) goto L_0x018f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x019f, code lost:
        if (((java.lang.Integer) r9).intValue() == 0) goto L_0x018f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x01b0, code lost:
        if (((java.lang.Float) r9).floatValue() == 0.0f) goto L_0x018f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x01c2, code lost:
        if (((java.lang.Double) r9).doubleValue() == 0.0d) goto L_0x018f;
     */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x01f7  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x01f9  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void a(com.google.android.gms.internal.qr r13, java.lang.StringBuilder r14, int r15) {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.HashMap r1 = new java.util.HashMap
            r1.<init>()
            java.util.TreeSet r2 = new java.util.TreeSet
            r2.<init>()
            java.lang.Class r3 = r13.getClass()
            java.lang.reflect.Method[] r3 = r3.getDeclaredMethods()
            int r4 = r3.length
            r5 = 0
            r6 = 0
        L_0x001a:
            java.lang.String r7 = "get"
            if (r6 >= r4) goto L_0x0049
            r8 = r3[r6]
            java.lang.String r9 = r8.getName()
            r1.put(r9, r8)
            java.lang.Class[] r9 = r8.getParameterTypes()
            int r9 = r9.length
            if (r9 != 0) goto L_0x0046
            java.lang.String r9 = r8.getName()
            r0.put(r9, r8)
            java.lang.String r9 = r8.getName()
            boolean r7 = r9.startsWith(r7)
            if (r7 == 0) goto L_0x0046
            java.lang.String r7 = r8.getName()
            r2.add(r7)
        L_0x0046:
            int r6 = r6 + 1
            goto L_0x001a
        L_0x0049:
            java.util.Iterator r2 = r2.iterator()
        L_0x004d:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L_0x0212
            java.lang.Object r3 = r2.next()
            java.lang.String r3 = (java.lang.String) r3
            java.lang.String r4 = ""
            java.lang.String r3 = r3.replaceFirst(r7, r4)
            java.lang.String r6 = "List"
            boolean r6 = r3.endsWith(r6)
            r8 = 1
            if (r6 == 0) goto L_0x00d2
            java.lang.String r6 = "OrBuilderList"
            boolean r6 = r3.endsWith(r6)
            if (r6 != 0) goto L_0x00d2
            java.lang.String r6 = r3.substring(r5, r8)
            java.lang.String r6 = r6.toLowerCase()
            java.lang.String r6 = java.lang.String.valueOf(r6)
            int r9 = r3.length()
            int r9 = r9 + -4
            java.lang.String r9 = r3.substring(r8, r9)
            java.lang.String r9 = java.lang.String.valueOf(r9)
            int r10 = r9.length()
            if (r10 == 0) goto L_0x0095
            java.lang.String r6 = r6.concat(r9)
            goto L_0x009b
        L_0x0095:
            java.lang.String r9 = new java.lang.String
            r9.<init>(r6)
            r6 = r9
        L_0x009b:
            java.lang.String r9 = java.lang.String.valueOf(r3)
            int r10 = r9.length()
            if (r10 == 0) goto L_0x00aa
            java.lang.String r9 = r7.concat(r9)
            goto L_0x00af
        L_0x00aa:
            java.lang.String r9 = new java.lang.String
            r9.<init>(r7)
        L_0x00af:
            java.lang.Object r9 = r0.get(r9)
            java.lang.reflect.Method r9 = (java.lang.reflect.Method) r9
            if (r9 == 0) goto L_0x00d2
            java.lang.Class r10 = r9.getReturnType()
            java.lang.Class<java.util.List> r11 = java.util.List.class
            boolean r10 = r10.equals(r11)
            if (r10 == 0) goto L_0x00d2
            java.lang.String r3 = a(r6)
            java.lang.Object[] r4 = new java.lang.Object[r5]
            java.lang.Object r4 = com.google.android.gms.internal.ps.a(r9, r13, r4)
            a(r14, r15, r3, r4)
            goto L_0x004d
        L_0x00d2:
            java.lang.String r6 = "set"
            java.lang.String r9 = java.lang.String.valueOf(r3)
            int r10 = r9.length()
            if (r10 == 0) goto L_0x00e3
            java.lang.String r6 = r6.concat(r9)
            goto L_0x00e9
        L_0x00e3:
            java.lang.String r9 = new java.lang.String
            r9.<init>(r6)
            r6 = r9
        L_0x00e9:
            java.lang.Object r6 = r1.get(r6)
            java.lang.reflect.Method r6 = (java.lang.reflect.Method) r6
            if (r6 == 0) goto L_0x004d
            java.lang.String r6 = "Bytes"
            boolean r6 = r3.endsWith(r6)
            if (r6 == 0) goto L_0x011d
            int r6 = r3.length()
            int r6 = r6 + -5
            java.lang.String r6 = r3.substring(r5, r6)
            java.lang.String r6 = java.lang.String.valueOf(r6)
            int r9 = r6.length()
            if (r9 == 0) goto L_0x0112
            java.lang.String r6 = r7.concat(r6)
            goto L_0x0117
        L_0x0112:
            java.lang.String r6 = new java.lang.String
            r6.<init>(r7)
        L_0x0117:
            boolean r6 = r0.containsKey(r6)
            if (r6 != 0) goto L_0x004d
        L_0x011d:
            java.lang.String r6 = r3.substring(r5, r8)
            java.lang.String r6 = r6.toLowerCase()
            java.lang.String r6 = java.lang.String.valueOf(r6)
            java.lang.String r9 = r3.substring(r8)
            java.lang.String r9 = java.lang.String.valueOf(r9)
            int r10 = r9.length()
            if (r10 == 0) goto L_0x013c
            java.lang.String r6 = r6.concat(r9)
            goto L_0x0142
        L_0x013c:
            java.lang.String r9 = new java.lang.String
            r9.<init>(r6)
            r6 = r9
        L_0x0142:
            java.lang.String r9 = java.lang.String.valueOf(r3)
            int r10 = r9.length()
            if (r10 == 0) goto L_0x0151
            java.lang.String r9 = r7.concat(r9)
            goto L_0x0156
        L_0x0151:
            java.lang.String r9 = new java.lang.String
            r9.<init>(r7)
        L_0x0156:
            java.lang.Object r9 = r0.get(r9)
            java.lang.reflect.Method r9 = (java.lang.reflect.Method) r9
            java.lang.String r10 = "has"
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r11 = r3.length()
            if (r11 == 0) goto L_0x016d
            java.lang.String r3 = r10.concat(r3)
            goto L_0x0172
        L_0x016d:
            java.lang.String r3 = new java.lang.String
            r3.<init>(r10)
        L_0x0172:
            java.lang.Object r3 = r0.get(r3)
            java.lang.reflect.Method r3 = (java.lang.reflect.Method) r3
            if (r9 == 0) goto L_0x004d
            java.lang.Object[] r10 = new java.lang.Object[r5]
            java.lang.Object r9 = com.google.android.gms.internal.ps.a(r9, r13, r10)
            if (r3 != 0) goto L_0x01fb
            boolean r3 = r9 instanceof java.lang.Boolean
            if (r3 == 0) goto L_0x0194
            r3 = r9
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            if (r3 != 0) goto L_0x0192
        L_0x018f:
            r3 = 1
            goto L_0x01f5
        L_0x0192:
            r3 = 0
            goto L_0x01f5
        L_0x0194:
            boolean r3 = r9 instanceof java.lang.Integer
            if (r3 == 0) goto L_0x01a2
            r3 = r9
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            if (r3 != 0) goto L_0x0192
            goto L_0x018f
        L_0x01a2:
            boolean r3 = r9 instanceof java.lang.Float
            if (r3 == 0) goto L_0x01b3
            r3 = r9
            java.lang.Float r3 = (java.lang.Float) r3
            float r3 = r3.floatValue()
            r4 = 0
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 != 0) goto L_0x0192
            goto L_0x018f
        L_0x01b3:
            boolean r3 = r9 instanceof java.lang.Double
            if (r3 == 0) goto L_0x01c5
            r3 = r9
            java.lang.Double r3 = (java.lang.Double) r3
            double r3 = r3.doubleValue()
            r10 = 0
            int r12 = (r3 > r10 ? 1 : (r3 == r10 ? 0 : -1))
            if (r12 != 0) goto L_0x0192
            goto L_0x018f
        L_0x01c5:
            boolean r3 = r9 instanceof java.lang.String
            if (r3 == 0) goto L_0x01ce
            boolean r3 = r9.equals(r4)
            goto L_0x01f5
        L_0x01ce:
            boolean r3 = r9 instanceof com.google.android.gms.internal.ou
            if (r3 == 0) goto L_0x01d9
            com.google.android.gms.internal.ou r3 = com.google.android.gms.internal.ou.zzpfg
            boolean r3 = r9.equals(r3)
            goto L_0x01f5
        L_0x01d9:
            boolean r3 = r9 instanceof com.google.android.gms.internal.qr
            if (r3 == 0) goto L_0x01e7
            r3 = r9
            com.google.android.gms.internal.qr r3 = (com.google.android.gms.internal.qr) r3
            com.google.android.gms.internal.qr r3 = r3.zzcxq()
            if (r9 != r3) goto L_0x0192
            goto L_0x018f
        L_0x01e7:
            boolean r3 = r9 instanceof java.lang.Enum
            if (r3 == 0) goto L_0x0192
            r3 = r9
            java.lang.Enum r3 = (java.lang.Enum) r3
            int r3 = r3.ordinal()
            if (r3 != 0) goto L_0x0192
            goto L_0x018f
        L_0x01f5:
            if (r3 != 0) goto L_0x01f9
            r3 = 1
            goto L_0x0207
        L_0x01f9:
            r3 = 0
            goto L_0x0207
        L_0x01fb:
            java.lang.Object[] r4 = new java.lang.Object[r5]
            java.lang.Object r3 = com.google.android.gms.internal.ps.a(r3, r13, r4)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
        L_0x0207:
            if (r3 == 0) goto L_0x004d
            java.lang.String r3 = a(r6)
            a(r14, r15, r3, r9)
            goto L_0x004d
        L_0x0212:
            boolean r0 = r13 instanceof com.google.android.gms.internal.ps.c
            if (r0 == 0) goto L_0x0235
            r0 = r13
            com.google.android.gms.internal.ps$c r0 = (com.google.android.gms.internal.ps.c) r0
            com.google.android.gms.internal.po<java.lang.Object> r0 = r0.d
            java.util.Iterator r0 = r0.iterator()
            boolean r1 = r0.hasNext()
            if (r1 != 0) goto L_0x0226
            goto L_0x0235
        L_0x0226:
            java.lang.Object r13 = r0.next()
            java.util.Map$Entry r13 = (java.util.Map.Entry) r13
            r13.getKey()
            java.lang.NoSuchMethodError r13 = new java.lang.NoSuchMethodError
            r13.<init>()
            throw r13
        L_0x0235:
            com.google.android.gms.internal.ps r13 = (com.google.android.gms.internal.ps) r13
            com.google.android.gms.internal.rv r0 = r13.f3451b
            if (r0 == 0) goto L_0x0240
            com.google.android.gms.internal.rv r13 = r13.f3451b
            r13.a((java.lang.StringBuilder) r14, (int) r15)
        L_0x0240:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.qu.a(com.google.android.gms.internal.qr, java.lang.StringBuilder, int):void");
    }

    static final void a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object a2 : (List) obj) {
                a(sb, i, str, a2);
            }
            return;
        }
        sb.append(10);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(rq.a(ou.zztr((String) obj)));
            sb.append('\"');
        } else if (obj instanceof ou) {
            sb.append(": \"");
            sb.append(rq.a((ou) obj));
            sb.append('\"');
        } else if (obj instanceof ps) {
            sb.append(" {");
            a((ps) obj, sb, i + 2);
            sb.append("\n");
            for (int i3 = 0; i3 < i; i3++) {
                sb.append(' ');
            }
            sb.append("}");
        } else {
            sb.append(": ");
            sb.append(obj.toString());
        }
    }
}
