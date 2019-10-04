package c.e.a.b.g.f;

/* renamed from: c.e.a.b.g.f.bb  reason: case insensitive filesystem */
public final class C0804bb {

    /* renamed from: a  reason: collision with root package name */
    public static final Class<?> f10349a = a();

    public static Class<?> a() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static C0808cb b() {
        if (f10349a != null) {
            try {
                return a("getEmptyRegistry");
            } catch (Exception unused) {
            }
        }
        return C0808cb.f10360c;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0014  */
    /* JADX WARNING: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x000e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static c.e.a.b.g.f.C0808cb c() {
        /*
            java.lang.Class<?> r0 = f10349a
            if (r0 == 0) goto L_0x000b
            java.lang.String r0 = "loadGeneratedRegistry"
            c.e.a.b.g.f.cb r0 = a(r0)     // Catch:{ Exception -> 0x000b }
            goto L_0x000c
        L_0x000b:
            r0 = 0
        L_0x000c:
            if (r0 != 0) goto L_0x0012
            c.e.a.b.g.f.cb r0 = c.e.a.b.g.f.C0808cb.a()
        L_0x0012:
            if (r0 != 0) goto L_0x0018
            c.e.a.b.g.f.cb r0 = b()
        L_0x0018:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.C0804bb.c():c.e.a.b.g.f.cb");
    }

    public static final C0808cb a(String str) {
        return (C0808cb) f10349a.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
    }
}
