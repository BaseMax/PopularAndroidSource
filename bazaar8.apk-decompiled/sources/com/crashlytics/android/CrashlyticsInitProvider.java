package com.crashlytics.android;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import e.a.a.a.a.b.v;
import e.a.a.a.f;

public class CrashlyticsInitProvider extends ContentProvider {
    public static final String NDK_MANIFEST_FLAG = "firebase_crashlytics_ndk_enabled";
    public static final String TAG = "CrashlyticsInitProvider";

    interface EnabledCheckStrategy {
        boolean isCrashlyticsEnabled(Context context);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0032 A[SYNTHETIC, Splitter:B:12:0x0032] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private e.a.a.a.l[] createCrashlyticsKits(android.content.Context r7) {
        /*
            r6 = this;
            java.lang.String r0 = "Fabric"
            r1 = 1
            r2 = 0
            android.content.pm.PackageManager r3 = r7.getPackageManager()     // Catch:{ NameNotFoundException -> 0x0020 }
            java.lang.String r7 = r7.getPackageName()     // Catch:{ NameNotFoundException -> 0x0020 }
            r4 = 128(0x80, float:1.794E-43)
            android.content.pm.ApplicationInfo r7 = r3.getApplicationInfo(r7, r4)     // Catch:{ NameNotFoundException -> 0x0020 }
            android.os.Bundle r7 = r7.metaData     // Catch:{ NameNotFoundException -> 0x0020 }
            if (r7 == 0) goto L_0x002a
            java.lang.String r3 = "firebase_crashlytics_ndk_enabled"
            boolean r7 = r7.getBoolean(r3, r2)     // Catch:{ NameNotFoundException -> 0x0020 }
            if (r7 == 0) goto L_0x002a
            r7 = 1
            goto L_0x002b
        L_0x0020:
            r7 = move-exception
            e.a.a.a.o r3 = e.a.a.a.f.e()
            java.lang.String r4 = "Unable to get PackageManager while determining if Crashlytics NDK should be initialized"
            r3.c(r0, r4, r7)
        L_0x002a:
            r7 = 0
        L_0x002b:
            com.crashlytics.android.Crashlytics r3 = new com.crashlytics.android.Crashlytics
            r3.<init>()
            if (r7 == 0) goto L_0x0052
            e.a.a.a.o r7 = e.a.a.a.f.e()     // Catch:{ Throwable -> 0x0048 }
            java.lang.String r4 = "Crashlytics is initializing NDK crash reporter."
            r7.e(r0, r4)     // Catch:{ Throwable -> 0x0048 }
            r7 = 2
            e.a.a.a.l[] r7 = new e.a.a.a.l[r7]     // Catch:{ Throwable -> 0x0048 }
            r7[r2] = r3     // Catch:{ Throwable -> 0x0048 }
            com.crashlytics.android.ndk.CrashlyticsNdk r4 = new com.crashlytics.android.ndk.CrashlyticsNdk     // Catch:{ Throwable -> 0x0048 }
            r4.<init>()     // Catch:{ Throwable -> 0x0048 }
            r7[r1] = r4     // Catch:{ Throwable -> 0x0048 }
            return r7
        L_0x0048:
            r7 = move-exception
            e.a.a.a.o r4 = e.a.a.a.f.e()
            java.lang.String r5 = "Crashlytics failed to initialize NDK crash reporting. Attempting to intialize SDK..."
            r4.b(r0, r5, r7)
        L_0x0052:
            e.a.a.a.l[] r7 = new e.a.a.a.l[r1]
            r7[r2] = r3
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.CrashlyticsInitProvider.createCrashlyticsKits(android.content.Context):e.a.a.a.l[]");
    }

    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    public String getType(Uri uri) {
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    public boolean onCreate() {
        Context context = getContext();
        if (shouldInitializeFabric(context, new v(), new ManifestEnabledCheckStrategy())) {
            try {
                f.a(context, createCrashlyticsKits(context.getApplicationContext()));
                f.e().e(TAG, "CrashlyticsInitProvider initialization successful");
            } catch (IllegalStateException unused) {
                f.e().e(TAG, "CrashlyticsInitProvider initialization unsuccessful");
                return false;
            }
        } else {
            f.e().e(TAG, "CrashlyticsInitProvider skipping initialization");
        }
        return true;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    public boolean shouldInitializeFabric(Context context, v vVar, EnabledCheckStrategy enabledCheckStrategy) {
        if (vVar.e(context)) {
            return enabledCheckStrategy.isCrashlyticsEnabled(context);
        }
        return vVar.d(context);
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
