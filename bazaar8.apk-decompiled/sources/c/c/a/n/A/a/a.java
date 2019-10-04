package c.c.a.n.a.a;

import android.os.Bundle;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;

/* compiled from: DialogGoToBazaarSettingForPermissionArgs.kt */
public final class a implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final C0088a f6176a = new C0088a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6177b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6178c;

    /* renamed from: c.c.a.n.a.a.a$a  reason: collision with other inner class name */
    /* compiled from: DialogGoToBazaarSettingForPermissionArgs.kt */
    public static final class C0088a {
        public C0088a() {
        }

        public final a a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(a.class.getClassLoader());
            String string = bundle.containsKey("title") ? bundle.getString("title") : null;
            if (bundle.containsKey("description")) {
                String string2 = bundle.getString("description");
                if (string2 != null) {
                    return new a(string, string2);
                }
                throw new IllegalArgumentException("Argument \"description\" is marked as non-null but was passed a null value.");
            }
            throw new IllegalArgumentException("Required argument \"description\" is missing and does not have an android:defaultValue");
        }

        public /* synthetic */ C0088a(f fVar) {
            this();
        }
    }

    public a(String str, String str2) {
        j.b(str2, "description");
        this.f6177b = str;
        this.f6178c = str2;
    }

    public static final a fromBundle(Bundle bundle) {
        return f6176a.a(bundle);
    }

    public final String a() {
        return this.f6178c;
    }

    public final String b() {
        return this.f6177b;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f6178c, (java.lang.Object) r3.f6178c) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.n.a.a.a
            if (r0 == 0) goto L_0x001d
            c.c.a.n.a.a.a r3 = (c.c.a.n.a.a.a) r3
            java.lang.String r0 = r2.f6177b
            java.lang.String r1 = r3.f6177b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.f6178c
            java.lang.String r3 = r3.f6178c
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.a.a.a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f6177b;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f6178c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "DialogGoToBazaarSettingForPermissionArgs(title=" + this.f6177b + ", description=" + this.f6178c + ")";
    }
}
