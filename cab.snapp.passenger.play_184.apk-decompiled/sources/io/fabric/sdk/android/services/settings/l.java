package io.fabric.sdk.android.services.settings;

import io.fabric.sdk.android.i;
import io.fabric.sdk.android.services.common.a;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.d;
import org.a.c;

final class l extends a implements w {
    public l(i iVar, String str, String str2, d dVar) {
        this(iVar, str, str2, dVar, HttpMethod.GET);
    }

    private l(i iVar, String str, String str2, d dVar, HttpMethod httpMethod) {
        super(iVar, str, str2, dVar, httpMethod);
    }

    private c a(String str) {
        try {
            return new c(str);
        } catch (Exception e) {
            io.fabric.sdk.android.l logger = io.fabric.sdk.android.c.getLogger();
            logger.d(io.fabric.sdk.android.c.TAG, "Failed to parse settings JSON from " + this.f6582a, e);
            io.fabric.sdk.android.c.getLogger().d(io.fabric.sdk.android.c.TAG, "Settings response ".concat(String.valueOf(str)));
            return null;
        }
    }

    private static void a(io.fabric.sdk.android.services.network.c cVar, String str, String str2) {
        if (str2 != null) {
            cVar.header(str, str2);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x00de A[Catch:{ e -> 0x0119 }] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00e8 A[Catch:{ e -> 0x0119 }] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0101  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x012b  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0139  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final org.a.c invoke(io.fabric.sdk.android.services.settings.v r9) {
        /*
            r8 = this;
            java.lang.String r0 = "X-REQUEST-ID"
            java.lang.String r1 = "Settings request ID: "
            java.lang.String r2 = "Fabric"
            r3 = 0
            java.util.HashMap r4 = new java.util.HashMap     // Catch:{ e -> 0x011e, all -> 0x011b }
            r4.<init>()     // Catch:{ e -> 0x011e, all -> 0x011b }
            java.lang.String r5 = "build_version"
            java.lang.String r6 = r9.buildVersion     // Catch:{ e -> 0x011e, all -> 0x011b }
            r4.put(r5, r6)     // Catch:{ e -> 0x011e, all -> 0x011b }
            java.lang.String r5 = "display_version"
            java.lang.String r6 = r9.displayVersion     // Catch:{ e -> 0x011e, all -> 0x011b }
            r4.put(r5, r6)     // Catch:{ e -> 0x011e, all -> 0x011b }
            java.lang.String r5 = "source"
            int r6 = r9.source     // Catch:{ e -> 0x011e, all -> 0x011b }
            java.lang.String r6 = java.lang.Integer.toString(r6)     // Catch:{ e -> 0x011e, all -> 0x011b }
            r4.put(r5, r6)     // Catch:{ e -> 0x011e, all -> 0x011b }
            java.lang.String r5 = r9.iconHash     // Catch:{ e -> 0x011e, all -> 0x011b }
            if (r5 == 0) goto L_0x0030
            java.lang.String r5 = "icon_hash"
            java.lang.String r6 = r9.iconHash     // Catch:{ e -> 0x011e, all -> 0x011b }
            r4.put(r5, r6)     // Catch:{ e -> 0x011e, all -> 0x011b }
        L_0x0030:
            java.lang.String r5 = r9.instanceId     // Catch:{ e -> 0x011e, all -> 0x011b }
            boolean r6 = io.fabric.sdk.android.services.common.i.isNullOrEmpty(r5)     // Catch:{ e -> 0x011e, all -> 0x011b }
            if (r6 != 0) goto L_0x003d
            java.lang.String r6 = "instance"
            r4.put(r6, r5)     // Catch:{ e -> 0x011e, all -> 0x011b }
        L_0x003d:
            io.fabric.sdk.android.services.network.c r5 = r8.a(r4)     // Catch:{ e -> 0x011e, all -> 0x011b }
            java.lang.String r6 = "X-CRASHLYTICS-API-KEY"
            java.lang.String r7 = r9.apiKey     // Catch:{ e -> 0x0119 }
            a(r5, r6, r7)     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = "X-CRASHLYTICS-API-CLIENT-TYPE"
            java.lang.String r7 = "android"
            a(r5, r6, r7)     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = "X-CRASHLYTICS-API-CLIENT-VERSION"
            io.fabric.sdk.android.i r7 = r8.f6583b     // Catch:{ e -> 0x0119 }
            java.lang.String r7 = r7.getVersion()     // Catch:{ e -> 0x0119 }
            a(r5, r6, r7)     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = "Accept"
            java.lang.String r7 = "application/json"
            a(r5, r6, r7)     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = "X-CRASHLYTICS-DEVICE-MODEL"
            java.lang.String r7 = r9.deviceModel     // Catch:{ e -> 0x0119 }
            a(r5, r6, r7)     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = "X-CRASHLYTICS-OS-BUILD-VERSION"
            java.lang.String r7 = r9.osBuildVersion     // Catch:{ e -> 0x0119 }
            a(r5, r6, r7)     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = "X-CRASHLYTICS-OS-DISPLAY-VERSION"
            java.lang.String r7 = r9.osDisplayVersion     // Catch:{ e -> 0x0119 }
            a(r5, r6, r7)     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = "X-CRASHLYTICS-ADVERTISING-TOKEN"
            java.lang.String r7 = r9.advertisingId     // Catch:{ e -> 0x0119 }
            a(r5, r6, r7)     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = "X-CRASHLYTICS-INSTALLATION-ID"
            java.lang.String r7 = r9.installationId     // Catch:{ e -> 0x0119 }
            a(r5, r6, r7)     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = "X-CRASHLYTICS-ANDROID-ID"
            java.lang.String r9 = r9.androidId     // Catch:{ e -> 0x0119 }
            a(r5, r6, r9)     // Catch:{ e -> 0x0119 }
            io.fabric.sdk.android.l r9 = io.fabric.sdk.android.c.getLogger()     // Catch:{ e -> 0x0119 }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ e -> 0x0119 }
            java.lang.String r7 = "Requesting settings from "
            r6.<init>(r7)     // Catch:{ e -> 0x0119 }
            java.lang.String r7 = r8.f6582a     // Catch:{ e -> 0x0119 }
            r6.append(r7)     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = r6.toString()     // Catch:{ e -> 0x0119 }
            r9.d(r2, r6)     // Catch:{ e -> 0x0119 }
            io.fabric.sdk.android.l r9 = io.fabric.sdk.android.c.getLogger()     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = "Settings query params were: "
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch:{ e -> 0x0119 }
            java.lang.String r4 = r6.concat(r4)     // Catch:{ e -> 0x0119 }
            r9.d(r2, r4)     // Catch:{ e -> 0x0119 }
            int r9 = r5.code()     // Catch:{ e -> 0x0119 }
            io.fabric.sdk.android.l r4 = io.fabric.sdk.android.c.getLogger()     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = "Settings result was: "
            java.lang.String r7 = java.lang.String.valueOf(r9)     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = r6.concat(r7)     // Catch:{ e -> 0x0119 }
            r4.d(r2, r6)     // Catch:{ e -> 0x0119 }
            r4 = 200(0xc8, float:2.8E-43)
            if (r9 == r4) goto L_0x00db
            r4 = 201(0xc9, float:2.82E-43)
            if (r9 == r4) goto L_0x00db
            r4 = 202(0xca, float:2.83E-43)
            if (r9 == r4) goto L_0x00db
            r4 = 203(0xcb, float:2.84E-43)
            if (r9 != r4) goto L_0x00d9
            goto L_0x00db
        L_0x00d9:
            r9 = 0
            goto L_0x00dc
        L_0x00db:
            r9 = 1
        L_0x00dc:
            if (r9 == 0) goto L_0x00e8
            java.lang.String r9 = r5.body()     // Catch:{ e -> 0x0119 }
            org.a.c r9 = r8.a(r9)     // Catch:{ e -> 0x0119 }
            r3 = r9
            goto L_0x00ff
        L_0x00e8:
            io.fabric.sdk.android.l r9 = io.fabric.sdk.android.c.getLogger()     // Catch:{ e -> 0x0119 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = "Failed to retrieve settings from "
            r4.<init>(r6)     // Catch:{ e -> 0x0119 }
            java.lang.String r6 = r8.f6582a     // Catch:{ e -> 0x0119 }
            r4.append(r6)     // Catch:{ e -> 0x0119 }
            java.lang.String r4 = r4.toString()     // Catch:{ e -> 0x0119 }
            r9.e(r2, r4)     // Catch:{ e -> 0x0119 }
        L_0x00ff:
            if (r5 == 0) goto L_0x0135
            io.fabric.sdk.android.l r9 = io.fabric.sdk.android.c.getLogger()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r1)
        L_0x010a:
            java.lang.String r0 = r5.header((java.lang.String) r0)
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            r9.d(r2, r0)
            goto L_0x0135
        L_0x0119:
            r9 = move-exception
            goto L_0x0120
        L_0x011b:
            r9 = move-exception
            r5 = r3
            goto L_0x0137
        L_0x011e:
            r9 = move-exception
            r5 = r3
        L_0x0120:
            io.fabric.sdk.android.l r4 = io.fabric.sdk.android.c.getLogger()     // Catch:{ all -> 0x0136 }
            java.lang.String r6 = "Settings request failed."
            r4.e(r2, r6, r9)     // Catch:{ all -> 0x0136 }
            if (r5 == 0) goto L_0x0135
            io.fabric.sdk.android.l r9 = io.fabric.sdk.android.c.getLogger()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r1)
            goto L_0x010a
        L_0x0135:
            return r3
        L_0x0136:
            r9 = move-exception
        L_0x0137:
            if (r5 == 0) goto L_0x0150
            io.fabric.sdk.android.l r3 = io.fabric.sdk.android.c.getLogger()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r1)
            java.lang.String r0 = r5.header((java.lang.String) r0)
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            r3.d(r2, r0)
        L_0x0150:
            goto L_0x0152
        L_0x0151:
            throw r9
        L_0x0152:
            goto L_0x0151
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.settings.l.invoke(io.fabric.sdk.android.services.settings.v):org.a.c");
    }
}
