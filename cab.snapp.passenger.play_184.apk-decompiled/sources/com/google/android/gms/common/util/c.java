package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.internal.fr;

public final class c {
    private static PackageInfo a(Context context, String str) {
        try {
            return fr.zzdb(context).getPackageInfo(str, 128);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static int zzx(Context context, String str) {
        PackageInfo a2 = a(context, str);
        if (a2 == null || a2.applicationInfo == null) {
            return -1;
        }
        Bundle bundle = a2.applicationInfo.metaData;
        if (bundle == null) {
            return -1;
        }
        return bundle.getInt("com.google.android.gms.version", -1);
    }

    public static boolean zzz(Context context, String str) {
        "com.google.android.gms".equals(str);
        try {
            if ((fr.zzdb(context).getApplicationInfo(str, 0).flags & 2097152) != 0) {
                return true;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }
}
