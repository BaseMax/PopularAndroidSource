package com.a.a.b;

import io.fabric.sdk.android.i;
import io.fabric.sdk.android.services.common.a;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.d;

final class e extends a {
    private final g c;

    public e(i iVar, String str, String str2, d dVar, g gVar) {
        super(iVar, str, str2, dVar, HttpMethod.GET);
        this.c = gVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x00f7, code lost:
        if (r11 != null) goto L_0x0120;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x011e, code lost:
        if (r11 == null) goto L_0x0133;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0120, code lost:
        io.fabric.sdk.android.c.getLogger().d(io.fabric.sdk.android.c.TAG, "Checking for updates request ID: ".concat(java.lang.String.valueOf(r11.header(io.fabric.sdk.android.services.common.a.HEADER_REQUEST_ID))));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0133, code lost:
        return null;
     */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0137  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.a.a.b.f invoke(java.lang.String r11, java.lang.String r12, com.a.a.b.d r13) {
        /*
            r10 = this;
            java.lang.String r0 = "Checking for updates request ID: "
            java.lang.String r1 = "Fabric"
            java.lang.String r2 = "X-REQUEST-ID"
            java.lang.String r3 = "Beta"
            r4 = 0
            java.util.HashMap r5 = new java.util.HashMap     // Catch:{ Exception -> 0x0105, all -> 0x0102 }
            r5.<init>()     // Catch:{ Exception -> 0x0105, all -> 0x0102 }
            java.lang.String r6 = "build_version"
            java.lang.String r7 = r13.versionCode     // Catch:{ Exception -> 0x0105, all -> 0x0102 }
            r5.put(r6, r7)     // Catch:{ Exception -> 0x0105, all -> 0x0102 }
            java.lang.String r6 = "display_version"
            java.lang.String r7 = r13.versionName     // Catch:{ Exception -> 0x0105, all -> 0x0102 }
            r5.put(r6, r7)     // Catch:{ Exception -> 0x0105, all -> 0x0102 }
            java.lang.String r6 = "instance"
            java.lang.String r13 = r13.buildId     // Catch:{ Exception -> 0x0105, all -> 0x0102 }
            r5.put(r6, r13)     // Catch:{ Exception -> 0x0105, all -> 0x0102 }
            java.lang.String r13 = "source"
            java.lang.String r6 = "3"
            r5.put(r13, r6)     // Catch:{ Exception -> 0x0105, all -> 0x0102 }
            io.fabric.sdk.android.services.network.c r13 = r10.a(r5)     // Catch:{ Exception -> 0x0105, all -> 0x0102 }
            java.lang.String r6 = "Accept"
            java.lang.String r7 = "application/json"
            io.fabric.sdk.android.services.network.c r6 = r13.header((java.lang.String) r6, (java.lang.String) r7)     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            java.lang.String r7 = "User-Agent"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            java.lang.String r9 = "Crashlytics Android SDK/"
            r8.<init>(r9)     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            io.fabric.sdk.android.i r9 = r10.f6583b     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            java.lang.String r9 = r9.getVersion()     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            r8.append(r9)     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            java.lang.String r8 = r8.toString()     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            io.fabric.sdk.android.services.network.c r6 = r6.header((java.lang.String) r7, (java.lang.String) r8)     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            java.lang.String r7 = "X-CRASHLYTICS-DEVELOPER-TOKEN"
            java.lang.String r8 = "470fa2b4ae81cd56ecbcda9735803434cec591fa"
            io.fabric.sdk.android.services.network.c r6 = r6.header((java.lang.String) r7, (java.lang.String) r8)     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            java.lang.String r7 = "X-CRASHLYTICS-API-CLIENT-TYPE"
            java.lang.String r8 = "android"
            io.fabric.sdk.android.services.network.c r6 = r6.header((java.lang.String) r7, (java.lang.String) r8)     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            java.lang.String r7 = "X-CRASHLYTICS-API-CLIENT-VERSION"
            io.fabric.sdk.android.i r8 = r10.f6583b     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            java.lang.String r8 = r8.getVersion()     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            io.fabric.sdk.android.services.network.c r6 = r6.header((java.lang.String) r7, (java.lang.String) r8)     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            java.lang.String r7 = "X-CRASHLYTICS-API-KEY"
            io.fabric.sdk.android.services.network.c r11 = r6.header((java.lang.String) r7, (java.lang.String) r11)     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            java.lang.String r6 = "X-CRASHLYTICS-BETA-TOKEN"
            java.lang.String r7 = "3:"
            java.lang.String r12 = java.lang.String.valueOf(r12)     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            java.lang.String r12 = r7.concat(r12)     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            io.fabric.sdk.android.services.network.c r11 = r11.header((java.lang.String) r6, (java.lang.String) r12)     // Catch:{ Exception -> 0x00ff, all -> 0x00fc }
            io.fabric.sdk.android.l r12 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x00fa }
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00fa }
            java.lang.String r6 = "Checking for updates from "
            r13.<init>(r6)     // Catch:{ Exception -> 0x00fa }
            java.lang.String r6 = r10.f6582a     // Catch:{ Exception -> 0x00fa }
            r13.append(r6)     // Catch:{ Exception -> 0x00fa }
            java.lang.String r13 = r13.toString()     // Catch:{ Exception -> 0x00fa }
            r12.d(r3, r13)     // Catch:{ Exception -> 0x00fa }
            io.fabric.sdk.android.l r12 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x00fa }
            java.lang.String r13 = "Checking for updates query params are: "
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch:{ Exception -> 0x00fa }
            java.lang.String r13 = r13.concat(r5)     // Catch:{ Exception -> 0x00fa }
            r12.d(r3, r13)     // Catch:{ Exception -> 0x00fa }
            boolean r12 = r11.ok()     // Catch:{ Exception -> 0x00fa }
            if (r12 == 0) goto L_0x00de
            io.fabric.sdk.android.l r12 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x00fa }
            java.lang.String r13 = "Checking for updates was successful"
            r12.d(r3, r13)     // Catch:{ Exception -> 0x00fa }
            org.a.c r12 = new org.a.c     // Catch:{ Exception -> 0x00fa }
            java.lang.String r13 = r11.body()     // Catch:{ Exception -> 0x00fa }
            r12.<init>((java.lang.String) r13)     // Catch:{ Exception -> 0x00fa }
            com.a.a.b.g r13 = r10.c     // Catch:{ Exception -> 0x00fa }
            com.a.a.b.f r12 = r13.fromJson(r12)     // Catch:{ Exception -> 0x00fa }
            if (r11 == 0) goto L_0x00dd
            java.lang.String r11 = r11.header((java.lang.String) r2)
            io.fabric.sdk.android.l r13 = io.fabric.sdk.android.c.getLogger()
            java.lang.String r11 = java.lang.String.valueOf(r11)
            java.lang.String r11 = r0.concat(r11)
            r13.d(r1, r11)
        L_0x00dd:
            return r12
        L_0x00de:
            io.fabric.sdk.android.l r12 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x00fa }
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00fa }
            java.lang.String r5 = "Checking for updates failed. Response code: "
            r13.<init>(r5)     // Catch:{ Exception -> 0x00fa }
            int r5 = r11.code()     // Catch:{ Exception -> 0x00fa }
            r13.append(r5)     // Catch:{ Exception -> 0x00fa }
            java.lang.String r13 = r13.toString()     // Catch:{ Exception -> 0x00fa }
            r12.e(r3, r13)     // Catch:{ Exception -> 0x00fa }
            if (r11 == 0) goto L_0x0133
            goto L_0x0120
        L_0x00fa:
            r12 = move-exception
            goto L_0x0107
        L_0x00fc:
            r12 = move-exception
            r11 = r13
            goto L_0x0135
        L_0x00ff:
            r12 = move-exception
            r11 = r13
            goto L_0x0107
        L_0x0102:
            r12 = move-exception
            r11 = r4
            goto L_0x0135
        L_0x0105:
            r12 = move-exception
            r11 = r4
        L_0x0107:
            io.fabric.sdk.android.l r13 = io.fabric.sdk.android.c.getLogger()     // Catch:{ all -> 0x0134 }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x0134 }
            java.lang.String r6 = "Error while checking for updates from "
            r5.<init>(r6)     // Catch:{ all -> 0x0134 }
            java.lang.String r6 = r10.f6582a     // Catch:{ all -> 0x0134 }
            r5.append(r6)     // Catch:{ all -> 0x0134 }
            java.lang.String r5 = r5.toString()     // Catch:{ all -> 0x0134 }
            r13.e(r3, r5, r12)     // Catch:{ all -> 0x0134 }
            if (r11 == 0) goto L_0x0133
        L_0x0120:
            java.lang.String r11 = r11.header((java.lang.String) r2)
            io.fabric.sdk.android.l r12 = io.fabric.sdk.android.c.getLogger()
            java.lang.String r11 = java.lang.String.valueOf(r11)
            java.lang.String r11 = r0.concat(r11)
            r12.d(r1, r11)
        L_0x0133:
            return r4
        L_0x0134:
            r12 = move-exception
        L_0x0135:
            if (r11 == 0) goto L_0x014a
            java.lang.String r11 = r11.header((java.lang.String) r2)
            io.fabric.sdk.android.l r13 = io.fabric.sdk.android.c.getLogger()
            java.lang.String r11 = java.lang.String.valueOf(r11)
            java.lang.String r11 = r0.concat(r11)
            r13.d(r1, r11)
        L_0x014a:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.a.a.b.e.invoke(java.lang.String, java.lang.String, com.a.a.b.d):com.a.a.b.f");
    }
}
