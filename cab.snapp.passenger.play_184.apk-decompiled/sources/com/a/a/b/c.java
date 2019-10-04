package com.a.a.b;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import io.fabric.sdk.android.i;
import io.fabric.sdk.android.services.a.b;
import io.fabric.sdk.android.services.c.d;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.l;
import io.fabric.sdk.android.services.settings.f;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.s;
import java.util.HashMap;
import java.util.Map;

public class c extends i<Boolean> implements l {
    public static final String TAG = "Beta";

    /* renamed from: a  reason: collision with root package name */
    private final b<String> f1705a = new b<>();

    /* renamed from: b  reason: collision with root package name */
    private final h f1706b = new h();
    private j i;

    public String getIdentifier() {
        return "com.crashlytics.sdk.android:beta";
    }

    public String getVersion() {
        return "1.2.5.dev";
    }

    public static c getInstance() {
        return (c) io.fabric.sdk.android.c.getKit(c.class);
    }

    public final boolean onPreExecute() {
        j jVar;
        getContext().getApplicationContext();
        if (Build.VERSION.SDK_INT >= 14) {
            jVar = new b(getFabric().getActivityLifecycleManager(), getFabric().getExecutorService());
        } else {
            jVar = new i();
        }
        this.i = jVar;
        return true;
    }

    private String a(Context context) {
        String str = null;
        try {
            String str2 = this.f1705a.get(context, this.f1706b);
            if (!"".equals(str2)) {
                str = str2;
            }
        } catch (Exception e) {
            io.fabric.sdk.android.c.getLogger().e(TAG, "Failed to load the Beta device token", e);
        }
        io.fabric.sdk.android.l logger = io.fabric.sdk.android.c.getLogger();
        logger.d(TAG, "Beta device token present: " + (!TextUtils.isEmpty(str)));
        return str;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v0, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v3, resolved type: com.a.a.b.d} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v2, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v6, resolved type: com.a.a.b.d} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v5, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v9, resolved type: com.a.a.b.d} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v6, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v1, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v7, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v11, resolved type: com.a.a.b.d} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v9, resolved type: com.a.a.b.d} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v10, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v11, resolved type: java.io.InputStream} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0081 A[SYNTHETIC, Splitter:B:27:0x0081] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.a.a.b.d b(android.content.Context r7) {
        /*
            java.lang.String r0 = "Error closing Beta build properties asset"
            java.lang.String r1 = "Beta"
            r2 = 0
            android.content.res.AssetManager r7 = r7.getAssets()     // Catch:{ Exception -> 0x0065 }
            java.lang.String r3 = "crashlytics-build.properties"
            java.io.InputStream r7 = r7.open(r3)     // Catch:{ Exception -> 0x0065 }
            if (r7 == 0) goto L_0x0050
            com.a.a.b.d r2 = com.a.a.b.d.fromPropertiesStream(r7)     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            io.fabric.sdk.android.l r3 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            r4.<init>()     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            java.lang.String r5 = r2.packageName     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            r4.append(r5)     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            java.lang.String r5 = " build properties: "
            r4.append(r5)     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            java.lang.String r5 = r2.versionName     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            r4.append(r5)     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            java.lang.String r5 = " ("
            r4.append(r5)     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            java.lang.String r5 = r2.versionCode     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            r4.append(r5)     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            java.lang.String r5 = ") - "
            r4.append(r5)     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            java.lang.String r5 = r2.buildId     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            r4.append(r5)     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            r3.d(r1, r4)     // Catch:{ Exception -> 0x004b, all -> 0x0049 }
            goto L_0x0050
        L_0x0049:
            r2 = move-exception
            goto L_0x007f
        L_0x004b:
            r3 = move-exception
            r6 = r2
            r2 = r7
            r7 = r6
            goto L_0x0067
        L_0x0050:
            if (r7 == 0) goto L_0x005e
            r7.close()     // Catch:{ IOException -> 0x0056 }
            goto L_0x005e
        L_0x0056:
            r7 = move-exception
            io.fabric.sdk.android.l r3 = io.fabric.sdk.android.c.getLogger()
            r3.e(r1, r0, r7)
        L_0x005e:
            r7 = r2
            goto L_0x007e
        L_0x0060:
            r7 = move-exception
            r6 = r2
            r2 = r7
            r7 = r6
            goto L_0x007f
        L_0x0065:
            r3 = move-exception
            r7 = r2
        L_0x0067:
            io.fabric.sdk.android.l r4 = io.fabric.sdk.android.c.getLogger()     // Catch:{ all -> 0x0060 }
            java.lang.String r5 = "Error reading Beta build properties"
            r4.e(r1, r5, r3)     // Catch:{ all -> 0x0060 }
            if (r2 == 0) goto L_0x007e
            r2.close()     // Catch:{ IOException -> 0x0076 }
            goto L_0x007e
        L_0x0076:
            r2 = move-exception
            io.fabric.sdk.android.l r3 = io.fabric.sdk.android.c.getLogger()
            r3.e(r1, r0, r2)
        L_0x007e:
            return r7
        L_0x007f:
            if (r7 == 0) goto L_0x008d
            r7.close()     // Catch:{ IOException -> 0x0085 }
            goto L_0x008d
        L_0x0085:
            r7 = move-exception
            io.fabric.sdk.android.l r3 = io.fabric.sdk.android.c.getLogger()
            r3.e(r1, r0, r7)
        L_0x008d:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.a.a.b.c.b(android.content.Context):com.a.a.b.d");
    }

    /* access modifiers changed from: package-private */
    public final String a() {
        return io.fabric.sdk.android.services.common.i.getStringsFileValue(getContext(), "com.crashlytics.ApiEndpoint");
    }

    public Map<IdManager.DeviceIdentifierType, String> getDeviceIdentifiers() {
        this.g.getInstallerPackageName();
        String a2 = a(getContext());
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(a2)) {
            hashMap.put(IdManager.DeviceIdentifierType.FONT_TOKEN, a2);
        }
        return hashMap;
    }

    public final /* synthetic */ Object doInBackground() {
        f fVar;
        io.fabric.sdk.android.c.getLogger().d(TAG, "Beta kit initializing...");
        Context context = getContext();
        IdManager idManager = this.g;
        idManager.getInstallerPackageName();
        if (TextUtils.isEmpty(a(context))) {
            io.fabric.sdk.android.c.getLogger().d(TAG, "A Beta device token was not found for this app");
            return Boolean.FALSE;
        }
        io.fabric.sdk.android.c.getLogger().d(TAG, "Beta device token is present, checking for app updates.");
        s awaitSettingsData = q.getInstance().awaitSettingsData();
        if (awaitSettingsData != null) {
            fVar = awaitSettingsData.betaSettingsData;
        } else {
            fVar = null;
        }
        f fVar2 = fVar;
        d b2 = b(context);
        if ((fVar2 == null || TextUtils.isEmpty(fVar2.updateUrl) || b2 == null) ? false : true) {
            this.i.initialize(context, this, idManager, fVar2, b2, new d(this), new io.fabric.sdk.android.services.common.q(), new io.fabric.sdk.android.services.network.b(io.fabric.sdk.android.c.getLogger()));
        }
        return Boolean.TRUE;
    }
}
