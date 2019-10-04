package com.google.gson.internal.a;

import com.google.gson.j;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

final class c extends b {

    /* renamed from: a  reason: collision with root package name */
    private static Class f4122a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f4123b = a();
    private final Field c = b();

    c() {
    }

    public final void makeAccessible(AccessibleObject accessibleObject) {
        if (!a(accessibleObject)) {
            try {
                accessibleObject.setAccessible(true);
            } catch (SecurityException e) {
                throw new j("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e);
            }
        }
    }

    private boolean a(AccessibleObject accessibleObject) {
        if (!(this.f4123b == null || this.c == null)) {
            try {
                long longValue = ((Long) f4122a.getMethod("objectFieldOffset", new Class[]{Field.class}).invoke(this.f4123b, new Object[]{this.c})).longValue();
                f4122a.getMethod("putBoolean", new Class[]{Object.class, Long.TYPE, Boolean.TYPE}).invoke(this.f4123b, new Object[]{accessibleObject, Long.valueOf(longValue), Boolean.TRUE});
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static Object a() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f4122a = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    private static Field b() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }
}
