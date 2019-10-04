package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import org.a.c;

public class fj {
    static Long a(c cVar, String str) {
        long optLong = cVar.optLong(str, Long.MIN_VALUE);
        if (optLong == Long.MIN_VALUE) {
            return null;
        }
        return Long.valueOf(optLong);
    }

    static Long a(Bundle bundle, String str) {
        Long valueOf = Long.valueOf(bundle.getLong(str, Long.MIN_VALUE));
        if (valueOf.longValue() == Long.MIN_VALUE) {
            return null;
        }
        return valueOf;
    }

    static Integer b(Bundle bundle, String str) {
        Integer valueOf = Integer.valueOf(bundle.getInt(str, Integer.MIN_VALUE));
        if (valueOf.intValue() == Integer.MIN_VALUE) {
            return null;
        }
        return valueOf;
    }

    static Integer b(c cVar, String str) {
        int optInt = cVar.optInt(str, Integer.MIN_VALUE);
        if (optInt == Integer.MIN_VALUE) {
            return null;
        }
        return Integer.valueOf(optInt);
    }
}
