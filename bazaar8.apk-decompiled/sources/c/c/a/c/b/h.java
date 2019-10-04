package c.c.a.c.b;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import c.c.a.c.d.c;
import c.c.a.c.d.d;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import h.f.b.j;
import java.util.Locale;

/* compiled from: PackageInfoExt.kt */
public final class h {
    public static final String a(PackageInfo packageInfo) {
        j.b(packageInfo, "$this$getAppIconUriString");
        return "android.resource://" + packageInfo.packageName + '/' + packageInfo.applicationInfo.icon;
    }

    public static final long b(PackageInfo packageInfo) {
        j.b(packageInfo, "$this$versionCodeSDKAware");
        if (Build.VERSION.SDK_INT >= 28) {
            return packageInfo.getLongVersionCode();
        }
        return (long) packageInfo.versionCode;
    }

    public static final boolean c(PackageInfo packageInfo) {
        j.b(packageInfo, "$this$isUnInstallable");
        return (packageInfo.applicationInfo.flags & 1) == 0;
    }

    public static final Drawable a(PackageInfo packageInfo, Context context) {
        j.b(packageInfo, "$this$getAppIcon");
        j.b(context, "context");
        Drawable loadIcon = packageInfo.applicationInfo.loadIcon(context.getPackageManager());
        j.a((Object) loadIcon, "applicationInfo.loadIcon(context.packageManager)");
        return loadIcon;
    }

    public static final String a(PackageInfo packageInfo, Context context, Locale locale) {
        j.b(packageInfo, "$this$appName");
        j.b(context, "context");
        j.b(locale, "locale");
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(packageInfo.packageName, 128);
            Configuration configuration = new Configuration();
            configuration.setLocale(locale);
            Context createConfigurationContext = context.createPackageContext(packageInfo.packageName, 2).createConfigurationContext(configuration);
            if (applicationInfo.labelRes == 0) {
                return applicationInfo.loadLabel(context.getPackageManager()).toString();
            }
            j.a((Object) createConfigurationContext, "updatedContext");
            return createConfigurationContext.getResources().getString(applicationInfo.labelRes);
        } catch (Exception unused) {
            return packageInfo.applicationInfo.loadLabel(context.getPackageManager()).toString();
        }
    }

    public static final ListItem.App b(PackageInfo packageInfo, Context context, Locale locale) {
        PackageInfo packageInfo2 = packageInfo;
        j.b(packageInfo2, "$this$toAppListItem");
        j.b(context, "context");
        j.b(locale, "locale");
        String str = packageInfo2.packageName;
        j.a((Object) str, "packageName");
        String a2 = a(packageInfo, context, locale);
        if (a2 == null) {
            a2 = "";
        }
        PageAppItem pageAppItem = new PageAppItem(str, a2, null, null, null, 0, null, null, true, null, false, a(packageInfo), null, null, true, d.a(new c.f(), null, 1, null), null, null, null, EntityState.INSTALLED, null, 1441792, null);
        pageAppItem.setInstalledVersionCode(Long.valueOf(b(packageInfo)));
        ListItem.App app = new ListItem.App(pageAppItem, false, false, 4, null);
        return app;
    }
}
