package com.koushikdutta.async.http.b;

import androidx.appcompat.widget.ActivityChooserView;

final class a {

    /* renamed from: com.koushikdutta.async.http.b.a$a  reason: collision with other inner class name */
    public interface C0086a {
        void handle(String str, String str2);
    }

    a() {
    }

    public static void parseCacheControl(String str, C0086a aVar) {
        int i;
        String str2;
        if (str != null) {
            int i2 = 0;
            while (i2 < str.length()) {
                int a2 = a(str, i2, "=,");
                String trim = str.substring(i2, a2).trim();
                if (a2 == str.length() || str.charAt(a2) == ',') {
                    aVar.handle(trim, null);
                    i2 = a2 + 1;
                } else {
                    while (true) {
                        a2++;
                        if (a2 >= str.length()) {
                            break;
                        }
                        char charAt = str.charAt(a2);
                        if (charAt != ' ' && charAt != 9) {
                            break;
                        }
                    }
                    if (a2 >= str.length() || str.charAt(a2) != '\"') {
                        i = a(str, a2, ",");
                        str2 = str.substring(a2, i).trim();
                    } else {
                        int i3 = a2 + 1;
                        int a3 = a(str, i3, "\"");
                        str2 = str.substring(i3, a3);
                        i = a3 + 1;
                    }
                    aVar.handle(trim, str2);
                    i2 = i;
                }
            }
        }
    }

    private static int a(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    public static int parseSeconds(String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            }
            if (parseLong < 0) {
                return 0;
            }
            return (int) parseLong;
        } catch (NumberFormatException unused) {
            return -1;
        }
    }
}
