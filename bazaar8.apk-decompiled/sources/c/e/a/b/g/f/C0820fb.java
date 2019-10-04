package c.e.a.b.g.f;

/* renamed from: c.e.a.b.g.f.fb  reason: case insensitive filesystem */
public final class C0820fb {

    /* renamed from: a  reason: collision with root package name */
    public static final C0812db<?> f10403a = new C0816eb();

    /* renamed from: b  reason: collision with root package name */
    public static final C0812db<?> f10404b = a();

    public static C0812db<?> a() {
        try {
            return (C0812db) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    public static C0812db<?> b() {
        return f10403a;
    }

    public static C0812db<?> c() {
        C0812db<?> dbVar = f10404b;
        if (dbVar != null) {
            return dbVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
