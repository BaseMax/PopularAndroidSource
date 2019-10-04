package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.concurrent.TimeUnit;

public class nt {
    public static String a(String str, String str2) {
        return TextUtils.isEmpty(str) ? str2 : str;
    }

    public static String b(String str, String str2) {
        if (str == null) {
            str = str2;
        }
        return str;
    }

    public static boolean a(Boolean bool, boolean z) {
        Boolean valueOf = Boolean.valueOf(z);
        if (bool == null) {
            bool = valueOf;
        }
        return bool.booleanValue();
    }

    public static long a(Long l, long j) {
        Long valueOf = Long.valueOf(j);
        if (l == null) {
            l = valueOf;
        }
        return l.longValue();
    }

    public static int a(Integer num, int i) {
        Integer valueOf = Integer.valueOf(i);
        if (num == null) {
            num = valueOf;
        }
        return num.intValue();
    }

    public static float a(Float f, float f2) {
        Float valueOf = Float.valueOf(f2);
        if (f == null) {
            f = valueOf;
        }
        return f.floatValue();
    }

    public static long a(Long l, TimeUnit timeUnit, long j) {
        return l == null ? j : timeUnit.toMillis(l.longValue());
    }
}
