package c.c.a.n.b;

import android.os.Bundle;
import b.w.C0309f;
import h.f.b.f;
import h.f.b.j;

/* compiled from: AppDetailFragmentArgs.kt */
public final class s implements C0309f {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6262a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final String f6263b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6264c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f6265d;

    /* compiled from: AppDetailFragmentArgs.kt */
    public static final class a {
        public a() {
        }

        public final s a(Bundle bundle) {
            j.b(bundle, "bundle");
            bundle.setClassLoader(s.class.getClassLoader());
            if (bundle.containsKey("packageName")) {
                String string = bundle.getString("packageName");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"packageName\" is marked as non-null but was passed a null value.");
                } else if (bundle.containsKey("referrer")) {
                    String string2 = bundle.getString("referrer");
                    if (string2 != null) {
                        return new s(string, string2, bundle.containsKey("shouldStartDownload") ? bundle.getBoolean("shouldStartDownload") : false);
                    }
                    throw new IllegalArgumentException("Argument \"referrer\" is marked as non-null but was passed a null value.");
                } else {
                    throw new IllegalArgumentException("Required argument \"referrer\" is missing and does not have an android:defaultValue");
                }
            } else {
                throw new IllegalArgumentException("Required argument \"packageName\" is missing and does not have an android:defaultValue");
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public s(String str, String str2, boolean z) {
        j.b(str, "packageName");
        j.b(str2, "referrer");
        this.f6263b = str;
        this.f6264c = str2;
        this.f6265d = z;
    }

    public static final s fromBundle(Bundle bundle) {
        return f6262a.a(bundle);
    }

    public final String a() {
        return this.f6263b;
    }

    public final String b() {
        return this.f6264c;
    }

    public final boolean c() {
        return this.f6265d;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof s) {
                s sVar = (s) obj;
                if (j.a((Object) this.f6263b, (Object) sVar.f6263b) && j.a((Object) this.f6264c, (Object) sVar.f6264c)) {
                    if (this.f6265d == sVar.f6265d) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f6263b;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f6264c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        int i3 = (hashCode + i2) * 31;
        boolean z = this.f6265d;
        if (z) {
            z = true;
        }
        return i3 + (z ? 1 : 0);
    }

    public String toString() {
        return "AppDetailFragmentArgs(packageName=" + this.f6263b + ", referrer=" + this.f6264c + ", shouldStartDownload=" + this.f6265d + ")";
    }
}
