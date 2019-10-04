package c.c.a.n.k;

import android.os.Bundle;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;

/* compiled from: EditorChoiceFragmentArgs.kt */
public final class c implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6652a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6653b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6654c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6655d;

    /* compiled from: EditorChoiceFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final c a(Bundle bundle) {
            String str;
            j.b(bundle, "bundle");
            bundle.setClassLoader(c.class.getClassLoader());
            if (bundle.containsKey("slug")) {
                str = bundle.getString("slug");
                if (str == null) {
                    throw new IllegalArgumentException("Argument \"slug\" is marked as non-null but was passed a null value.");
                }
            } else {
                str = "home";
            }
            if (bundle.containsKey("toolbarName")) {
                String string = bundle.getString("toolbarName");
                if (string != null) {
                    return new c(str, string, bundle.containsKey("referrer") ? bundle.getString("referrer") : null);
                }
                throw new IllegalArgumentException("Argument \"toolbarName\" is marked as non-null but was passed a null value.");
            }
            throw new IllegalArgumentException("Required argument \"toolbarName\" is missing and does not have an android:defaultValue");
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public c(String str, String str2, String str3) {
        j.b(str, "slug");
        j.b(str2, "toolbarName");
        this.f6653b = str;
        this.f6654c = str2;
        this.f6655d = str3;
    }

    public static final c fromBundle(Bundle bundle) {
        return f6652a.a(bundle);
    }

    public final String a() {
        return this.f6655d;
    }

    public final String b() {
        return this.f6653b;
    }

    public final String c() {
        return this.f6654c;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f6655d, (java.lang.Object) r3.f6655d) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.n.k.c
            if (r0 == 0) goto L_0x0027
            c.c.a.n.k.c r3 = (c.c.a.n.k.c) r3
            java.lang.String r0 = r2.f6653b
            java.lang.String r1 = r3.f6653b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.f6654c
            java.lang.String r1 = r3.f6654c
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.f6655d
            java.lang.String r3 = r3.f6655d
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.k.c.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.f6653b;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f6654c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f6655d;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "EditorChoiceFragmentArgs(slug=" + this.f6653b + ", toolbarName=" + this.f6654c + ", referrer=" + this.f6655d + ")";
    }
}
