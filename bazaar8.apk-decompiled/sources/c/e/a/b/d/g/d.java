package c.e.a.b.d.g;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import c.e.a.b.d.h.c;

public class d {
    public static int a(Context context, String str) {
        PackageInfo b2 = b(context, str);
        if (b2 != null) {
            ApplicationInfo applicationInfo = b2.applicationInfo;
            if (applicationInfo != null) {
                Bundle bundle = applicationInfo.metaData;
                if (bundle == null) {
                    return -1;
                }
                return bundle.getInt("com.google.android.gms.version", -1);
            }
        }
        return -1;
    }

    public static PackageInfo b(Context context, String str) {
        try {
            return c.a(context).b(str, 128);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static boolean c(Context context, String str) {
        "com.google.android.gms".equals(str);
        try {
            if ((c.a(context).a(str, 0).flags & 2097152) != 0) {
                return true;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }
}
