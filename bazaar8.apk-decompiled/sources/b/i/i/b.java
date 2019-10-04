package b.i.i;

import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* compiled from: ICUCompat */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static Method f2725a;

    /* renamed from: b  reason: collision with root package name */
    public static Method f2726b;

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 21) {
            try {
                Class<?> cls = Class.forName("libcore.icu.ICU");
                if (cls != null) {
                    f2725a = cls.getMethod("getScript", new Class[]{String.class});
                    f2726b = cls.getMethod("addLikelySubtags", new Class[]{String.class});
                }
            } catch (Exception e2) {
                f2725a = null;
                f2726b = null;
                Log.w("ICUCompat", e2);
            }
        } else if (i2 < 24) {
            try {
                f2726b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", new Class[]{Locale.class});
            } catch (Exception e3) {
                throw new IllegalStateException(e3);
            }
        }
    }

    public static String a(String str) {
        try {
            if (f2725a != null) {
                return (String) f2725a.invoke(null, new Object[]{str});
            }
        } catch (IllegalAccessException e2) {
            Log.w("ICUCompat", e2);
        } catch (InvocationTargetException e3) {
            Log.w("ICUCompat", e3);
        }
        return null;
    }

    public static String b(Locale locale) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (i2 >= 21) {
            try {
                return ((Locale) f2726b.invoke(null, new Object[]{locale})).getScript();
            } catch (InvocationTargetException e2) {
                Log.w("ICUCompat", e2);
                return locale.getScript();
            } catch (IllegalAccessException e3) {
                Log.w("ICUCompat", e3);
                return locale.getScript();
            }
        } else {
            String a2 = a(locale);
            if (a2 != null) {
                return a(a2);
            }
            return null;
        }
    }

    public static String a(Locale locale) {
        String locale2 = locale.toString();
        try {
            if (f2726b != null) {
                return (String) f2726b.invoke(null, new Object[]{locale2});
            }
        } catch (IllegalAccessException e2) {
            Log.w("ICUCompat", e2);
        } catch (InvocationTargetException e3) {
            Log.w("ICUCompat", e3);
        }
        return locale2;
    }
}
