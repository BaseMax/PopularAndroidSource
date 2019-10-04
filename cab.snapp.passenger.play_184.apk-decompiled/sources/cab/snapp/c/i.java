package cab.snapp.c;

import android.text.TextUtils;
import java.util.regex.Pattern;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f200a = Pattern.compile("[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f201b = Pattern.compile("^(0)[0-9]{10}");

    public static boolean isEmailValid(String str) {
        return str != null && !TextUtils.isEmpty(str) && f200a.matcher(str).matches();
    }

    public static boolean isPasswordValid(String str) {
        return str != null && !TextUtils.isEmpty(str) && str.length() >= 8;
    }

    public static boolean isPhoneNumberValid(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        String convertPersianToEnglishNumbers = d.convertPersianToEnglishNumbers(str);
        if (convertPersianToEnglishNumbers.length() >= 2 && convertPersianToEnglishNumbers.startsWith("98")) {
            convertPersianToEnglishNumbers = "0" + convertPersianToEnglishNumbers.substring(2);
        }
        if (convertPersianToEnglishNumbers.length() >= 3 && convertPersianToEnglishNumbers.startsWith("+98")) {
            convertPersianToEnglishNumbers = "0" + convertPersianToEnglishNumbers.substring(3);
        }
        if (convertPersianToEnglishNumbers.length() >= 4 && convertPersianToEnglishNumbers.startsWith("0098")) {
            convertPersianToEnglishNumbers = "0" + convertPersianToEnglishNumbers.substring(4);
        }
        return f201b.matcher(convertPersianToEnglishNumbers).matches();
    }
}
