package cab.snapp.c;

import android.content.Context;
import android.os.Build;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import androidx.exifinterface.media.ExifInterface;

public final class d {
    public static String convertEngToPersianNumbers(CharSequence charSequence) {
        return convertEngToPersianNumbers(charSequence.toString());
    }

    public static String convertEngToPersianNumbers(String str) {
        return str.replace("0", "۰").replace("1", "۱").replace(ExifInterface.GPS_MEASUREMENT_2D, "۲").replace(ExifInterface.GPS_MEASUREMENT_3D, "۳").replace("4", "۴").replace("5", "۵").replace("6", "۶").replace("7", "۷").replace("8", "۸").replace("9", "۹");
    }

    public static String convertPersianToEnglishNumbers(CharSequence charSequence) {
        return convertPersianToEnglishNumbers(charSequence.toString());
    }

    public static String convertPersianToEnglishNumbers(String str) {
        return str.replace("۰", "0").replace("۱", "1").replace("۲", ExifInterface.GPS_MEASUREMENT_2D).replace("۳", ExifInterface.GPS_MEASUREMENT_3D).replace("۴", "4").replace("۵", "5").replace("۶", "6").replace("۷", "7").replace("۸", "8").replace("۹", "9");
    }

    public static String getCurrentInputLanguage(Context context) {
        String str;
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager == null) {
            return "";
        }
        InputMethodSubtype currentInputMethodSubtype = inputMethodManager.getCurrentInputMethodSubtype();
        if (Build.VERSION.SDK_INT >= 24) {
            str = currentInputMethodSubtype.getLanguageTag();
        } else {
            str = currentInputMethodSubtype.getLocale();
        }
        return str;
    }
}
