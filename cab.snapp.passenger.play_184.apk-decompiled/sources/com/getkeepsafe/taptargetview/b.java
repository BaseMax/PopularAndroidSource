package com.getkeepsafe.taptargetview;

import java.lang.reflect.Field;

final class b {
    b() {
    }

    static Object a(Object obj, String str) throws NoSuchFieldException, IllegalAccessException {
        Field declaredField = obj.getClass().getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField.get(obj);
    }
}
