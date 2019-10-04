package c.c.a.n.j.a;

import android.os.Bundle;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;

/* compiled from: CastPageFragmentArgs.kt */
public final class a implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final C0095a f6438a = new C0095a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6439b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6440c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6441d;

    /* renamed from: c.c.a.n.j.a.a$a  reason: collision with other inner class name */
    /* compiled from: CastPageFragmentArgs.kt */
    public static final class C0095a {
        public C0095a() {
        }

        public final a a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(a.class.getClassLoader());
            if (bundle.containsKey("castId")) {
                String string = bundle.getString("castId");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"castId\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey("titleName")) {
                    String string2 = bundle.getString("titleName");
                    if (string2 == null) {
                        throw new IllegalArgumentException("Argument \"titleName\" is marked as non-null but was passed a null value.");
                    } else if (bundle.containsKey("referrer")) {
                        String string3 = bundle.getString("referrer");
                        if (string3 != null) {
                            return new a(string, string2, string3);
                        }
                        throw new IllegalArgumentException("Argument \"referrer\" is marked as non-null but was passed a null value.");
                    } else {
                        throw new IllegalArgumentException("Required argument \"referrer\" is missing and does not have an android:defaultValue");
                    }
                } else {
                    throw new IllegalArgumentException("Required argument \"titleName\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new IllegalArgumentException("Required argument \"castId\" is missing and does not have an android:defaultValue");
            }
        }

        public /* synthetic */ C0095a(f fVar) {
            this();
        }
    }

    public a(String str, String str2, String str3) {
        j.b(str, "castId");
        j.b(str2, "titleName");
        j.b(str3, "referrer");
        this.f6439b = str;
        this.f6440c = str2;
        this.f6441d = str3;
    }

    public static final a fromBundle(Bundle bundle) {
        return f6438a.a(bundle);
    }

    public final String a() {
        return this.f6439b;
    }

    public final String b() {
        return this.f6441d;
    }

    public final String c() {
        return this.f6440c;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f6441d, (java.lang.Object) r3.f6441d) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.n.j.a.a
            if (r0 == 0) goto L_0x0027
            c.c.a.n.j.a.a r3 = (c.c.a.n.j.a.a) r3
            java.lang.String r0 = r2.f6439b
            java.lang.String r1 = r3.f6439b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.f6440c
            java.lang.String r1 = r3.f6440c
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.f6441d
            java.lang.String r3 = r3.f6441d
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            r3 = 0
            return r3
        L_0x0029:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.j.a.a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f6439b;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f6440c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f6441d;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "CastPageFragmentArgs(castId=" + this.f6439b + ", titleName=" + this.f6440c + ", referrer=" + this.f6441d + ")";
    }
}
