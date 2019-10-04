package com.google.android.gms.common;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.a;
import com.google.android.gms.common.internal.af;
import com.google.android.gms.common.util.f;
import com.google.android.gms.common.util.r;
import com.google.android.gms.internal.fr;
import java.util.concurrent.atomic.AtomicBoolean;

public class s {
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 11910000;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    private static boolean zzflj = false;
    private static boolean zzflk = false;
    private static boolean zzfll = false;
    private static boolean zzflm = false;
    static final AtomicBoolean zzfln = new AtomicBoolean();
    private static final AtomicBoolean zzflo = new AtomicBoolean();

    s() {
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return j.zzafy().getErrorResolutionPendingIntent(context, i, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return ConnectionResult.a(i);
    }

    public static Context getRemoteContext(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static Resources getRemoteResource(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            context.getResources().getString(a.c.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !zzflo.get()) {
            int zzcq = af.zzcq(context);
            if (zzcq != 0) {
                int i = GOOGLE_PLAY_SERVICES_VERSION_CODE;
                if (zzcq != i) {
                    StringBuilder sb = new StringBuilder("com.google.android.gms.version".length() + 290);
                    sb.append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ");
                    sb.append(i);
                    sb.append(" but found ");
                    sb.append(zzcq);
                    sb.append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"");
                    sb.append("com.google.android.gms.version");
                    sb.append("\" android:value=\"@integer/google_play_services_version\" />");
                    throw new IllegalStateException(sb.toString());
                }
            } else {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            }
        }
        boolean z = !f.zzct(context) && !f.zzcv(context);
        PackageInfo packageInfo = null;
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException unused2) {
                return 9;
            }
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            t.zzci(context);
            l[] lVarArr = o.f2995a;
            if (z) {
                l a2 = t.a(packageInfo, lVarArr);
                if (a2 == null) {
                    return 9;
                }
                if (t.a(packageInfo2, a2) == null) {
                    return 9;
                }
            } else if (t.a(packageInfo2, lVarArr) == null) {
                return 9;
            }
            if (packageInfo2.versionCode / 1000 < GOOGLE_PLAY_SERVICES_VERSION_CODE / 1000) {
                int i2 = GOOGLE_PLAY_SERVICES_VERSION_CODE;
                int i3 = packageInfo2.versionCode;
                StringBuilder sb2 = new StringBuilder(77);
                sb2.append("Google Play services out of date.  Requires ");
                sb2.append(i2);
                sb2.append(" but found ");
                sb2.append(i3);
                return 2;
            }
            ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
            if (applicationInfo == null) {
                try {
                    applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                } catch (PackageManager.NameNotFoundException e) {
                    Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", e);
                    return 1;
                }
            }
            return !applicationInfo.enabled ? 3 : 0;
        } catch (PackageManager.NameNotFoundException unused3) {
            return 1;
        }
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        return i == 1 || i == 2 || i == 3 || i == 9;
    }

    @Deprecated
    public static boolean zzb(Context context, int i, String str) {
        return r.zzb(context, i, str);
    }

    @Deprecated
    public static void zzbp(Context context) throws d, c {
        int isGooglePlayServicesAvailable = j.zzafy().isGooglePlayServicesAvailable(context);
        if (isGooglePlayServicesAvailable != 0) {
            j.zzafy();
            Intent zza = j.zza(context, isGooglePlayServicesAvailable, "e");
            StringBuilder sb = new StringBuilder(57);
            sb.append("GooglePlayServices not available due to error ");
            sb.append(isGooglePlayServicesAvailable);
            if (zza == null) {
                throw new c(isGooglePlayServicesAvailable);
            }
            throw new d(isGooglePlayServicesAvailable, "Google Play Services not available", zza);
        }
    }

    @Deprecated
    public static void zzce(Context context) {
        if (!zzfln.getAndSet(true)) {
            try {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                if (notificationManager != null) {
                    notificationManager.cancel(10436);
                }
            } catch (SecurityException unused) {
            }
        }
    }

    @Deprecated
    public static int zzcf(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }

    public static boolean zzch(Context context) {
        if (!zzflm) {
            try {
                PackageInfo packageInfo = fr.zzdb(context).getPackageInfo("com.google.android.gms", 64);
                if (packageInfo != null) {
                    t.zzci(context);
                    if (t.a(packageInfo, o.f2995a[1]) != null) {
                        zzfll = true;
                        zzflm = true;
                    }
                }
                zzfll = false;
            } catch (PackageManager.NameNotFoundException unused) {
            } catch (Throwable th) {
                zzflm = true;
                throw th;
            }
            zzflm = true;
        }
        return zzfll || !"user".equals(Build.TYPE);
    }

    @Deprecated
    public static boolean zze(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return zzv(context, "com.google.android.gms");
        }
        return false;
    }

    @Deprecated
    public static boolean zzf(Context context, int i) {
        return r.zzf(context, i);
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x0074 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static boolean zzv(android.content.Context r5, java.lang.String r6) {
        /*
            java.lang.String r0 = "com.google.android.gms"
            boolean r0 = r6.equals(r0)
            boolean r1 = com.google.android.gms.common.util.m.zzamn()
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L_0x0036
            android.content.pm.PackageManager r1 = r5.getPackageManager()     // Catch:{ Exception -> 0x0035 }
            android.content.pm.PackageInstaller r1 = r1.getPackageInstaller()     // Catch:{ Exception -> 0x0035 }
            java.util.List r1 = r1.getAllSessions()     // Catch:{ Exception -> 0x0035 }
            java.util.Iterator r1 = r1.iterator()
        L_0x001e:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto L_0x0036
            java.lang.Object r4 = r1.next()
            android.content.pm.PackageInstaller$SessionInfo r4 = (android.content.pm.PackageInstaller.SessionInfo) r4
            java.lang.String r4 = r4.getAppPackageName()
            boolean r4 = r6.equals(r4)
            if (r4 == 0) goto L_0x001e
            return r2
        L_0x0035:
            return r3
        L_0x0036:
            android.content.pm.PackageManager r1 = r5.getPackageManager()
            r4 = 8192(0x2000, float:1.14794E-41)
            android.content.pm.ApplicationInfo r6 = r1.getApplicationInfo(r6, r4)     // Catch:{ NameNotFoundException -> 0x0075 }
            if (r0 == 0) goto L_0x0045
            boolean r5 = r6.enabled     // Catch:{ NameNotFoundException -> 0x0075 }
            return r5
        L_0x0045:
            boolean r6 = r6.enabled     // Catch:{ NameNotFoundException -> 0x0075 }
            if (r6 == 0) goto L_0x0075
            boolean r6 = com.google.android.gms.common.util.m.zzamk()     // Catch:{ NameNotFoundException -> 0x0075 }
            if (r6 == 0) goto L_0x0071
            java.lang.String r6 = "user"
            java.lang.Object r6 = r5.getSystemService(r6)     // Catch:{ NameNotFoundException -> 0x0075 }
            android.os.UserManager r6 = (android.os.UserManager) r6     // Catch:{ NameNotFoundException -> 0x0075 }
            java.lang.String r5 = r5.getPackageName()     // Catch:{ NameNotFoundException -> 0x0075 }
            android.os.Bundle r5 = r6.getApplicationRestrictions(r5)     // Catch:{ NameNotFoundException -> 0x0075 }
            if (r5 == 0) goto L_0x0071
            java.lang.String r6 = "true"
            java.lang.String r0 = "restricted_profile"
            java.lang.String r5 = r5.getString(r0)     // Catch:{ NameNotFoundException -> 0x0075 }
            boolean r5 = r6.equals(r5)     // Catch:{ NameNotFoundException -> 0x0075 }
            if (r5 == 0) goto L_0x0071
            r5 = 1
            goto L_0x0072
        L_0x0071:
            r5 = 0
        L_0x0072:
            if (r5 != 0) goto L_0x0075
            return r2
        L_0x0075:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.s.zzv(android.content.Context, java.lang.String):boolean");
    }
}
