package com.mapbox.android.a.b;

import android.app.PendingIntent;
import java.util.Map;

final class g<T> implements c {

    /* renamed from: a  reason: collision with root package name */
    private final e<T> f4888a;

    /* renamed from: b  reason: collision with root package name */
    private Map<d<i>, T> f4889b;

    g(e<T> eVar) {
        this.f4888a = eVar;
    }

    public final void getLastLocation(d<i> dVar) throws SecurityException {
        k.a(dVar, "callback == null");
        this.f4888a.getLastLocation(dVar);
    }

    /* JADX WARNING: type inference failed for: r5v0, types: [com.mapbox.android.a.b.d<com.mapbox.android.a.b.i>, java.lang.Object, com.mapbox.android.a.b.d] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void requestLocationUpdates(com.mapbox.android.a.b.h r4, com.mapbox.android.a.b.d<com.mapbox.android.a.b.i> r5, android.os.Looper r6) throws java.lang.SecurityException {
        /*
            r3 = this;
            java.lang.String r0 = "request == null"
            com.mapbox.android.a.b.k.a(r4, (java.lang.String) r0)
            java.lang.String r0 = "callback == null"
            com.mapbox.android.a.b.k.a(r5, (java.lang.String) r0)
            com.mapbox.android.a.b.e<T> r0 = r3.f4888a
            java.util.Map<com.mapbox.android.a.b.d<com.mapbox.android.a.b.i>, T> r1 = r3.f4889b
            if (r1 != 0) goto L_0x0017
            java.util.concurrent.ConcurrentHashMap r1 = new java.util.concurrent.ConcurrentHashMap
            r1.<init>()
            r3.f4889b = r1
        L_0x0017:
            java.util.Map<com.mapbox.android.a.b.d<com.mapbox.android.a.b.i>, T> r1 = r3.f4889b
            java.lang.Object r1 = r1.get(r5)
            if (r1 != 0) goto L_0x0025
            com.mapbox.android.a.b.e<T> r1 = r3.f4888a
            java.lang.Object r1 = r1.createListener(r5)
        L_0x0025:
            java.util.Map<com.mapbox.android.a.b.d<com.mapbox.android.a.b.i>, T> r2 = r3.f4889b
            r2.put(r5, r1)
            if (r6 != 0) goto L_0x0030
            android.os.Looper r6 = android.os.Looper.getMainLooper()
        L_0x0030:
            r0.requestLocationUpdates(r4, r1, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.android.a.b.g.requestLocationUpdates(com.mapbox.android.a.b.h, com.mapbox.android.a.b.d, android.os.Looper):void");
    }

    public final void requestLocationUpdates(h hVar, PendingIntent pendingIntent) throws SecurityException {
        k.a(hVar, "request == null");
        this.f4888a.requestLocationUpdates(hVar, pendingIntent);
    }

    public final void removeLocationUpdates(d<i> dVar) {
        k.a(dVar, "callback == null");
        e<T> eVar = this.f4888a;
        Map<d<i>, T> map = this.f4889b;
        eVar.removeLocationUpdates(map != null ? map.remove(dVar) : null);
    }

    public final void removeLocationUpdates(PendingIntent pendingIntent) {
        this.f4888a.removeLocationUpdates(pendingIntent);
    }
}
