package b.i.i;

import android.os.Build;
import android.text.TextUtils;
import java.util.Locale;

/* compiled from: TextUtilsCompat */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final Locale f2752a = new Locale("", "");

    public static int a(Locale locale) {
        byte directionality = Character.getDirectionality(locale.getDisplayName(locale).charAt(0));
        return (directionality == 1 || directionality == 2) ? 1 : 0;
    }

    public static int b(Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
        if (locale != null && !locale.equals(f2752a)) {
            String b2 = b.b(locale);
            if (b2 == null) {
                return a(locale);
            }
            if (b2.equalsIgnoreCase("Arab") || b2.equalsIgnoreCase("Hebr")) {
                return 1;
            }
        }
        return 0;
    }
}
