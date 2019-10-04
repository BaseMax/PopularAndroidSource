package com.google.android.gms.common.util;

import android.content.Context;
import java.io.File;

public final class p {
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0034, code lost:
        return r3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static synchronized java.io.File a(java.io.File r3) {
        /*
            java.lang.Class<com.google.android.gms.common.util.p> r0 = com.google.android.gms.common.util.p.class
            monitor-enter(r0)
            boolean r1 = r3.exists()     // Catch:{ all -> 0x0035 }
            if (r1 != 0) goto L_0x0033
            boolean r1 = r3.mkdirs()     // Catch:{ all -> 0x0035 }
            if (r1 != 0) goto L_0x0033
            boolean r1 = r3.exists()     // Catch:{ all -> 0x0035 }
            if (r1 == 0) goto L_0x0017
            monitor-exit(r0)
            return r3
        L_0x0017:
            java.lang.String r1 = "Unable to create no-backup dir "
            java.lang.String r3 = r3.getPath()     // Catch:{ all -> 0x0035 }
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch:{ all -> 0x0035 }
            int r2 = r3.length()     // Catch:{ all -> 0x0035 }
            if (r2 == 0) goto L_0x002b
            r1.concat(r3)     // Catch:{ all -> 0x0035 }
            goto L_0x0030
        L_0x002b:
            java.lang.String r3 = new java.lang.String     // Catch:{ all -> 0x0035 }
            r3.<init>(r1)     // Catch:{ all -> 0x0035 }
        L_0x0030:
            r3 = 0
            monitor-exit(r0)
            return r3
        L_0x0033:
            monitor-exit(r0)
            return r3
        L_0x0035:
            r3 = move-exception
            monitor-exit(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.p.a(java.io.File):java.io.File");
    }

    public static File getNoBackupFilesDir(Context context) {
        return m.zzamn() ? context.getNoBackupFilesDir() : a(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }
}
