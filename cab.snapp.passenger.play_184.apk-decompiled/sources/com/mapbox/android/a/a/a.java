package com.mapbox.android.a.a;

import androidx.core.app.NotificationCompat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import org.a.b;
import org.a.c;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final c f4877a;

    a(Calendar calendar) {
        this.f4877a = new c();
        put(NotificationCompat.CATEGORY_EVENT, "mobile.crash");
        put("created", new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US).format(Long.valueOf(calendar.getTimeInMillis())));
    }

    a(String str) throws b {
        this.f4877a = new c(str);
    }

    public final String toJson() {
        return this.f4877a.toString();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:?, code lost:
        new java.lang.StringBuilder("Failed json encode value: ").append(java.lang.String.valueOf(r3));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0026, code lost:
        return;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:14:0x0017 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void put(java.lang.String r2, java.lang.String r3) {
        /*
            r1 = this;
            monitor-enter(r1)
            if (r3 != 0) goto L_0x000e
            org.a.c r3 = r1.f4877a     // Catch:{ b -> 0x000c }
            java.lang.String r0 = "null"
            r3.put((java.lang.String) r2, (java.lang.Object) r0)     // Catch:{ b -> 0x000c }
            monitor-exit(r1)
            return
        L_0x000c:
            monitor-exit(r1)
            return
        L_0x000e:
            org.a.c r0 = r1.f4877a     // Catch:{ b -> 0x0017 }
            r0.put((java.lang.String) r2, (java.lang.Object) r3)     // Catch:{ b -> 0x0017 }
            monitor-exit(r1)
            return
        L_0x0015:
            r2 = move-exception
            goto L_0x0027
        L_0x0017:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0015 }
            java.lang.String r0 = "Failed json encode value: "
            r2.<init>(r0)     // Catch:{ all -> 0x0015 }
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch:{ all -> 0x0015 }
            r2.append(r3)     // Catch:{ all -> 0x0015 }
            monitor-exit(r1)
            return
        L_0x0027:
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.android.a.a.a.put(java.lang.String, java.lang.String):void");
    }

    public final String getDateString() {
        return this.f4877a.optString("created");
    }
}
