package c.e.d.b.a;

import c.e.d.d.c;
import c.e.d.x;
import java.util.BitSet;

/* compiled from: TypeAdapters */
class I extends x<BitSet> {
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002b, code lost:
        if (java.lang.Integer.parseInt(r1) != 0) goto L_0x0069;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0067, code lost:
        if (r8.E() != 0) goto L_0x0069;
     */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x006b  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x006e A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.BitSet a(c.e.d.d.b r8) {
        /*
            r7 = this;
            java.util.BitSet r0 = new java.util.BitSet
            r0.<init>()
            r8.s()
            com.google.gson.stream.JsonToken r1 = r8.K()
            r2 = 0
            r3 = 0
        L_0x000e:
            com.google.gson.stream.JsonToken r4 = com.google.gson.stream.JsonToken.END_ARRAY
            if (r1 == r4) goto L_0x0075
            int[] r4 = c.e.d.b.a.K.f11732a
            int r5 = r1.ordinal()
            r4 = r4[r5]
            r5 = 1
            if (r4 == r5) goto L_0x0063
            r6 = 2
            if (r4 == r6) goto L_0x005e
            r6 = 3
            if (r4 != r6) goto L_0x0047
            java.lang.String r1 = r8.I()
            int r1 = java.lang.Integer.parseInt(r1)     // Catch:{ NumberFormatException -> 0x0030 }
            if (r1 == 0) goto L_0x002e
            goto L_0x0069
        L_0x002e:
            r5 = 0
            goto L_0x0069
        L_0x0030:
            com.google.gson.JsonSyntaxException r8 = new com.google.gson.JsonSyntaxException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Error: Expecting: bitset number value (1, 0), Found: "
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r8.<init>((java.lang.String) r0)
            throw r8
        L_0x0047:
            com.google.gson.JsonSyntaxException r8 = new com.google.gson.JsonSyntaxException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Invalid bitset value type: "
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r8.<init>((java.lang.String) r0)
            throw r8
        L_0x005e:
            boolean r5 = r8.C()
            goto L_0x0069
        L_0x0063:
            int r1 = r8.E()
            if (r1 == 0) goto L_0x002e
        L_0x0069:
            if (r5 == 0) goto L_0x006e
            r0.set(r3)
        L_0x006e:
            int r3 = r3 + 1
            com.google.gson.stream.JsonToken r1 = r8.K()
            goto L_0x000e
        L_0x0075:
            r8.x()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.d.b.a.I.a(c.e.d.d.b):java.util.BitSet");
    }

    public void a(c cVar, BitSet bitSet) {
        cVar.u();
        int length = bitSet.length();
        for (int i2 = 0; i2 < length; i2++) {
            cVar.h(bitSet.get(i2) ? 1 : 0);
        }
        cVar.w();
    }
}
