package c.c.a.c.h;

import h.k.m;

/* compiled from: Colors.kt */
public final class c {
    public static final String a(String str) {
        if (str == null || (str.length() != 6 && str.length() != 7)) {
            return null;
        }
        if (m.b(str, "#", false, 2, null)) {
            return str;
        }
        return '#' + str;
    }
}
