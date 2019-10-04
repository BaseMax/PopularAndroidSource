package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzdp;
import e.a.a.a.a.d.c;
import java.util.List;
import java.util.Map;

public final class Vb {
    public static String a(Sb sb, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        a(sb, sb2, 0);
        return sb2.toString();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:77:0x01f2, code lost:
        if (((java.lang.Boolean) r11).booleanValue() == false) goto L_0x01f4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0204, code lost:
        if (((java.lang.Integer) r11).intValue() == 0) goto L_0x01f4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x0215, code lost:
        if (((java.lang.Float) r11).floatValue() == 0.0f) goto L_0x01f4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x0227, code lost:
        if (((java.lang.Double) r11).doubleValue() == 0.0d) goto L_0x01f4;
     */
    /* JADX WARNING: Removed duplicated region for block: B:107:0x025d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(c.e.a.b.g.f.Sb r18, java.lang.StringBuilder r19, int r20) {
        /*
            r0 = r18
            r1 = r19
            r2 = r20
            java.util.HashMap r3 = new java.util.HashMap
            r3.<init>()
            java.util.HashMap r4 = new java.util.HashMap
            r4.<init>()
            java.util.TreeSet r5 = new java.util.TreeSet
            r5.<init>()
            java.lang.Class r6 = r18.getClass()
            java.lang.reflect.Method[] r6 = r6.getDeclaredMethods()
            int r7 = r6.length
            r8 = 0
            r9 = 0
        L_0x0020:
            java.lang.String r10 = "get"
            if (r9 >= r7) goto L_0x004f
            r11 = r6[r9]
            java.lang.String r12 = r11.getName()
            r4.put(r12, r11)
            java.lang.Class[] r12 = r11.getParameterTypes()
            int r12 = r12.length
            if (r12 != 0) goto L_0x004c
            java.lang.String r12 = r11.getName()
            r3.put(r12, r11)
            java.lang.String r12 = r11.getName()
            boolean r10 = r12.startsWith(r10)
            if (r10 == 0) goto L_0x004c
            java.lang.String r10 = r11.getName()
            r5.add(r10)
        L_0x004c:
            int r9 = r9 + 1
            goto L_0x0020
        L_0x004f:
            java.util.Iterator r5 = r5.iterator()
        L_0x0053:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L_0x0277
            java.lang.Object r6 = r5.next()
            java.lang.String r6 = (java.lang.String) r6
            java.lang.String r7 = ""
            java.lang.String r9 = r6.replaceFirst(r10, r7)
            java.lang.String r11 = "List"
            boolean r12 = r9.endsWith(r11)
            r13 = 1
            if (r12 == 0) goto L_0x00c9
            java.lang.String r12 = "OrBuilderList"
            boolean r12 = r9.endsWith(r12)
            if (r12 != 0) goto L_0x00c9
            boolean r11 = r9.equals(r11)
            if (r11 != 0) goto L_0x00c9
            java.lang.String r11 = r9.substring(r8, r13)
            java.lang.String r11 = r11.toLowerCase()
            java.lang.String r11 = java.lang.String.valueOf(r11)
            int r12 = r9.length()
            int r12 = r12 + -4
            java.lang.String r12 = r9.substring(r13, r12)
            java.lang.String r12 = java.lang.String.valueOf(r12)
            int r14 = r12.length()
            if (r14 == 0) goto L_0x00a1
            java.lang.String r11 = r11.concat(r12)
            goto L_0x00a7
        L_0x00a1:
            java.lang.String r12 = new java.lang.String
            r12.<init>(r11)
            r11 = r12
        L_0x00a7:
            java.lang.Object r12 = r3.get(r6)
            java.lang.reflect.Method r12 = (java.lang.reflect.Method) r12
            if (r12 == 0) goto L_0x00c9
            java.lang.Class r14 = r12.getReturnType()
            java.lang.Class<java.util.List> r15 = java.util.List.class
            boolean r14 = r14.equals(r15)
            if (r14 == 0) goto L_0x00c9
            java.lang.String r6 = a(r11)
            java.lang.Object[] r7 = new java.lang.Object[r8]
            java.lang.Object r7 = c.e.a.b.g.f.C0852nb.a((java.lang.reflect.Method) r12, (java.lang.Object) r0, (java.lang.Object[]) r7)
            a(r1, r2, r6, r7)
            goto L_0x0053
        L_0x00c9:
            java.lang.String r11 = "Map"
            boolean r12 = r9.endsWith(r11)
            if (r12 == 0) goto L_0x0137
            boolean r11 = r9.equals(r11)
            if (r11 != 0) goto L_0x0137
            java.lang.String r11 = r9.substring(r8, r13)
            java.lang.String r11 = r11.toLowerCase()
            java.lang.String r11 = java.lang.String.valueOf(r11)
            int r12 = r9.length()
            int r12 = r12 + -3
            java.lang.String r12 = r9.substring(r13, r12)
            java.lang.String r12 = java.lang.String.valueOf(r12)
            int r14 = r12.length()
            if (r14 == 0) goto L_0x00fc
            java.lang.String r11 = r11.concat(r12)
            goto L_0x0102
        L_0x00fc:
            java.lang.String r12 = new java.lang.String
            r12.<init>(r11)
            r11 = r12
        L_0x0102:
            java.lang.Object r6 = r3.get(r6)
            java.lang.reflect.Method r6 = (java.lang.reflect.Method) r6
            if (r6 == 0) goto L_0x0137
            java.lang.Class r12 = r6.getReturnType()
            java.lang.Class<java.util.Map> r14 = java.util.Map.class
            boolean r12 = r12.equals(r14)
            if (r12 == 0) goto L_0x0137
            java.lang.Class<java.lang.Deprecated> r12 = java.lang.Deprecated.class
            boolean r12 = r6.isAnnotationPresent(r12)
            if (r12 != 0) goto L_0x0137
            int r12 = r6.getModifiers()
            boolean r12 = java.lang.reflect.Modifier.isPublic(r12)
            if (r12 == 0) goto L_0x0137
            java.lang.String r7 = a(r11)
            java.lang.Object[] r9 = new java.lang.Object[r8]
            java.lang.Object r6 = c.e.a.b.g.f.C0852nb.a((java.lang.reflect.Method) r6, (java.lang.Object) r0, (java.lang.Object[]) r9)
            a(r1, r2, r7, r6)
            goto L_0x0053
        L_0x0137:
            java.lang.String r6 = "set"
            java.lang.String r11 = java.lang.String.valueOf(r9)
            int r12 = r11.length()
            if (r12 == 0) goto L_0x0148
            java.lang.String r6 = r6.concat(r11)
            goto L_0x014e
        L_0x0148:
            java.lang.String r11 = new java.lang.String
            r11.<init>(r6)
            r6 = r11
        L_0x014e:
            java.lang.Object r6 = r4.get(r6)
            java.lang.reflect.Method r6 = (java.lang.reflect.Method) r6
            if (r6 == 0) goto L_0x0053
            java.lang.String r6 = "Bytes"
            boolean r6 = r9.endsWith(r6)
            if (r6 == 0) goto L_0x0182
            int r6 = r9.length()
            int r6 = r6 + -5
            java.lang.String r6 = r9.substring(r8, r6)
            java.lang.String r6 = java.lang.String.valueOf(r6)
            int r11 = r6.length()
            if (r11 == 0) goto L_0x0177
            java.lang.String r6 = r10.concat(r6)
            goto L_0x017c
        L_0x0177:
            java.lang.String r6 = new java.lang.String
            r6.<init>(r10)
        L_0x017c:
            boolean r6 = r3.containsKey(r6)
            if (r6 != 0) goto L_0x0053
        L_0x0182:
            java.lang.String r6 = r9.substring(r8, r13)
            java.lang.String r6 = r6.toLowerCase()
            java.lang.String r6 = java.lang.String.valueOf(r6)
            java.lang.String r11 = r9.substring(r13)
            java.lang.String r11 = java.lang.String.valueOf(r11)
            int r12 = r11.length()
            if (r12 == 0) goto L_0x01a1
            java.lang.String r6 = r6.concat(r11)
            goto L_0x01a7
        L_0x01a1:
            java.lang.String r11 = new java.lang.String
            r11.<init>(r6)
            r6 = r11
        L_0x01a7:
            java.lang.String r11 = java.lang.String.valueOf(r9)
            int r12 = r11.length()
            if (r12 == 0) goto L_0x01b6
            java.lang.String r11 = r10.concat(r11)
            goto L_0x01bb
        L_0x01b6:
            java.lang.String r11 = new java.lang.String
            r11.<init>(r10)
        L_0x01bb:
            java.lang.Object r11 = r3.get(r11)
            java.lang.reflect.Method r11 = (java.lang.reflect.Method) r11
            java.lang.String r12 = "has"
            java.lang.String r9 = java.lang.String.valueOf(r9)
            int r14 = r9.length()
            if (r14 == 0) goto L_0x01d2
            java.lang.String r9 = r12.concat(r9)
            goto L_0x01d7
        L_0x01d2:
            java.lang.String r9 = new java.lang.String
            r9.<init>(r12)
        L_0x01d7:
            java.lang.Object r9 = r3.get(r9)
            java.lang.reflect.Method r9 = (java.lang.reflect.Method) r9
            if (r11 == 0) goto L_0x0053
            java.lang.Object[] r12 = new java.lang.Object[r8]
            java.lang.Object r11 = c.e.a.b.g.f.C0852nb.a((java.lang.reflect.Method) r11, (java.lang.Object) r0, (java.lang.Object[]) r12)
            if (r9 != 0) goto L_0x025f
            boolean r9 = r11 instanceof java.lang.Boolean
            if (r9 == 0) goto L_0x01f9
            r7 = r11
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 != 0) goto L_0x01f7
        L_0x01f4:
            r7 = 1
            goto L_0x025a
        L_0x01f7:
            r7 = 0
            goto L_0x025a
        L_0x01f9:
            boolean r9 = r11 instanceof java.lang.Integer
            if (r9 == 0) goto L_0x0207
            r7 = r11
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            if (r7 != 0) goto L_0x01f7
            goto L_0x01f4
        L_0x0207:
            boolean r9 = r11 instanceof java.lang.Float
            if (r9 == 0) goto L_0x0218
            r7 = r11
            java.lang.Float r7 = (java.lang.Float) r7
            float r7 = r7.floatValue()
            r9 = 0
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 != 0) goto L_0x01f7
            goto L_0x01f4
        L_0x0218:
            boolean r9 = r11 instanceof java.lang.Double
            if (r9 == 0) goto L_0x022a
            r7 = r11
            java.lang.Double r7 = (java.lang.Double) r7
            double r14 = r7.doubleValue()
            r16 = 0
            int r7 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r7 != 0) goto L_0x01f7
            goto L_0x01f4
        L_0x022a:
            boolean r9 = r11 instanceof java.lang.String
            if (r9 == 0) goto L_0x0233
            boolean r7 = r11.equals(r7)
            goto L_0x025a
        L_0x0233:
            boolean r7 = r11 instanceof com.google.android.gms.internal.measurement.zzdp
            if (r7 == 0) goto L_0x023e
            com.google.android.gms.internal.measurement.zzdp r7 = com.google.android.gms.internal.measurement.zzdp.f13171a
            boolean r7 = r11.equals(r7)
            goto L_0x025a
        L_0x023e:
            boolean r7 = r11 instanceof c.e.a.b.g.f.Sb
            if (r7 == 0) goto L_0x024c
            r7 = r11
            c.e.a.b.g.f.Sb r7 = (c.e.a.b.g.f.Sb) r7
            c.e.a.b.g.f.Sb r7 = r7.a()
            if (r11 != r7) goto L_0x01f7
            goto L_0x01f4
        L_0x024c:
            boolean r7 = r11 instanceof java.lang.Enum
            if (r7 == 0) goto L_0x01f7
            r7 = r11
            java.lang.Enum r7 = (java.lang.Enum) r7
            int r7 = r7.ordinal()
            if (r7 != 0) goto L_0x01f7
            goto L_0x01f4
        L_0x025a:
            if (r7 != 0) goto L_0x025d
            goto L_0x026c
        L_0x025d:
            r13 = 0
            goto L_0x026c
        L_0x025f:
            java.lang.Object[] r7 = new java.lang.Object[r8]
            java.lang.Object r7 = c.e.a.b.g.f.C0852nb.a((java.lang.reflect.Method) r9, (java.lang.Object) r0, (java.lang.Object[]) r7)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            r13 = r7
        L_0x026c:
            if (r13 == 0) goto L_0x0053
            java.lang.String r6 = a(r6)
            a(r1, r2, r6, r11)
            goto L_0x0053
        L_0x0277:
            boolean r3 = r0 instanceof c.e.a.b.g.f.C0852nb.c
            if (r3 == 0) goto L_0x029a
            r3 = r0
            c.e.a.b.g.f.nb$c r3 = (c.e.a.b.g.f.C0852nb.c) r3
            c.e.a.b.g.f.gb<java.lang.Object> r3 = r3.zzagt
            java.util.Iterator r3 = r3.e()
            boolean r4 = r3.hasNext()
            if (r4 != 0) goto L_0x028b
            goto L_0x029a
        L_0x028b:
            java.lang.Object r0 = r3.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r0.getKey()
            java.lang.NoSuchMethodError r0 = new java.lang.NoSuchMethodError
            r0.<init>()
            throw r0
        L_0x029a:
            c.e.a.b.g.f.nb r0 = (c.e.a.b.g.f.C0852nb) r0
            c.e.a.b.g.f.Ac r0 = r0.zzagn
            if (r0 == 0) goto L_0x02a3
            r0.a((java.lang.StringBuilder) r1, (int) r2)
        L_0x02a3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Vb.a(c.e.a.b.g.f.Sb, java.lang.StringBuilder, int):void");
    }

    public static final void a(StringBuilder sb, int i2, String str, Object obj) {
        if (obj instanceof List) {
            for (Object a2 : (List) obj) {
                a(sb, i2, str, a2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry a3 : ((Map) obj).entrySet()) {
                a(sb, i2, str, a3);
            }
        } else {
            sb.append(10);
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(C0888wc.a(zzdp.a((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzdp) {
                sb.append(": \"");
                sb.append(C0888wc.a((zzdp) obj));
                sb.append('\"');
            } else if (obj instanceof C0852nb) {
                sb.append(" {");
                a((C0852nb) obj, sb, i2 + 2);
                sb.append("\n");
                while (i3 < i2) {
                    sb.append(' ');
                    i3++;
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry = (Map.Entry) obj;
                int i5 = i2 + 2;
                a(sb, i5, "key", entry.getKey());
                a(sb, i5, "value", entry.getValue());
                sb.append("\n");
                while (i3 < i2) {
                    sb.append(' ');
                    i3++;
                }
                sb.append("}");
            } else {
                sb.append(": ");
                sb.append(obj.toString());
            }
        }
    }

    public static final String a(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (Character.isUpperCase(charAt)) {
                sb.append(c.ROLL_OVER_FILE_NAME_SEPARATOR);
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }
}
