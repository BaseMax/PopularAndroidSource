package com.mapbox.android.telemetry.a;

import android.content.BroadcastReceiver;

public final class e extends BroadcastReceiver {
    /* JADX WARNING: Removed duplicated region for block: B:24:0x006d A[Catch:{ all -> 0x00a0 }] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0031 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onReceive(android.content.Context r8, android.content.Intent r9) {
        /*
            r7 = this;
            if (r9 != 0) goto L_0x0003
            return
        L_0x0003:
            java.lang.String r8 = r9.getAction()     // Catch:{ all -> 0x00a0 }
            java.lang.String r0 = "com.mapbox.android.telemetry.location.locationupdatespendingintent.action.LOCATION_UPDATED"
            boolean r8 = r0.equals(r8)     // Catch:{ all -> 0x00a0 }
            if (r8 != 0) goto L_0x0010
            return
        L_0x0010:
            com.mapbox.android.a.b.i r8 = com.mapbox.android.a.b.i.extractResult(r9)     // Catch:{ all -> 0x00a0 }
            if (r8 != 0) goto L_0x0017
            return
        L_0x0017:
            com.mapbox.android.telemetry.a.a r9 = com.mapbox.android.telemetry.a.a.a()     // Catch:{ all -> 0x00a0 }
            com.mapbox.android.telemetry.x r0 = r9.d     // Catch:{ all -> 0x00a0 }
            java.util.concurrent.atomic.AtomicReference<com.mapbox.android.telemetry.a.f> r9 = r9.c     // Catch:{ all -> 0x00a0 }
            java.lang.Object r9 = r9.get()     // Catch:{ all -> 0x00a0 }
            com.mapbox.android.telemetry.a.f r9 = (com.mapbox.android.telemetry.a.f) r9     // Catch:{ all -> 0x00a0 }
            java.lang.String r9 = r9.a()     // Catch:{ all -> 0x00a0 }
            java.util.List r8 = r8.getLocations()     // Catch:{ all -> 0x00a0 }
            java.util.Iterator r8 = r8.iterator()     // Catch:{ all -> 0x00a0 }
        L_0x0031:
            boolean r1 = r8.hasNext()     // Catch:{ all -> 0x00a0 }
            if (r1 == 0) goto L_0x00a0
            java.lang.Object r1 = r8.next()     // Catch:{ all -> 0x00a0 }
            android.location.Location r1 = (android.location.Location) r1     // Catch:{ all -> 0x00a0 }
            double r2 = r1.getLatitude()     // Catch:{ all -> 0x00a0 }
            boolean r2 = java.lang.Double.isNaN(r2)     // Catch:{ all -> 0x00a0 }
            r3 = 0
            r4 = 1
            if (r2 != 0) goto L_0x006a
            double r5 = r1.getLongitude()     // Catch:{ all -> 0x00a0 }
            boolean r2 = java.lang.Double.isNaN(r5)     // Catch:{ all -> 0x00a0 }
            if (r2 != 0) goto L_0x006a
            double r5 = r1.getAltitude()     // Catch:{ all -> 0x00a0 }
            boolean r2 = java.lang.Double.isNaN(r5)     // Catch:{ all -> 0x00a0 }
            if (r2 != 0) goto L_0x006a
            float r2 = r1.getAccuracy()     // Catch:{ all -> 0x00a0 }
            boolean r2 = java.lang.Float.isNaN(r2)     // Catch:{ all -> 0x00a0 }
            if (r2 == 0) goto L_0x0068
            goto L_0x006a
        L_0x0068:
            r2 = 0
            goto L_0x006b
        L_0x006a:
            r2 = 1
        L_0x006b:
            if (r2 != 0) goto L_0x0031
            double r5 = r1.getLatitude()     // Catch:{ all -> 0x00a0 }
            boolean r2 = java.lang.Double.isInfinite(r5)     // Catch:{ all -> 0x00a0 }
            if (r2 != 0) goto L_0x0095
            double r5 = r1.getLongitude()     // Catch:{ all -> 0x00a0 }
            boolean r2 = java.lang.Double.isInfinite(r5)     // Catch:{ all -> 0x00a0 }
            if (r2 != 0) goto L_0x0095
            double r5 = r1.getAltitude()     // Catch:{ all -> 0x00a0 }
            boolean r2 = java.lang.Double.isInfinite(r5)     // Catch:{ all -> 0x00a0 }
            if (r2 != 0) goto L_0x0095
            float r2 = r1.getAccuracy()     // Catch:{ all -> 0x00a0 }
            boolean r2 = java.lang.Float.isInfinite(r2)     // Catch:{ all -> 0x00a0 }
            if (r2 == 0) goto L_0x0096
        L_0x0095:
            r3 = 1
        L_0x0096:
            if (r3 != 0) goto L_0x0031
            com.mapbox.android.telemetry.LocationEvent r1 = com.mapbox.android.telemetry.a.d.create(r1, r9)     // Catch:{ all -> 0x00a0 }
            r0.push(r1)     // Catch:{ all -> 0x00a0 }
            goto L_0x0031
        L_0x00a0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.android.telemetry.a.e.onReceive(android.content.Context, android.content.Intent):void");
    }
}
