package c.e.a.b.g.f;

/* renamed from: c.e.a.b.g.f.ac  reason: case insensitive filesystem */
public final class C0801ac {

    /* renamed from: a  reason: collision with root package name */
    public static final Zb f10323a = c();

    /* renamed from: b  reason: collision with root package name */
    public static final Zb f10324b = new _b();

    public static Zb a() {
        return f10323a;
    }

    public static Zb b() {
        return f10324b;
    }

    public static Zb c() {
        try {
            return (Zb) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
