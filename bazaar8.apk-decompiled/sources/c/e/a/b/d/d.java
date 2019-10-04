package c.e.a.b.d;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import c.e.a.b.d.d.J;
import c.e.a.b.d.g.i;
import c.e.a.b.d.h.c;

public class d {

    /* renamed from: a  reason: collision with root package name */
    public static final int f9943a = e.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    /* renamed from: b  reason: collision with root package name */
    public static final d f9944b = new d();

    public static d a() {
        return f9944b;
    }

    public int b(Context context) {
        return a(context, f9943a);
    }

    public int a(Context context, int i2) {
        int isGooglePlayServicesAvailable = e.isGooglePlayServicesAvailable(context, i2);
        if (e.isPlayServicesPossiblyUpdating(context, isGooglePlayServicesAvailable)) {
            return 18;
        }
        return isGooglePlayServicesAvailable;
    }

    public boolean b(int i2) {
        return e.isUserRecoverableError(i2);
    }

    public static String b(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(f9943a);
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
                sb.append(c.a(context).b(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return sb.toString();
    }

    public Intent a(Context context, int i2, String str) {
        if (i2 == 1 || i2 == 2) {
            if (context == null || !i.c(context)) {
                return J.a("com.google.android.gms", b(context, str));
            }
            return J.a();
        } else if (i2 != 3) {
            return null;
        } else {
            return J.a("com.google.android.gms");
        }
    }

    public PendingIntent a(Context context, int i2, int i3) {
        return a(context, i2, i3, null);
    }

    public PendingIntent a(Context context, int i2, int i3, String str) {
        Intent a2 = a(context, i2, str);
        if (a2 == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i3, a2, 134217728);
    }

    public int a(Context context) {
        return e.getApkVersion(context);
    }

    public boolean a(Context context, String str) {
        return e.isUninstalledAppPossiblyUpdating(context, str);
    }

    public String a(int i2) {
        return e.getErrorString(i2);
    }
}
