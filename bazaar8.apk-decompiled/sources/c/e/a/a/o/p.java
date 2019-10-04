package c.e.a.a.o;

import android.text.TextUtils;
import android.util.Log;

/* compiled from: Log */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public static int f9603a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f9604b = true;

    public static void a(String str, String str2) {
        if (f9603a == 0) {
            Log.d(str, str2);
        }
    }

    public static void b(String str, String str2, Throwable th) {
        if (!f9604b) {
            d(str, a(str2, th));
        } else if (f9603a <= 2) {
            Log.w(str, str2, th);
        }
    }

    public static void c(String str, String str2) {
        if (f9603a <= 1) {
            Log.i(str, str2);
        }
    }

    public static void d(String str, String str2) {
        if (f9603a <= 2) {
            Log.w(str, str2);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (!f9604b) {
            b(str, a(str2, th));
        } else if (f9603a <= 3) {
            Log.e(str, str2, th);
        }
    }

    public static void b(String str, String str2) {
        if (f9603a <= 3) {
            Log.e(str, str2);
        }
    }

    public static String a(String str, Throwable th) {
        if (th == null) {
            return str;
        }
        if (!TextUtils.isEmpty(th.getMessage())) {
            str = str + " - " + r2;
        }
        return str;
    }
}
