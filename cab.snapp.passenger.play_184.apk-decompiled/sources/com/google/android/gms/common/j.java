package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.util.f;
import com.google.android.gms.internal.fr;

public class j {
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = s.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    /* renamed from: a  reason: collision with root package name */
    private static final j f2988a = new j();

    j() {
    }

    private static String a(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(GOOGLE_PLAY_SERVICES_VERSION_CODE);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(fr.zzdb(context).getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return sb.toString();
    }

    public static Intent zza(Context context, int i, String str) {
        if (i == 1 || i == 2) {
            return (context == null || !f.zzct(context)) ? l.zzt("com.google.android.gms", a(context, str)) : l.zzaln();
        }
        if (i != 3) {
            return null;
        }
        return l.zzgk("com.google.android.gms");
    }

    public static j zzafy() {
        return f2988a;
    }

    public static void zzcd(Context context) throws d, c {
        s.zzbp(context);
    }

    public static void zzce(Context context) {
        s.zzce(context);
    }

    public static int zzcf(Context context) {
        return s.zzcf(context);
    }

    public static boolean zze(Context context, int i) {
        return s.zze(context, i);
    }

    public PendingIntent getErrorResolutionPendingIntent(Context context, int i, int i2) {
        return zza(context, i, i2, null);
    }

    public String getErrorString(int i) {
        return s.getErrorString(i);
    }

    public int isGooglePlayServicesAvailable(Context context) {
        int isGooglePlayServicesAvailable = s.isGooglePlayServicesAvailable(context);
        if (s.zze(context, isGooglePlayServicesAvailable)) {
            return 18;
        }
        return isGooglePlayServicesAvailable;
    }

    public boolean isUserResolvableError(int i) {
        return s.isUserRecoverableError(i);
    }

    public final PendingIntent zza(Context context, int i, int i2, String str) {
        Intent zza = zza(context, i, str);
        if (zza == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, zza, 268435456);
    }

    @Deprecated
    public final Intent zzbp(int i) {
        return zza(null, i, null);
    }
}
