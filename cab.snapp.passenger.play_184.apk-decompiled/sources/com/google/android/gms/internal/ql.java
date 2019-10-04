package com.google.android.gms.internal;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class ql<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b  reason: collision with root package name */
    private static final ql f3475b;

    /* renamed from: a  reason: collision with root package name */
    private boolean f3476a = true;

    static {
        ql qlVar = new ql();
        f3475b = qlVar;
        qlVar.f3476a = false;
    }

    private ql() {
    }

    private ql(Map<K, V> map) {
        super(map);
    }

    private static int a(Object obj) {
        if (obj instanceof byte[]) {
            return pu.hashCode((byte[]) obj);
        }
        if (!(obj instanceof pv)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    private final void a() {
        if (!this.f3476a) {
            throw new UnsupportedOperationException();
        }
    }

    public static <K, V> ql<K, V> zzcyp() {
        return f3475b;
    }

    public final void clear() {
        a();
        super.clear();
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ql.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int i = 0;
        for (Map.Entry entry : entrySet()) {
            i += a(entry.getValue()) ^ a(entry.getKey());
        }
        return i;
    }

    public final boolean isMutable() {
        return this.f3476a;
    }

    public final V put(K k, V v) {
        a();
        pu.a(k);
        pu.a(v);
        return super.put(k, v);
    }

    public final void putAll(Map<? extends K, ? extends V> map) {
        a();
        for (Object next : map.keySet()) {
            pu.a(next);
            pu.a(map.get(next));
        }
        super.putAll(map);
    }

    public final V remove(Object obj) {
        a();
        return super.remove(obj);
    }

    public final void zza(ql<K, V> qlVar) {
        a();
        if (!qlVar.isEmpty()) {
            putAll(qlVar);
        }
    }

    public final void zzbiy() {
        this.f3476a = false;
    }

    public final ql<K, V> zzcyq() {
        return isEmpty() ? new ql<>() : new ql<>(this);
    }
}
