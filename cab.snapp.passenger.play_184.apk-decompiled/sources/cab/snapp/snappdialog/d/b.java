package cab.snapp.snappdialog.d;

import android.content.Context;
import android.os.Build;
import androidx.exifinterface.media.ExifInterface;
import java.util.Locale;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f1471a = "fa";

    public static String convertToCorrectLanguage(Context context, String str) {
        Locale locale;
        if (context == null) {
            return convertEnglishToPersian(str);
        }
        if (Build.VERSION.SDK_INT >= 24) {
            locale = context.getResources().getConfiguration().getLocales().get(0);
        } else {
            locale = context.getResources().getConfiguration().locale;
        }
        if (locale.getLanguage().equalsIgnoreCase(f1471a)) {
            return convertEnglishToPersian(str);
        }
        return convertPersianToEnglish(str);
    }

    public static String convertPersianToEnglish(String str) {
        return str != null ? str.replace("۰", "0").replace("۱", "1").replace("۲", ExifInterface.GPS_MEASUREMENT_2D).replace("۳", ExifInterface.GPS_MEASUREMENT_3D).replace("۴", "4").replace("۵", "5").replace("۶", "6").replace("۷", "7").replace("۸", "8").replace("۹", "9") : str;
    }

    public static String convertEnglishToPersian(String str) {
        return str != null ? str.replace("0", "۰").replace("1", "۱").replace(ExifInterface.GPS_MEASUREMENT_2D, "۲").replace(ExifInterface.GPS_MEASUREMENT_3D, "۳").replace("4", "۴").replace("5", "۵").replace("6", "۶").replace("7", "۷").replace("8", "۸").replace("9", "۹") : str;
    }
}
