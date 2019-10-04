package c.c.a.c.h;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import c.c.a.c.b.h;
import c.c.a.c.c.a;
import h.f.b.j;
import java.io.File;
import java.util.Locale;

/* compiled from: PackageManager.kt */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f4731a = new e();

    public final String a(Context context, String str, Locale locale) {
        j.b(context, "context");
        j.b(str, "packageName");
        j.b(locale, "locale");
        PackageInfo e2 = e(context, str);
        if (e2 != null) {
            return h.a(e2, context, locale);
        }
        return null;
    }

    public final File b(Context context, String str) {
        j.b(context, "context");
        j.b(str, "packageName");
        Context applicationContext = context.getApplicationContext();
        j.a((Object) applicationContext, "context.applicationContext");
        try {
            return new File(applicationContext.getPackageManager().getApplicationInfo(str, 0).publicSourceDir);
        } catch (Exception unused) {
            return null;
        }
    }

    public final Long c(Context context, String str) {
        j.b(context, "context");
        j.b(str, "packageName");
        PackageInfo e2 = e(context, str);
        if (e2 != null) {
            return Long.valueOf(h.b(e2));
        }
        return null;
    }

    public final Drawable d(Context context, String str) {
        j.b(context, "context");
        j.b(str, "packageName");
        PackageInfo e2 = e(context, str);
        if (e2 != null) {
            return h.a(e2, context);
        }
        return null;
    }

    public final PackageInfo e(Context context, String str) {
        j.b(context, "context");
        j.b(str, "packageName");
        try {
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (Exception e2) {
            a.f4699b.b(e2);
            return null;
        }
    }

    public final boolean a(Context context, String str, Long l2) {
        j.b(context, "context");
        j.b(str, "packageName");
        if (l2 == null) {
            return false;
        }
        l2.longValue();
        PackageInfo e2 = f4731a.e(context, str);
        if ((e2 != null ? h.b(e2) : Long.MAX_VALUE) < l2.longValue()) {
            return true;
        }
        return false;
    }

    public final Intent a(String str) {
        j.b(str, "packageName");
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", str, null));
        return intent;
    }

    public final String a(Context context, String str) {
        j.b(context, "context");
        j.b(str, "packageName");
        PackageInfo e2 = e(context, str);
        if (e2 != null) {
            return h.a(e2);
        }
        return null;
    }
}
