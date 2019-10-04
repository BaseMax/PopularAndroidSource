package com.b.a;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.paho.a.a.w;

final class k implements p {

    /* renamed from: a  reason: collision with root package name */
    private final m f1972a;

    k(m mVar) {
        this.f1972a = mVar;
    }

    public final <T> String serialize(String str, T t) {
        String str2;
        char c;
        String str3;
        l.checkNullOrEmpty("Cipher text", str);
        l.checkNull("Value", t);
        String str4 = "";
        if (List.class.isAssignableFrom(t.getClass())) {
            List list = (List) t;
            str2 = !list.isEmpty() ? list.get(0).getClass().getName() : str4;
            c = '1';
        } else if (Map.class.isAssignableFrom(t.getClass())) {
            c = '2';
            Map map = (Map) t;
            if (!map.isEmpty()) {
                Iterator it = map.entrySet().iterator();
                if (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    String name = entry.getKey().getClass().getName();
                    str4 = entry.getValue().getClass().getName();
                    str2 = name;
                }
            }
            str2 = str4;
        } else if (Set.class.isAssignableFrom(t.getClass())) {
            Set set = (Set) t;
            if (!set.isEmpty()) {
                Iterator it2 = set.iterator();
                if (it2.hasNext()) {
                    str3 = it2.next().getClass().getName();
                    c = '3';
                }
            }
            str3 = str4;
            c = '3';
        } else {
            c = '0';
            str2 = t.getClass().getName();
        }
        return str2 + w.MULTI_LEVEL_WILDCARD + str4 + w.MULTI_LEVEL_WILDCARD + c + 'V' + '@' + str;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x006a  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0075  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.b.a.c deserialize(java.lang.String r9) {
        /*
            r8 = this;
            java.lang.String r0 = "#"
            java.lang.String[] r9 = r9.split(r0)
            r0 = 2
            r0 = r9[r0]
            r1 = 0
            char r0 = r0.charAt(r1)
            r1 = r9[r1]
            java.lang.String r2 = "HawkSerializer -> "
            r3 = 0
            if (r1 == 0) goto L_0x0036
            int r4 = r1.length()
            if (r4 == 0) goto L_0x0036
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch:{ ClassNotFoundException -> 0x0020 }
            goto L_0x0037
        L_0x0020:
            r1 = move-exception
            com.b.a.m r4 = r8.f1972a
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>(r2)
            java.lang.String r1 = r1.getMessage()
            r5.append(r1)
            java.lang.String r1 = r5.toString()
            r4.onLog(r1)
        L_0x0036:
            r1 = r3
        L_0x0037:
            r4 = 1
            r5 = r9[r4]
            if (r5 == 0) goto L_0x005d
            int r6 = r5.length()
            if (r6 == 0) goto L_0x005d
            java.lang.Class r3 = java.lang.Class.forName(r5)     // Catch:{ ClassNotFoundException -> 0x0047 }
            goto L_0x005d
        L_0x0047:
            r5 = move-exception
            com.b.a.m r6 = r8.f1972a
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r2)
            java.lang.String r2 = r5.getMessage()
            r7.append(r2)
            java.lang.String r2 = r7.toString()
            r6.onLog(r2)
        L_0x005d:
            int r2 = r9.length
            int r2 = r2 - r4
            r9 = r9[r2]
            r2 = 64
            int r2 = r9.indexOf(r2)
            r5 = -1
            if (r2 == r5) goto L_0x0075
            int r2 = r2 + r4
            java.lang.String r9 = r9.substring(r2)
            com.b.a.c r2 = new com.b.a.c
            r2.<init>(r0, r9, r1, r3)
            return r2
        L_0x0075:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Text should contain delimiter"
            r9.<init>(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.k.deserialize(java.lang.String):com.b.a.c");
    }
}
