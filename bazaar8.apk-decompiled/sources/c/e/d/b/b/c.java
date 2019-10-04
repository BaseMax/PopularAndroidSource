package c.e.d.b.b;

import com.google.gson.JsonIOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

/* compiled from: UnsafeReflectionAccessor */
public final class c extends b {

    /* renamed from: b  reason: collision with root package name */
    public static Class f11773b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f11774c = c();

    /* renamed from: d  reason: collision with root package name */
    public final Field f11775d = b();

    public static Object c() {
        try {
            f11773b = Class.forName("sun.misc.Unsafe");
            Field declaredField = f11773b.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    public void a(AccessibleObject accessibleObject) {
        if (!b(accessibleObject)) {
            try {
                accessibleObject.setAccessible(true);
            } catch (SecurityException e2) {
                throw new JsonIOException("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e2);
            }
        }
    }

    public boolean b(AccessibleObject accessibleObject) {
        if (!(this.f11774c == null || this.f11775d == null)) {
            try {
                long longValue = ((Long) f11773b.getMethod("objectFieldOffset", new Class[]{Field.class}).invoke(this.f11774c, new Object[]{this.f11775d})).longValue();
                f11773b.getMethod("putBoolean", new Class[]{Object.class, Long.TYPE, Boolean.TYPE}).invoke(this.f11774c, new Object[]{accessibleObject, Long.valueOf(longValue), true});
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static Field b() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }
}
