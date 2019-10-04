package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class bk {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, String> f3090a;

    /* renamed from: b  reason: collision with root package name */
    private final List<zzaqx> f3091b;
    private final long c;
    private final long d;
    private final int e;
    private final boolean f;
    private final String g;

    public bk(w wVar, Map<String, String> map, long j, boolean z) {
        this(wVar, map, j, z, 0, 0, null);
    }

    public bk(w wVar, Map<String, String> map, long j, boolean z, long j2, int i) {
        this(wVar, map, j, z, j2, i, null);
    }

    public bk(w wVar, Map<String, String> map, long j, boolean z, long j2, int i, List<zzaqx> list) {
        ap.checkNotNull(wVar);
        ap.checkNotNull(map);
        this.d = j;
        this.f = z;
        this.c = j2;
        this.e = i;
        this.f3091b = list != null ? list : Collections.emptyList();
        this.g = a(list);
        HashMap hashMap = new HashMap();
        for (Map.Entry next : map.entrySet()) {
            if (a(next.getKey())) {
                String a2 = a(wVar, next.getKey());
                if (a2 != null) {
                    hashMap.put(a2, b(wVar, next.getValue()));
                }
            }
        }
        for (Map.Entry next2 : map.entrySet()) {
            if (!a(next2.getKey())) {
                String a3 = a(wVar, next2.getKey());
                if (a3 != null) {
                    hashMap.put(a3, b(wVar, next2.getValue()));
                }
            }
        }
        if (!TextUtils.isEmpty(this.g)) {
            ce.zzb((Map<String, String>) hashMap, "_v", this.g);
            if (this.g.equals("ma4.0.0") || this.g.equals("ma4.0.1")) {
                hashMap.remove("adid");
            }
        }
        this.f3090a = Collections.unmodifiableMap(hashMap);
    }

    private static String a(w wVar, Object obj) {
        if (obj == null) {
            return null;
        }
        String obj2 = obj.toString();
        if (obj2.startsWith("&")) {
            obj2 = obj2.substring(1);
        }
        int length = obj2.length();
        if (length > 256) {
            obj2 = obj2.substring(0, 256);
            wVar.zzc("Hit param name is too long and will be trimmed", Integer.valueOf(length), obj2);
        }
        if (TextUtils.isEmpty(obj2)) {
            return null;
        }
        return obj2;
    }

    private final String a(String str, String str2) {
        ap.zzgm(str);
        ap.checkArgument(!str.startsWith("&"), "Short param name required");
        String str3 = this.f3090a.get(str);
        return str3 != null ? str3 : str2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x002b A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x002c A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a(java.util.List<com.google.android.gms.internal.zzaqx> r4) {
        /*
            r0 = 0
            if (r4 == 0) goto L_0x0024
            java.util.Iterator r4 = r4.iterator()
        L_0x0007:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L_0x0024
            java.lang.Object r1 = r4.next()
            com.google.android.gms.internal.zzaqx r1 = (com.google.android.gms.internal.zzaqx) r1
            java.lang.String r2 = r1.getId()
            java.lang.String r3 = "appendVersion"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x0007
            java.lang.String r4 = r1.getValue()
            goto L_0x0025
        L_0x0024:
            r4 = r0
        L_0x0025:
            boolean r1 = android.text.TextUtils.isEmpty(r4)
            if (r1 == 0) goto L_0x002c
            return r0
        L_0x002c:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.bk.a(java.util.List):java.lang.String");
    }

    private static boolean a(Object obj) {
        if (obj == null) {
            return false;
        }
        return obj.toString().startsWith("&");
    }

    private static String b(w wVar, Object obj) {
        String obj2 = obj == null ? "" : obj.toString();
        int length = obj2.length();
        if (length <= 8192) {
            return obj2;
        }
        String substring = obj2.substring(0, 8192);
        wVar.zzc("Hit param value is too long and will be trimmed", Integer.valueOf(length), substring);
        return substring;
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("ht=");
        stringBuffer.append(this.d);
        if (this.c != 0) {
            stringBuffer.append(", dbId=");
            stringBuffer.append(this.c);
        }
        if (this.e != 0) {
            stringBuffer.append(", appUID=");
            stringBuffer.append(this.e);
        }
        ArrayList arrayList = new ArrayList(this.f3090a.keySet());
        Collections.sort(arrayList);
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            String str = (String) obj;
            stringBuffer.append(", ");
            stringBuffer.append(str);
            stringBuffer.append("=");
            stringBuffer.append(this.f3090a.get(str));
        }
        return stringBuffer.toString();
    }

    public final Map<String, String> zzjh() {
        return this.f3090a;
    }

    public final int zzzg() {
        return this.e;
    }

    public final long zzzh() {
        return this.c;
    }

    public final long zzzi() {
        return this.d;
    }

    public final List<zzaqx> zzzj() {
        return this.f3091b;
    }

    public final boolean zzzk() {
        return this.f;
    }

    public final long zzzl() {
        return ce.zzei(a("_s", "0"));
    }

    public final String zzzm() {
        return a("_m", "");
    }
}
