package c.e.a.b.g.f;

public final class Ga {

    /* renamed from: a  reason: collision with root package name */
    public static final Class<?> f10171a = a("libcore.io.Memory");

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f10172b = (a("org.robolectric.Robolectric") != null);

    public static boolean a() {
        return f10171a != null && !f10172b;
    }

    public static Class<?> b() {
        return f10171a;
    }

    public static <T> Class<T> a(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
