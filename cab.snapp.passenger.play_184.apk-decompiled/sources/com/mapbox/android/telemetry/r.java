package com.mapbox.android.telemetry;

import java.util.List;
import java.util.concurrent.ExecutorService;

final class r {

    /* renamed from: a  reason: collision with root package name */
    final u f4985a;

    /* renamed from: b  reason: collision with root package name */
    private final l<Event> f4986b;
    private final ExecutorService c;

    private r(l<Event> lVar, u uVar, ExecutorService executorService) {
        this.f4986b = lVar;
        this.f4985a = uVar;
        this.c = executorService;
    }

    static synchronized r a(u uVar, ExecutorService executorService) {
        r rVar;
        synchronized (r.class) {
            if (executorService != null) {
                rVar = new r(new l(), uVar, executorService);
            } else {
                throw new IllegalArgumentException("Callback or executor can't be null");
            }
        }
        return rVar;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Can't wrap try/catch for region: R(6:1|2|(3:4|5|6)|7|8|9) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x001d */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(com.mapbox.android.telemetry.Event r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            com.mapbox.android.telemetry.l<com.mapbox.android.telemetry.Event> r0 = r3.f4986b     // Catch:{ all -> 0x0025 }
            java.util.Queue<T> r0 = r0.f4981a     // Catch:{ all -> 0x0025 }
            int r0 = r0.size()     // Catch:{ all -> 0x0025 }
            r1 = 180(0xb4, float:2.52E-43)
            if (r0 < r1) goto L_0x001d
            com.mapbox.android.telemetry.l<com.mapbox.android.telemetry.Event> r0 = r3.f4986b     // Catch:{ all -> 0x0025 }
            java.util.List r0 = r0.a()     // Catch:{ all -> 0x0025 }
            java.util.concurrent.ExecutorService r1 = r3.c     // Catch:{ RejectedExecutionException -> 0x001d }
            com.mapbox.android.telemetry.r$1 r2 = new com.mapbox.android.telemetry.r$1     // Catch:{ RejectedExecutionException -> 0x001d }
            r2.<init>(r0)     // Catch:{ RejectedExecutionException -> 0x001d }
            r1.execute(r2)     // Catch:{ RejectedExecutionException -> 0x001d }
        L_0x001d:
            com.mapbox.android.telemetry.l<com.mapbox.android.telemetry.Event> r0 = r3.f4986b     // Catch:{ all -> 0x0025 }
            boolean r4 = r0.a(r4)     // Catch:{ all -> 0x0025 }
            monitor-exit(r3)     // Catch:{ all -> 0x0025 }
            return r4
        L_0x0025:
            r4 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x0025 }
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.android.telemetry.r.a(com.mapbox.android.telemetry.Event):boolean");
    }

    /* access modifiers changed from: package-private */
    public final List<Event> a() {
        List<Event> a2;
        synchronized (this) {
            a2 = this.f4986b.a();
        }
        return a2;
    }
}
