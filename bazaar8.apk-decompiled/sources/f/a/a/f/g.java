package f.a.a.f;

import android.text.TextUtils;
import java.util.Locale;

/* compiled from: LocaleUtils */
public class g {
    public static String a(String str) {
        String str2 = "";
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (charAt < 1776 || charAt > 1785) {
                str2 = str2 + charAt;
            } else {
                str2 = str2 + Character.toString((char) (charAt - 1728));
            }
        }
        return str2;
    }

    public static String b(String str) {
        String str2 = "";
        if (str != null) {
            for (int i2 = 0; i2 < str.length(); i2++) {
                char charAt = str.charAt(i2);
                if (charAt >= '0' && charAt <= '9') {
                    str2 = str2 + Character.toString((char) (charAt + 1728));
                } else if (charAt == ',') {
                    str2 = str2 + 1644;
                } else {
                    str2 = str2 + charAt;
                }
            }
        }
        return str2;
    }

    public static String c(String str) {
        return a(str, Locale.getDefault());
    }

    public static String a(String str, Locale locale) {
        return (!"fa".equals(locale.getLanguage()) || "TJ".equals(locale.getCountry())) ? str : b(str);
    }
}
