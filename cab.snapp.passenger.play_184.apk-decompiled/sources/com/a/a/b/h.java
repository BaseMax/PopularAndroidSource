package com.a.a.b;

import io.fabric.sdk.android.services.a.d;

public final class h implements d<String> {
    /* JADX WARNING: Missing exception handler attribute for start block: B:35:0x007b */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0067 A[SYNTHETIC, Splitter:B:27:0x0067] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0077 A[SYNTHETIC, Splitter:B:33:0x0077] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0086 A[SYNTHETIC, Splitter:B:38:0x0086] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00b5 A[SYNTHETIC, Splitter:B:43:0x00b5] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:35:0x007b=Splitter:B:35:0x007b, B:24:0x005c=Splitter:B:24:0x005c, B:30:0x006c=Splitter:B:30:0x006c} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String load(android.content.Context r9) throws java.lang.Exception {
        /*
            r8 = this;
            java.lang.String r0 = ""
            java.lang.String r1 = "Failed to close the APK file"
            java.lang.String r2 = "Beta"
            long r3 = java.lang.System.nanoTime()
            r5 = 0
            java.lang.String r6 = "io.crash.air"
            android.content.pm.PackageManager r9 = r9.getPackageManager()     // Catch:{ NameNotFoundException -> 0x007b, FileNotFoundException -> 0x006b, IOException -> 0x005b }
            r7 = 0
            android.content.pm.ApplicationInfo r9 = r9.getApplicationInfo(r6, r7)     // Catch:{ NameNotFoundException -> 0x007b, FileNotFoundException -> 0x006b, IOException -> 0x005b }
            java.util.zip.ZipInputStream r6 = new java.util.zip.ZipInputStream     // Catch:{ NameNotFoundException -> 0x007b, FileNotFoundException -> 0x006b, IOException -> 0x005b }
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch:{ NameNotFoundException -> 0x007b, FileNotFoundException -> 0x006b, IOException -> 0x005b }
            java.lang.String r9 = r9.sourceDir     // Catch:{ NameNotFoundException -> 0x007b, FileNotFoundException -> 0x006b, IOException -> 0x005b }
            r7.<init>(r9)     // Catch:{ NameNotFoundException -> 0x007b, FileNotFoundException -> 0x006b, IOException -> 0x005b }
            r6.<init>(r7)     // Catch:{ NameNotFoundException -> 0x007b, FileNotFoundException -> 0x006b, IOException -> 0x005b }
            java.util.zip.ZipEntry r9 = r6.getNextEntry()     // Catch:{ NameNotFoundException -> 0x0057, FileNotFoundException -> 0x0054, IOException -> 0x0051, all -> 0x004e }
            if (r9 == 0) goto L_0x0041
            java.lang.String r9 = r9.getName()     // Catch:{ NameNotFoundException -> 0x0057, FileNotFoundException -> 0x0054, IOException -> 0x0051, all -> 0x004e }
            java.lang.String r5 = "assets/com.crashlytics.android.beta/dirfactor-device-token="
            boolean r5 = r9.startsWith(r5)     // Catch:{ NameNotFoundException -> 0x0057, FileNotFoundException -> 0x0054, IOException -> 0x0051, all -> 0x004e }
            if (r5 == 0) goto L_0x0041
            r5 = 59
            int r7 = r9.length()     // Catch:{ NameNotFoundException -> 0x0057, FileNotFoundException -> 0x0054, IOException -> 0x0051, all -> 0x004e }
            int r7 = r7 + -1
            java.lang.String r9 = r9.substring(r5, r7)     // Catch:{ NameNotFoundException -> 0x0057, FileNotFoundException -> 0x0054, IOException -> 0x0051, all -> 0x004e }
            r0 = r9
        L_0x0041:
            r6.close()     // Catch:{ IOException -> 0x0045 }
            goto L_0x0089
        L_0x0045:
            r9 = move-exception
            io.fabric.sdk.android.l r5 = io.fabric.sdk.android.c.getLogger()
            r5.e(r2, r1, r9)
            goto L_0x0089
        L_0x004e:
            r9 = move-exception
            r5 = r6
            goto L_0x00b3
        L_0x0051:
            r9 = move-exception
            r5 = r6
            goto L_0x005c
        L_0x0054:
            r9 = move-exception
            r5 = r6
            goto L_0x006c
        L_0x0057:
            r5 = r6
            goto L_0x007b
        L_0x0059:
            r9 = move-exception
            goto L_0x00b3
        L_0x005b:
            r9 = move-exception
        L_0x005c:
            io.fabric.sdk.android.l r6 = io.fabric.sdk.android.c.getLogger()     // Catch:{ all -> 0x0059 }
            java.lang.String r7 = "Failed to read the APK file"
            r6.e(r2, r7, r9)     // Catch:{ all -> 0x0059 }
            if (r5 == 0) goto L_0x0089
            r5.close()     // Catch:{ IOException -> 0x0045 }
            goto L_0x0089
        L_0x006b:
            r9 = move-exception
        L_0x006c:
            io.fabric.sdk.android.l r6 = io.fabric.sdk.android.c.getLogger()     // Catch:{ all -> 0x0059 }
            java.lang.String r7 = "Failed to find the APK file"
            r6.e(r2, r7, r9)     // Catch:{ all -> 0x0059 }
            if (r5 == 0) goto L_0x0089
            r5.close()     // Catch:{ IOException -> 0x0045 }
            goto L_0x0089
        L_0x007b:
            io.fabric.sdk.android.l r9 = io.fabric.sdk.android.c.getLogger()     // Catch:{ all -> 0x0059 }
            java.lang.String r6 = "Beta by Crashlytics app is not installed"
            r9.d(r2, r6)     // Catch:{ all -> 0x0059 }
            if (r5 == 0) goto L_0x0089
            r5.close()     // Catch:{ IOException -> 0x0045 }
        L_0x0089:
            long r5 = java.lang.System.nanoTime()
            long r5 = r5 - r3
            double r3 = (double) r5
            r5 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            java.lang.Double.isNaN(r3)
            double r3 = r3 / r5
            io.fabric.sdk.android.l r9 = io.fabric.sdk.android.c.getLogger()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r5 = "Beta device token load took "
            r1.<init>(r5)
            r1.append(r3)
            java.lang.String r3 = "ms"
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            r9.d(r2, r1)
            return r0
        L_0x00b3:
            if (r5 == 0) goto L_0x00c1
            r5.close()     // Catch:{ IOException -> 0x00b9 }
            goto L_0x00c1
        L_0x00b9:
            r0 = move-exception
            io.fabric.sdk.android.l r3 = io.fabric.sdk.android.c.getLogger()
            r3.e(r2, r1, r0)
        L_0x00c1:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.a.a.b.h.load(android.content.Context):java.lang.String");
    }
}
