package cab.snapp.c;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;

public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static String f202a = "#,###";

    /* renamed from: b  reason: collision with root package name */
    private static String f203b = "#,###.##";

    public static boolean isNotEmpty(CharSequence charSequence) {
        return charSequence != null && !isEmpty(charSequence);
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.toString().trim().length() == 0;
    }

    public static String formatDouble(Double d, Locale locale) {
        DecimalFormat decimalFormat = (DecimalFormat) NumberFormat.getNumberInstance(locale);
        decimalFormat.applyPattern(f203b);
        return decimalFormat.format(d);
    }

    public static String formatDouble(Double d) {
        return formatDouble(d, Locale.US);
    }

    public static String formatDouble(Double d, boolean z, Locale locale) {
        DecimalFormat decimalFormat = (DecimalFormat) NumberFormat.getNumberInstance(locale);
        if (z) {
            decimalFormat.applyPattern(f203b);
        } else {
            decimalFormat.applyPattern(f202a);
        }
        return decimalFormat.format(d);
    }

    public static String formatDouble(Double d, boolean z) {
        return formatDouble(d, z, Locale.US);
    }

    public static String formatLong(long j, Locale locale) {
        DecimalFormat decimalFormat = (DecimalFormat) NumberFormat.getNumberInstance(locale);
        decimalFormat.applyPattern(f202a);
        return decimalFormat.format(j);
    }

    public static String formatLong(long j) {
        return formatLong(j, Locale.US);
    }

    public static String formatInteger(Integer num, Locale locale) {
        DecimalFormat decimalFormat = (DecimalFormat) NumberFormat.getNumberInstance(locale);
        decimalFormat.applyPattern(f202a);
        return decimalFormat.format(num);
    }

    public static String formatInteger(Integer num) {
        return formatInteger(num, Locale.US);
    }

    public static String capitalize(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        char charAt = str.charAt(0);
        if (Character.isUpperCase(charAt)) {
            return str;
        }
        return Character.toUpperCase(charAt) + str.substring(1);
    }
}
