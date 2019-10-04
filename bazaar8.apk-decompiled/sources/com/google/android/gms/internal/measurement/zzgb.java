package com.google.android.gms.internal.measurement;

import c.e.a.b.g.f.C0864qb;
import c.e.a.b.g.f.C0867rb;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class zzgb<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    public static final zzgb f13207a;
    public boolean zzabp = true;

    static {
        zzgb zzgb = new zzgb();
        f13207a = zzgb;
        zzgb.zzabp = false;
    }

    public zzgb() {
    }

    public static int b(Object obj) {
        if (obj instanceof byte[]) {
            return C0864qb.a((byte[]) obj);
        }
        if (!(obj instanceof C0867rb)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    public static <K, V> zzgb<K, V> c() {
        return f13207a;
    }

    public final void a(zzgb<K, V> zzgb) {
        e();
        if (!zzgb.isEmpty()) {
            putAll(zzgb);
        }
    }

    public final void clear() {
        e();
        super.clear();
    }

    public final zzgb<K, V> d() {
        return isEmpty() ? new zzgb<>() : new zzgb<>(this);
    }

    public final void e() {
        if (!this.zzabp) {
            throw new UnsupportedOperationException();
        }
    }

    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x005c A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof java.util.Map
            r1 = 0
            if (r0 == 0) goto L_0x005d
            java.util.Map r7 = (java.util.Map) r7
            r0 = 1
            if (r6 == r7) goto L_0x0059
            int r2 = r6.size()
            int r3 = r7.size()
            if (r2 == r3) goto L_0x0016
        L_0x0014:
            r7 = 0
            goto L_0x005a
        L_0x0016:
            java.util.Set r2 = r6.entrySet()
            java.util.Iterator r2 = r2.iterator()
        L_0x001e:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L_0x0059
            java.lang.Object r3 = r2.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r3.getKey()
            boolean r4 = r7.containsKey(r4)
            if (r4 != 0) goto L_0x0035
            goto L_0x0014
        L_0x0035:
            java.lang.Object r4 = r3.getValue()
            java.lang.Object r3 = r3.getKey()
            java.lang.Object r3 = r7.get(r3)
            boolean r5 = r4 instanceof byte[]
            if (r5 == 0) goto L_0x0052
            boolean r5 = r3 instanceof byte[]
            if (r5 == 0) goto L_0x0052
            byte[] r4 = (byte[]) r4
            byte[] r3 = (byte[]) r3
            boolean r3 = java.util.Arrays.equals(r4, r3)
            goto L_0x0056
        L_0x0052:
            boolean r3 = r4.equals(r3)
        L_0x0056:
            if (r3 != 0) goto L_0x001e
            goto L_0x0014
        L_0x0059:
            r7 = 1
        L_0x005a:
            if (r7 == 0) goto L_0x005d
            return r0
        L_0x005d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgb.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int i2 = 0;
        for (Map.Entry entry : entrySet()) {
            i2 += b(entry.getValue()) ^ b(entry.getKey());
        }
        return i2;
    }

    public final V put(K k2, V v) {
        e();
        C0864qb.a(k2);
        C0864qb.a(v);
        return super.put(k2, v);
    }

    public final void putAll(Map<? extends K, ? extends V> map) {
        e();
        for (Object next : map.keySet()) {
            C0864qb.a(next);
            C0864qb.a(map.get(next));
        }
        super.putAll(map);
    }

    public final V remove(Object obj) {
        e();
        return super.remove(obj);
    }

    public zzgb(Map<K, V> map) {
        super(map);
    }

    public final boolean a() {
        return this.zzabp;
    }

    public final void b() {
        this.zzabp = false;
    }
}
