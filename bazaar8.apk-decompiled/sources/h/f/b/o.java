package h.f.b;

import h.b;
import h.f.a.a;
import h.f.a.c;

/* compiled from: TypeIntrinsics */
public class o {
    public static <T extends Throwable> T a(T t) {
        j.a(t, o.class.getName());
        return t;
    }

    public static boolean b(Object obj, int i2) {
        return (obj instanceof b) && a(obj) == i2;
    }

    public static void a(Object obj, String str) {
        String name = obj == null ? "null" : obj.getClass().getName();
        a(name + " cannot be cast to " + str);
        throw null;
    }

    public static void a(String str) {
        a(new ClassCastException(str));
        throw null;
    }

    public static ClassCastException a(ClassCastException classCastException) {
        a(classCastException);
        throw classCastException;
    }

    public static int a(Object obj) {
        if (obj instanceof h) {
            return ((h) obj).getArity();
        }
        if (obj instanceof a) {
            return 0;
        }
        if (obj instanceof h.f.a.b) {
            return 1;
        }
        return obj instanceof c ? 2 : -1;
    }

    public static Object a(Object obj, int i2) {
        if (obj == null || b(obj, i2)) {
            return obj;
        }
        a(obj, "kotlin.jvm.functions.Function" + i2);
        throw null;
    }
}
