package com.google.android.gms.internal;

import java.util.concurrent.Callable;

final class lj implements Callable<String> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ky f3341a;

    lj(ky kyVar) {
        this.f3341a = kyVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0068  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0082  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ java.lang.Object call() throws java.lang.Exception {
        /*
            r8 = this;
            com.google.android.gms.internal.ky r0 = r8.f3341a
            com.google.android.gms.internal.jj r0 = r0.zzawz()
            java.lang.String r0 = r0.d()
            if (r0 == 0) goto L_0x000d
            return r0
        L_0x000d:
            com.google.android.gms.internal.ky r0 = r8.f3341a
            com.google.android.gms.internal.ky r0 = r0.zzawm()
            com.google.android.gms.internal.js r1 = r0.zzawx()
            boolean r1 = r1.zzazs()
            r2 = 0
            if (r1 == 0) goto L_0x002c
            com.google.android.gms.internal.iz r0 = r0.zzawy()
            com.google.android.gms.internal.jb r0 = r0.zzazd()
            java.lang.String r1 = "Cannot retrieve app instance id from analytics worker thread"
        L_0x0028:
            r0.log(r1)
            goto L_0x0066
        L_0x002c:
            r0.zzawx()
            boolean r1 = com.google.android.gms.internal.js.zzau()
            if (r1 == 0) goto L_0x0040
            com.google.android.gms.internal.iz r0 = r0.zzawy()
            com.google.android.gms.internal.jb r0 = r0.zzazd()
            java.lang.String r1 = "Cannot retrieve app instance id from main thread"
            goto L_0x0028
        L_0x0040:
            com.google.android.gms.common.util.d r1 = r0.zzws()
            long r1 = r1.elapsedRealtime()
            r3 = 120000(0x1d4c0, double:5.9288E-319)
            java.lang.String r5 = r0.a((long) r3)
            com.google.android.gms.common.util.d r6 = r0.zzws()
            long r6 = r6.elapsedRealtime()
            long r6 = r6 - r1
            if (r5 != 0) goto L_0x0065
            int r1 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r1 >= 0) goto L_0x0065
            long r3 = r3 - r6
            java.lang.String r0 = r0.a((long) r3)
            r2 = r0
            goto L_0x0066
        L_0x0065:
            r2 = r5
        L_0x0066:
            if (r2 == 0) goto L_0x0082
            com.google.android.gms.internal.ky r0 = r8.f3341a
            com.google.android.gms.internal.jj r0 = r0.zzawz()
            java.lang.Object r1 = r0.d
            monitor-enter(r1)
            r0.f3246b = r2     // Catch:{ all -> 0x007f }
            com.google.android.gms.common.util.d r3 = r0.zzws()     // Catch:{ all -> 0x007f }
            long r3 = r3.elapsedRealtime()     // Catch:{ all -> 0x007f }
            r0.c = r3     // Catch:{ all -> 0x007f }
            monitor-exit(r1)     // Catch:{ all -> 0x007f }
            return r2
        L_0x007f:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x007f }
            throw r0
        L_0x0082:
            java.util.concurrent.TimeoutException r0 = new java.util.concurrent.TimeoutException
            r0.<init>()
            goto L_0x0089
        L_0x0088:
            throw r0
        L_0x0089:
            goto L_0x0088
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.lj.call():java.lang.Object");
    }
}
