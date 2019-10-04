package c.c.a.d.g;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import c.c.a.e.d.u.a;
import h.f.b.j;
import java.util.Locale;

/* compiled from: LocaleManager.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static a f4813a;

    /* renamed from: b  reason: collision with root package name */
    public static final b f4814b = new b();

    public final void a(Context context) {
        j.b(context, "context");
        f4813a = c.c.a.d.a.a.f4744b.a(context);
    }

    public final Context b(Context context) {
        j.b(context, "c");
        a aVar = f4813a;
        if (aVar != null) {
            return b(context, aVar.l());
        }
        j.c("appSettings");
        throw null;
    }

    public final Context a(Context context, String str) {
        j.b(context, "c");
        j.b(str, "language");
        a(str);
        return b(context, str);
    }

    public final Context b(Context context, String str) {
        Locale locale = new Locale(str);
        Locale.setDefault(locale);
        Resources resources = context.getResources();
        j.a((Object) resources, "res");
        Configuration configuration = new Configuration(resources.getConfiguration());
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 24) {
            configuration.setLocale(locale);
            LocaleList localeList = new LocaleList(new Locale[]{locale});
            LocaleList.setDefault(localeList);
            configuration.setLocales(localeList);
            Context createConfigurationContext = context.createConfigurationContext(configuration);
            j.a((Object) createConfigurationContext, "context.createConfigurationContext(config)");
            return createConfigurationContext;
        } else if (i2 >= 17) {
            configuration.setLocale(locale);
            Context createConfigurationContext2 = context.createConfigurationContext(configuration);
            j.a((Object) createConfigurationContext2, "context.createConfigurationContext(config)");
            return createConfigurationContext2;
        } else {
            configuration.locale = locale;
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
            return context;
        }
    }

    public final void a(String str) {
        a aVar = f4813a;
        if (aVar != null) {
            aVar.f(str);
        } else {
            j.c("appSettings");
            throw null;
        }
    }
}
