package c.c.a.n.l;

import android.os.Bundle;
import b.w.C0309f;
import h.f.b.j;

/* compiled from: FehrestFragmentContainerArgs.kt */
public final class f implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6667a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6668b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f6669c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6670d;

    /* renamed from: e  reason: collision with root package name */
    public final String f6671e;

    /* compiled from: FehrestFragmentContainerArgs.kt */
    public static final class a {
        public a() {
        }

        public final f a(Bundle bundle) {
            String str;
            j.b(bundle, "bundle");
            bundle.setClassLoader(f.class.getClassLoader());
            if (bundle.containsKey("slug")) {
                str = bundle.getString("slug");
                if (str == null) {
                    throw new IllegalArgumentException("Argument \"slug\" is marked as non-null but was passed a null value.");
                }
            } else {
                str = "home";
            }
            boolean z = bundle.containsKey("showBackButton") ? bundle.getBoolean("showBackButton") : true;
            if (bundle.containsKey("toolbarName")) {
                String string = bundle.getString("toolbarName");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"toolbarName\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey("referrer")) {
                    String string2 = bundle.getString("referrer");
                    if (string2 != null) {
                        return new f(str, z, string, string2);
                    }
                    throw new IllegalArgumentException("Argument \"referrer\" is marked as non-null but was passed a null value.");
                } else {
                    throw new IllegalArgumentException("Required argument \"referrer\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new IllegalArgumentException("Required argument \"toolbarName\" is missing and does not have an android:defaultValue");
            }
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }
    }

    public f(String str, boolean z, String str2, String str3) {
        j.b(str, "slug");
        j.b(str2, "toolbarName");
        j.b(str3, "referrer");
        this.f6668b = str;
        this.f6669c = z;
        this.f6670d = str2;
        this.f6671e = str3;
    }

    public static final f fromBundle(Bundle bundle) {
        return f6667a.a(bundle);
    }

    public final String a() {
        return this.f6671e;
    }

    public final boolean b() {
        return this.f6669c;
    }

    public final String c() {
        return this.f6668b;
    }

    public final String d() {
        return this.f6670d;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof f) {
                f fVar = (f) obj;
                if (j.a((Object) this.f6668b, (Object) fVar.f6668b)) {
                    if (!(this.f6669c == fVar.f6669c) || !j.a((Object) this.f6670d, (Object) fVar.f6670d) || !j.a((Object) this.f6671e, (Object) fVar.f6671e)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f6668b;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        boolean z = this.f6669c;
        if (z) {
            z = true;
        }
        int i3 = (hashCode + (z ? 1 : 0)) * 31;
        String str2 = this.f6670d;
        int hashCode2 = (i3 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f6671e;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "FehrestFragmentContainerArgs(slug=" + this.f6668b + ", showBackButton=" + this.f6669c + ", toolbarName=" + this.f6670d + ", referrer=" + this.f6671e + ")";
    }
}
