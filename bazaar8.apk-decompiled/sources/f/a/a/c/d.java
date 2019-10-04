package f.a.a.c;

import android.content.Context;
import f.a.a.g;

/* compiled from: NetworkErrors */
public class d {
    public static String a(Context context, int i2, String str) {
        switch (i2) {
            case 1:
                return context.getString(g.error_unexpected_try_again);
            case 2:
                return context.getString(g.error_please_connect_to_internet);
            case 3:
                return context.getString(g.error_try_again_later);
            case 4:
                return context.getString(g.error_unknown_try_again);
            case 5:
                return str;
            case 6:
                return context.getString(g.app_not_published);
            default:
                return "";
        }
    }

    public static String b(Context context, int i2, String str) {
        switch (i2) {
            case 1:
                return context.getString(g.error_unexpected);
            case 2:
                return context.getString(g.error_internet);
            case 3:
                return context.getString(g.error_general);
            case 4:
                return context.getString(g.error_unknown);
            case 5:
                return context.getString(g.error_general);
            case 6:
                return context.getString(g.error_general);
            default:
                return "";
        }
    }
}
