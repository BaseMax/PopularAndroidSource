package f.a.a.g.i;

import android.app.WallpaperManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import b.b.a.C0201l;
import com.crashlytics.android.Crashlytics;
import f.a.a.a.a.a;
import f.a.a.a.a.b;
import f.a.a.d;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.g.c;
import f.a.a.h;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* compiled from: ShortcutDialog */
public class e extends c {
    public e(g gVar) {
        super(gVar);
    }

    public C0201l a() {
        b a2 = b.a();
        a aVar = new a();
        aVar.a("system");
        aVar.d(c().h().j().d());
        aVar.b("inlineapp_action");
        aVar.a("state", "shown");
        aVar.c("shortcut_dialog");
        aVar.a(System.currentTimeMillis());
        a2.a(aVar);
        C0201l.a aVar2 = new C0201l.a(c().f(), h.DialogInline);
        View inflate = c().f().getLayoutInflater().inflate(f.inline_shortcut_dialog, null);
        try {
            ((ImageView) inflate.findViewById(f.a.a.e.phone_background)).setImageDrawable(WallpaperManager.getInstance(c().f()).getDrawable());
        } catch (SecurityException unused) {
        }
        ImageView imageView = (ImageView) inflate.findViewById(f.a.a.e.icon);
        f.a.a.f.e.a().a(c().h().c(), imageView, d.ic_inline);
        ((TextView) inflate.findViewById(f.a.a.e.name)).setText(c().h().e());
        ApplicationInfo a3 = a((Context) c().f());
        if (a3 != null && !a3.packageName.equals("com.farsitel.bazaar")) {
            ((ImageView) inflate.findViewById(f.a.a.e.other_icon)).setImageDrawable(a3.loadIcon(c().f().getPackageManager()));
            ((TextView) inflate.findViewById(f.a.a.e.other_name)).setText(a(c().f(), a3));
        }
        inflate.findViewById(f.a.a.e.add_shortcut_button).setOnClickListener(new a(this, imageView));
        inflate.findViewById(f.a.a.e.not_now_button).setOnClickListener(new b(this));
        inflate.findViewById(f.a.a.e.never_button).setOnClickListener(new c(this));
        aVar2.b(inflate);
        return aVar2.a();
    }

    public void e() {
        c().f().a(true);
    }

    public static ApplicationInfo a(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        Collections.sort(installedPackages, new d());
        if (installedPackages.size() > 0) {
            return installedPackages.get(0).applicationInfo;
        }
        return null;
    }

    public static String a(Context context, ApplicationInfo applicationInfo) {
        try {
            Configuration configuration = new Configuration();
            Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(applicationInfo);
            configuration.locale = new Locale(resourcesForApplication.getConfiguration().locale.getLanguage());
            resourcesForApplication.updateConfiguration(configuration, context.getResources().getDisplayMetrics());
            return resourcesForApplication.getString(applicationInfo.labelRes);
        } catch (Exception e2) {
            Crashlytics.logException(e2);
            return applicationInfo.loadLabel(context.getPackageManager()).toString();
        }
    }
}
