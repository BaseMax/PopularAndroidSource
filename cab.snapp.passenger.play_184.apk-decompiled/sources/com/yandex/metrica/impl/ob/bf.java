package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.HashMap;

public class bf {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, WeakReference> f5886a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final Context f5887b;

    public bf(Context context) {
        this.f5887b = context.getApplicationContext();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:7:0x001b, code lost:
        if (r0.d() == false) goto L_0x0034;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized <T extends com.yandex.metrica.impl.ob.ad & com.yandex.metrica.impl.ob.ag> T a(com.yandex.metrica.impl.ob.z r3, com.yandex.metrica.impl.ob.t r4, com.yandex.metrica.impl.ob.ae<T> r5) {
        /*
            r2 = this;
            monitor-enter(r2)
            java.util.HashMap<java.lang.String, java.lang.ref.WeakReference> r0 = r2.f5886a     // Catch:{ all -> 0x0036 }
            java.lang.String r1 = r3.toString()     // Catch:{ all -> 0x0036 }
            java.lang.Object r0 = r0.get(r1)     // Catch:{ all -> 0x0036 }
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0     // Catch:{ all -> 0x0036 }
            if (r0 == 0) goto L_0x001d
            java.lang.Object r0 = r0.get()     // Catch:{ all -> 0x0036 }
            com.yandex.metrica.impl.ob.ad r0 = (com.yandex.metrica.impl.ob.ad) r0     // Catch:{ all -> 0x0036 }
            if (r0 == 0) goto L_0x001d
            boolean r1 = r0.d()     // Catch:{ all -> 0x0036 }
            if (r1 == 0) goto L_0x0034
        L_0x001d:
            android.content.Context r0 = r2.f5887b     // Catch:{ all -> 0x0036 }
            java.lang.Object r4 = r5.b(r0, r3, r4)     // Catch:{ all -> 0x0036 }
            r0 = r4
            com.yandex.metrica.impl.ob.ad r0 = (com.yandex.metrica.impl.ob.ad) r0     // Catch:{ all -> 0x0036 }
            java.util.HashMap<java.lang.String, java.lang.ref.WeakReference> r4 = r2.f5886a     // Catch:{ all -> 0x0036 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x0036 }
            java.lang.ref.WeakReference r5 = new java.lang.ref.WeakReference     // Catch:{ all -> 0x0036 }
            r5.<init>(r0)     // Catch:{ all -> 0x0036 }
            r4.put(r3, r5)     // Catch:{ all -> 0x0036 }
        L_0x0034:
            monitor-exit(r2)
            return r0
        L_0x0036:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.bf.a(com.yandex.metrica.impl.ob.z, com.yandex.metrica.impl.ob.t, com.yandex.metrica.impl.ob.ae):com.yandex.metrica.impl.ob.ad");
    }
}
