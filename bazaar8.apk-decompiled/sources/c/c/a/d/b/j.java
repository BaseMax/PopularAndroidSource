package c.c.a.d.b;

import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;

/* compiled from: PackageManagerExt.kt */
public final class j {
    public static final Drawable a(PackageManager packageManager, String str) {
        h.f.b.j.b(packageManager, "$this$getAppIcon");
        h.f.b.j.b(str, "packageName");
        try {
            return packageManager.getPackageInfo(str, 0).applicationInfo.loadIcon(packageManager);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }
}
