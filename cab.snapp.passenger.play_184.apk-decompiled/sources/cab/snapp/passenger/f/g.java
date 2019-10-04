package cab.snapp.passenger.f;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import android.view.View;
import cab.snapp.b.a;
import cab.snapp.c.d;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.data_access_layer.network.b;
import java.util.Locale;

public final class g {
    public static final int LOCALE_ARABIC = 50;
    public static final int LOCALE_ENGLISH = 20;
    public static final int LOCALE_FRENCH = 30;
    public static final int LOCALE_PERSIAN = 10;
    public static final int LOCALE_TURKISH = 40;

    /* renamed from: a  reason: collision with root package name */
    private static a f570a;

    /* renamed from: b  reason: collision with root package name */
    private static b f571b;

    public static void setSharedPreferencesManager(a aVar) {
        f570a = aVar;
    }

    public static void setNetworkModule(b bVar) {
        f571b = bVar;
    }

    public static int getSavedLocale() {
        a aVar = f570a;
        if (aVar == null) {
            return 10;
        }
        Integer num = (Integer) aVar.get("LOCALE_HELPER_SAVED_LOCALE_SHARED_PREF_KEY");
        if (num != null) {
            return num.intValue();
        }
        return 10;
    }

    public static void setLayoutDirectionBasedOnLocale(View view) {
        int savedLocale = getSavedLocale();
        if (savedLocale != 0) {
            if (savedLocale == 10 || savedLocale == 40 || savedLocale == 50) {
                view.setLayoutDirection(1);
            } else {
                view.setLayoutDirection(0);
            }
        }
    }

    public static boolean changeAppLocale(Context context, int i) {
        String a2 = a(Integer.valueOf(i));
        if (a2.length() == 0 || a(context, a2)) {
            return false;
        }
        a aVar = f570a;
        if (aVar != null) {
            aVar.put("LOCALE_HELPER_SAVED_LOCALE_SHARED_PREF_KEY", Integer.valueOf(i));
        }
        changeAppLocaleFromSharedPrefIfNeeded(context, true);
        f571b.reset();
        return true;
    }

    public static boolean changeAppLocaleFromSharedPrefIfNeeded(Context context, boolean z) {
        String a2 = a(Integer.valueOf(getSavedLocale()));
        if (a2.length() == 0 || a(context, a2)) {
            return false;
        }
        Locale locale = new Locale(a2);
        Locale.setDefault(locale);
        Resources resources = context.getApplicationContext().getResources();
        Configuration configuration = new Configuration(resources.getConfiguration());
        configuration.setLocale(locale);
        if (Build.VERSION.SDK_INT >= 24) {
            configuration.setLocales(new LocaleList(new Locale[]{locale}));
        }
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            activity.getBaseContext().getResources().updateConfiguration(configuration, resources.getDisplayMetrics());
            if (z) {
                activity.startActivity(new Intent(activity, RootActivity.class));
                activity.finish();
            }
        } else if (context instanceof Application) {
            ((Application) context).getBaseContext().getResources().updateConfiguration(configuration, resources.getDisplayMetrics());
        }
        return true;
    }

    private static boolean a(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            return str.equals(context.getResources().getConfiguration().getLocales().get(0).getLanguage());
        }
        return str.equals(context.getResources().getConfiguration().locale.getLanguage());
    }

    private static String a(Integer num) {
        String str = "";
        if (num == null) {
            return str;
        }
        if (num.intValue() == 10) {
            str = "fa";
        } else if (num.intValue() == 20) {
            str = "en";
        } else if (num.intValue() == 30) {
            str = "fr";
        } else if (num.intValue() == 40) {
            str = "ug";
        } else if (num.intValue() == 50) {
            str = "ar";
        }
        return str;
    }

    public static String getCurrentActiveLocaleString() {
        int savedLocale = getSavedLocale();
        if (savedLocale == 20) {
            return "en-GB";
        }
        if (savedLocale == 30) {
            return "fr-FR";
        }
        if (savedLocale != 40) {
            return savedLocale != 50 ? "fa-IR" : "ar-IR";
        }
        return "tr-TR";
    }

    public static String getCurrentActiveLocaleLanguageString() {
        int savedLocale = getSavedLocale();
        if (savedLocale == 20) {
            return "en";
        }
        if (savedLocale == 30) {
            return "fr";
        }
        if (savedLocale != 40) {
            return savedLocale != 50 ? "fa" : "ar";
        }
        return "ug";
    }

    public static String getCurrentActiveLocaleCountryString() {
        int savedLocale = getSavedLocale();
        if (savedLocale == 20) {
            return "GB";
        }
        if (savedLocale != 30) {
            return savedLocale != 40 ? "IR" : "CN";
        }
        return "FR";
    }

    public static String getRealCurrentActiveLocaleString() {
        int savedLocale = getSavedLocale();
        if (savedLocale == 20) {
            return "en-GB";
        }
        if (savedLocale == 30) {
            return "fr-FR";
        }
        if (savedLocale != 40) {
            return savedLocale != 50 ? "fa-IR" : "ar-IR";
        }
        return "ug-CN";
    }

    public static boolean isCurrentLocalRtl() {
        int savedLocale = getSavedLocale();
        return savedLocale == 10 || savedLocale == 40 || savedLocale == 50;
    }

    public static String changeNumbersBasedOnCurrentLocale(String str) {
        if (isCurrentLocalRtl()) {
            return d.convertEngToPersianNumbers(str);
        }
        return d.convertPersianToEnglishNumbers(str);
    }

    public static void setLocale(Application application) {
        if (application != null) {
            String currentActiveLocaleLanguageString = getCurrentActiveLocaleLanguageString();
            String currentActiveLocaleCountryString = getCurrentActiveLocaleCountryString();
            if (application.getBaseContext().getResources().getConfiguration().locale.getLanguage().equalsIgnoreCase(currentActiveLocaleLanguageString)) {
                a(application);
                return;
            }
            Locale.setDefault(new Locale(currentActiveLocaleLanguageString, currentActiveLocaleCountryString));
            a(application);
        }
    }

    public static Context changeLocaleInContext(Context context) {
        if (Build.VERSION.SDK_INT < 24 || context == null) {
            return context;
        }
        try {
            return f.wrap(context, new Locale(getCurrentActiveLocaleLanguageString(), getCurrentActiveLocaleCountryString()));
        } catch (Exception e) {
            e.printStackTrace();
            com.a.a.a.logException(e);
            return context;
        }
    }

    public static void release() {
        f570a = null;
    }

    private static void a(Application application) {
        Resources resources = application.getBaseContext().getResources();
        Configuration configuration = new Configuration(resources.getConfiguration());
        configuration.locale = Locale.getDefault();
        if (Build.VERSION.SDK_INT >= 24) {
            configuration.setLocales(new LocaleList(new Locale[]{Locale.getDefault()}));
        }
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
    }
}
