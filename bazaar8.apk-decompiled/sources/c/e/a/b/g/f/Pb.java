package c.e.a.b.g.f;

public final class Pb {

    /* renamed from: a  reason: collision with root package name */
    public static final Nb f10193a = c();

    /* renamed from: b  reason: collision with root package name */
    public static final Nb f10194b = new Ob();

    public static Nb a() {
        return f10193a;
    }

    public static Nb b() {
        return f10194b;
    }

    public static Nb c() {
        try {
            return (Nb) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
