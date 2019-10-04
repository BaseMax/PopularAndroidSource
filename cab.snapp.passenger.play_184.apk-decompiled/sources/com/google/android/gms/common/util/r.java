package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.common.t;
import com.google.android.gms.internal.fr;

public final class r {
    public static boolean zzb(Context context, int i, String str) {
        return fr.zzdb(context).zzf(i, str);
    }

    public static boolean zzf(Context context, int i) {
        if (!zzb(context, i, "com.google.android.gms")) {
            return false;
        }
        try {
            return t.zzci(context).zza(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}
